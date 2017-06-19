proc ov2vga_create_project {proj_name version {board zedboard}} {
    if {$proj_name eq ""} {
        puts "ERROR: Project name cannot be blank."
        return 0;
    }
    set curr_dir $::current_dir
    set proj_dir "$curr_dir/$proj_name"
    if {[file exists $proj_dir]} {
        puts "ERROR: $proj_dir exists. Cannot create project directory."
        return 0
    }
    create_project $proj_name $proj_dir -part xc7z020clg484-1
    set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
    set_property coreContainer.enable 1 [current_project]

	add_files -fileset constrs_1 -norecurse $curr_dir/src/xdc/zedboard_${version}.xdc
	import_files -fileset constrs_1 $curr_dir/src/xdc/zedboard_${version}.xdc

    return 1
}

proc ov2vga_update_ip_repo {repo_dir} {
    if {$repo_dir eq ""} {
        puts "ERROR: IP repository path cannot be blank."
        return 0
    }
    set repo_path ""
    # Set repository path.
    # May NOT work properly under Windows
    # FIXME
    if {[regexp / $repo_dir]} {
        set repo_path $repo_dir
    } else {
        set repo_path "$::current_dir/$repo_dir"
    }
    if {[file exists $repo_path] == 0} {
        puts "ERROR: IP repository $repo_path does not exist."
        return 0
    }
    set ip ""
    set ip [glob -nocomplain -type d "$repo_path/*"]
    if {$ip == ""} {
        puts "ERROR: There are not IPs locating at $repo_path"
        return 0
    }

    set ip [concat $ip $repo_path/ov7670_controller]
    set ip [concat $ip $repo_path/ov7670_debounce]
    set ip [concat $ip $repo_path/ov7670_decode_stream]
    set ip [concat $ip $repo_path/stream_to_vga]

	set_property  ip_repo_paths  $ip [current_project]
	update_ip_catalog

    return 1
}

set project_name ""
set version ""
if {$argc == 2} {
	set project_name [lindex $argv 0]
    set version      [lindex $argv 1]
} else {
	set project_name "ov7670_to_vga"
    set version "v2"
}

set ip_repo_path "ip_repo"
set current_dir [pwd]


if {[ov2vga_create_project $project_name $version] == 0} {
    puts "ERROR: When running ov2vga_create_project()."
    return 0
}

if {[ov2vga_update_ip_repo $ip_repo_path] == 0} {
    puts "ERROR: When running ov2vga_update_ip_repo()."
    return 0
}

# Create block design
source $current_dir/src/bd/system_${version}.tcl

set design_name [get_bd_designs]

# Creat wrapper and import it
make_wrapper -files [get_files $design_name.bd] -top -import

save_bd_design

# Generate the bitstream file
launch_runs impl_1 -to_step write_bitstream -jobs 2
wait_on_run impl_1

# export SDK
file mkdir $current_dir/$project_name/$project_name.sdk
file copy -force $current_dir/$project_name/$project_name.runs/impl_1/system_wrapper.sysdef \
                 $current_dir/$project_name/$project_name.sdk/system_wrapper.hdf