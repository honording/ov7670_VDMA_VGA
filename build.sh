#!/bin/bash
set -o nounset

if [ $# != 1 ]
then
	echo "Invalid arguments."
	echo "Try: $0 <Project Name>"
	exit
fi

# if [ -d ./$1 ]; then
# 	echo "Error: Project $1 exists."
# 	exit
# fi

# vivado -mode batch -source create_vivado_proj.tcl -tclargs $1

# xsdk -batch -source create_sdk_proj.tcl $1

curr_dir=`pwd`
project_dir="$curr_dir/$1"

# Create bootable files
mkdir "$project_dir/boot"
fsbl_path="$project_dir/$1.sdk/fsbl/Debug/fsbl.elf"
bit_path="$project_dir/$1.runs/impl_1/system_wrapper.bit"
config_path="$project_dir/$1.sdk/sysconfig/Debug/sysconfig.elf"
bif_path="$project_dir/boot/boot.bif"

echo "the_ROM_image:" 				> $bif_path
echo "{" 							>> $bif_path
echo "     [bootloader]$fsbl_path" 	>> $bif_path
echo "     $bit_path" 				>> $bif_path
echo "     $config_path" 			>> $bif_path
echo "}" 							>> $bif_path

# Create BOOT.bin
bootgen -image "$bif_path" -o i "$project_dir/boot/BOOT.bin"

echo "Generate BOOT.bin at"
echo "$project_dir/boot/BOOT.bin"