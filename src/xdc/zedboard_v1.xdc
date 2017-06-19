# VGA out
# "VGA-B1"
set_property PACKAGE_PIN Y21 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
# "VGA-B2"
set_property PACKAGE_PIN Y20 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
# "VGA-B3"
set_property PACKAGE_PIN AB20 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
# "VGA-B4"
set_property PACKAGE_PIN AB19 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]
# "VGA-G1"
set_property PACKAGE_PIN AB22 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
# "VGA-G2"
set_property PACKAGE_PIN AA22 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
# "VGA-G3"
set_property PACKAGE_PIN AB21 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
# "VGA-G4"
set_property PACKAGE_PIN AA21 [get_ports {vga_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]
# "VGA-R1"
set_property PACKAGE_PIN V20 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
# "VGA-R2"
set_property PACKAGE_PIN U20 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
# "VGA-R3"
set_property PACKAGE_PIN V19 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
# "VGA-R4"
set_property PACKAGE_PIN V18 [get_ports {vga_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]
# "VGA-HS"
set_property PACKAGE_PIN AA19 [get_ports vga_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
# "VGA-VS"
set_property PACKAGE_PIN Y19 [get_ports vga_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]


set_property PACKAGE_PIN P16 [get_ports btnc]
set_property IOSTANDARD LVCMOS18 [get_ports btnc]

# JA0
set_property PACKAGE_PIN Y11 [get_ports {ov7670_pwdn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_pwdn[0]}]
set_property SLEW SLOW [get_ports {ov7670_pwdn[0]}]
# JA4
set_property PACKAGE_PIN AB11 [get_ports {ov7670_reset[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_reset[0]}]
set_property SLEW SLOW [get_ports {ov7670_reset[0]}]
# JA1
set_property PACKAGE_PIN AA11 [get_ports {ov7670_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[0]}]
set_property SLEW SLOW [get_ports {ov7670_data[0]}]
set_property PULLDOWN true [get_ports {ov7670_data[0]}]
# JA5
set_property PACKAGE_PIN AB10 [get_ports {ov7670_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[1]}]
set_property SLEW SLOW [get_ports {ov7670_data[1]}]
set_property PULLDOWN true [get_ports {ov7670_data[1]}]
# JA2
set_property PACKAGE_PIN Y10 [get_ports {ov7670_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[2]}]
set_property SLEW SLOW [get_ports {ov7670_data[2]}]
set_property PULLDOWN true [get_ports {ov7670_data[2]}]
# JA6
set_property PACKAGE_PIN AB9 [get_ports {ov7670_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[3]}]
set_property SLEW SLOW [get_ports {ov7670_data[3]}]
set_property PULLDOWN true [get_ports {ov7670_data[3]}]
# JA3
set_property PACKAGE_PIN AA9 [get_ports {ov7670_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[4]}]
set_property SLEW SLOW [get_ports {ov7670_data[4]}]
set_property PULLDOWN true [get_ports {ov7670_data[4]}]
# JA7
set_property PACKAGE_PIN AA8 [get_ports {ov7670_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[5]}]
set_property SLEW SLOW [get_ports {ov7670_data[5]}]
set_property PULLDOWN true [get_ports {ov7670_data[5]}]

# JB0
set_property PACKAGE_PIN W12 [get_ports {ov7670_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[6]}]
set_property SLEW SLOW [get_ports {ov7670_data[6]}]
set_property PULLDOWN true [get_ports {ov7670_data[6]}]
# JB4
set_property PACKAGE_PIN V12 [get_ports {ov7670_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[7]}]
set_property SLEW SLOW [get_ports {ov7670_data[7]}]
set_property PULLDOWN true [get_ports {ov7670_data[7]}]
# JB1
set_property PACKAGE_PIN W11 [get_ports ov7670_xclk]
set_property IOSTANDARD LVTTL [get_ports ov7670_xclk]
set_property SLEW SLOW [get_ports ov7670_xclk]
set_property PULLDOWN true [get_ports ov7670_xclk]
# JB5
set_property PACKAGE_PIN W10 [get_ports ov7670_pclk]
set_property IOSTANDARD LVTTL [get_ports ov7670_pclk]
set_property SLEW SLOW [get_ports ov7670_pclk]
# JB2
set_property PACKAGE_PIN V10 [get_ports ov7670_href]
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_href]
set_property SLEW SLOW [get_ports ov7670_href]
# JB6
set_property PACKAGE_PIN V9 [get_ports ov7670_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_vsync]
set_property SLEW SLOW [get_ports ov7670_vsync]
# JB3

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ov7670_pclk]

set_property PACKAGE_PIN T22 [get_ports config_finished]
set_property IOSTANDARD LVTTL [get_ports config_finished]

#iic_0_sda_io
#ov7670_siod
set_property PACKAGE_PIN W8 [get_ports ov7670_siod]
set_property IOSTANDARD LVTTL [get_ports ov7670_siod]
set_property SLEW SLOW [get_ports ov7670_siod]
set_property PULLUP true [get_ports ov7670_siod]

#iic_0_scl_io
#ov7670_sioc
set_property PACKAGE_PIN V8 [get_ports ov7670_sioc]
set_property IOSTANDARD LVTTL [get_ports ov7670_sioc]
set_property SLEW SLOW [get_ports ov7670_sioc]
