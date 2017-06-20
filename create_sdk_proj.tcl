proc ov7670_create_hw {proj_name {wrapper_name system_wrapper} {hw_mame system_wrapper_hw_platform_0}} {
    set cur_dir $::current_dir
    puts "Creating system_wrapper_hw_platform_0"
    set wrapper_path "$cur_dir/${proj_name}/${proj_name}.sdk/${wrapper_name}.hdf"
    sdk create_hw_project -name $hw_mame -hwspec $wrapper_path
    return 1
}


proc ov7670_create_arm_app {proj_name version {hw_mame system_wrapper_hw_platform_0}} {
    set cur_dir $::current_dir
    set sdk_dir "$cur_dir/$proj_name/${proj_name}.sdk"

    # Create sysconfig project
    sdk create_bsp_project -name sysconfig_bsp -hwproject $hw_mame -proc ps7_cortexa9_0 -os standalone
    sdk create_app_project -name sysconfig -hwproject $hw_mame -proc ps7_cortexa9_0 -os standalone -lang C -app {Empty Application} -bsp sysconfig_bsp
    sdk import_sources -name sysconfig -path "$cur_dir/src/sdk/$version"

    # Create FSBL project
    sdk create_app_project -name fsbl -hwproject $hw_mame -proc ps7_cortexa9_0 -os standalone -lang C -app {Zynq FSBL} -bsp fsbl_bsp

    # Build projects
    sdk build_project -type all
    return 1
}

set current_dir [pwd]
set project_name ""
set version ""

if {$argc == 2} {
    set project_name [lindex $argv 0]
    set version [lindex $argv 1]
} else {
    set project_name "ov7670_to_vga"
    set version "v3"
}

set workspace_name "$current_dir/${project_name}/${project_name}.sdk"
sdk set_workspace $workspace_name

if {[ov7670_create_hw $project_name] == 0} {
    puts "ERROR: When running ov7670_create_hw()."
    return 0
}

if {[ov7670_create_arm_app $project_name $version] == 0} {
    puts "ERROR: When running ov7670_create_arm_app()."
    return 0
}