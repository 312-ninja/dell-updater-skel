# This is a skeleton shell script for updating poweredge servers via cli using .BIN updates provided by Dell

# Example lists:

# 1st set
https://downloads.dell.com/FOLDER04825926M/1/BIOS_H5VF3_LN_2.6.1.BIN
https://downloads.dell.com/FOLDER03762350M/1/Diagnostics_Application_4DVC2_LN64_2.1_A00.BIN
https://downloads.dell.com/FOLDER03035025M/1/Diagnostics_Application_D5TM2_LN_4247A1_4247.2.BIN
https://downloads.dell.com/FOLDER00244862M/11/ESM_Firmware_KGR3M_LN32_1.03_A00-00.BIN
https://downloads.dell.com/FOLDER00232514M/9/Firmware_681JN_LN32_1.00_A00.BIN
https://downloads.dell.com/FOLDER04830660M/1/iDRAC-with-Lifecycle-Controller_Firmware_1YCHC_LN_2.52.52.52_A00.BIN
https://downloads.dell.com/FOLDER03355297M/3/Network_Firmware_35RF5_LN_7.12.19.BIN
https://downloads.dell.com/FOLDER04050283M/1/Network_Firmware_82J79_LN_08.07.26_A00-00.BIN
https://downloads.dell.com/FOLDER04299483M/1/Network_Firmware_98GPG_LN_10.00.15_A00-00.BIN
https://downloads.dell.com/FOLDER04575832M/2/Network_Firmware_GJW73_LN_20.6.52.BIN
https://downloads.dell.com/FOLDER04580844M/1/Network_Firmware_WWPJK_LN64_18.3.6_A00.BIN
https://downloads.dell.com/FOLDER03180388M/1/R720_Drivers-for-OS-Deployment_Application_TD96J_LN_15.07.07_A00.BIN
https://downloads.dell.com/FOLDER04455759M/1/SAS-RAID_Firmware_9MHJ5_LN_21.3.5-0002_A09.BIN
https://downloads.dell.com/FOLDER04455803M/1/SAS-RAID_Firmware_KKR9J_LN_21.3.5-0002_A09.BIN
https://downloads.dell.com/FOLDER04455810M/1/SAS-RAID_Firmware_MFGKT_LN_21.3.5-0002_A09.BIN
https://downloads.dell.com/FOLDER04455814M/1/SAS-RAID_Firmware_WDYTK_LN_21.3.5-0002_A09.BIN
https://downloads.dell.com/FOLDER04455816M/1/SAS-RAID_Firmware_WJF75_LN_21.3.5-0002_A09.BIN
https://downloads.dell.com/FOLDER04613395M/1/Systems-Management_Application_1457F_LN64_3.1.0_A00.BIN

# 2nd set
ExecuteDup 1 23 "BIOS_H5VF3_LN_2.6.1.BIN" "" "" "REBOOT"
ExecuteDup 2 23 "Diagnostics_Application_4DVC2_LN64_2.1_A00.BIN" "" "" ""
ExecuteDup 3 23 "Diagnostics_Application_D5TM2_LN_4247A1_4247.2.BIN" "" "" ""
ExecuteDup 4 23 "ESM_Firmware_KGR3M_LN32_1.03_A00-00.BIN" "" "" ""
ExecuteDup 5 23 "Firmware_681JN_LN32_1.00_A00.BIN" "" "" ""
ExecuteDup 6 23 "FRMW_LX_R318032.BIN" "" "" ""
ExecuteDup 7 23 "iDRAC-with-Lifecycle-Controller_Firmware_1YCHC_LN_2.52.52.52_A00.BIN" "" "" ""
ExecuteDup 8 23 "Network_Firmware_0MT4K_LN_7.10.64.BIN" "" "" "REBOOT"
ExecuteDup 9 23 "Network_Firmware_35RF5_LN_7.12.19.BIN" "" "" "REBOOT"
ExecuteDup 10 23 "Network_Firmware_82J79_LN_08.07.26_A00-00.BIN" "" "" "REBOOT"
ExecuteDup 11 23 "Network_Firmware_98GPG_LN_10.00.15_A00-00.BIN" "" "" "REBOOT"
ExecuteDup 12 23 "Network_Firmware_GJW73_LN_20.6.52.BIN" "" "" "REBOOT"
ExecuteDup 13 23 "Network_Firmware_WWPJK_LN64_18.3.6_A00.BIN" "" "" "REBOOT"
ExecuteDup 14 23 "R720_Drivers-for-OS-Deployment_Application_TD96J_LN_15.07.07_A00.BIN" "" "" ""
ExecuteDup 15 23 "SAS-RAID_Firmware_206VX_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 16 23 "SAS-RAID_Firmware_9MHJ5_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 17 23 "SAS-RAID_Firmware_KKR9J_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 18 23 "SAS-RAID_Firmware_MFGKT_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 19 23 "SAS-RAID_Firmware_WDYTK_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 20 23 "SAS-RAID_Firmware_WJF75_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 21 23 "SAS-RAID_Firmware_XY0P0_LN_21.3.5-0002_A09.BIN" "" "" "REBOOT"
ExecuteDup 22 23 "SAS-RAID_Firmware_YP0NF_LN_20.13.3-0001_A11.BIN" "" "" "REBOOT"
ExecuteDup 23 23 "Systems-Management_Application_1457F_LN64_3.1.0_A00.BIN" "" "" ""
 
