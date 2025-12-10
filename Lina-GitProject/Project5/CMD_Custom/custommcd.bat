ost Name:                     HERLINA
OS Name:                       Microsoft Windows 11 Home
OS Version:                    10.0.26200 N/A Build 26200
OS Manufacturer:               Microsoft Corporation
OS Configuration:              Standalone Workstation
OS Build Type:                 Multiprocessor Free
Registered Owner:              herlina12086@outlook.com
Registered Organization:       N/A
Product ID:                    00326-10000-00000-AA570
Original Install Date:         12/9/2025, 11:59:23 PM
System Boot Time:              12/10/2025, 5:51:04 AM
System Manufacturer:           innotek GmbH
System Model:                  VirtualBox
System Type:                   x64-based PC
Processor(s):                  1 Processor(s) Installed.
                               [01]: Intel64 Family 6 Model 183 Stepping 1 GenuineIntel ~2611 Mhz
BIOS Version:                  innotek GmbH VirtualBox, 12/1/2006
Windows Directory:             C:\WINDOWS
System Directory:              C:\WINDOWS\system32
Boot Device:                   \Device\HarddiskVolume1
System Locale:                 en-us;English (United States)
Input Locale:                  en-us;English (United States)
Time Zone:                     (UTC-08:00) Pacific Time (US & Canada)
Total Physical Memory:         6,125 MB
Available Physical Memory:     3,368 MB
Virtual Memory: Max Size:      7,789 MB
Virtual Memory: Available:     5,093 MB
Virtual Memory: In Use:        2,696 MB
Page File Location(s):         C:\pagefile.sys
Domain:                        WORKGROUP
Logon Server:                  \\HERLINA
Hotfix(s):                     6 Hotfix(s) Installed.
                               [01]: KB5066128
                               [02]: KB5054156
                               [03]: KB5071430
                               [04]: KB5068861
                               [05]: KB5064531
                               [06]: KB5067035
Network Card(s):               1 NIC(s) Installed.
                               [01]: Intel(R) PRO/1000 MT Desktop Adapter
                                     Connection Name: Ethernet
                                     DHCP Enabled:    Yes
                                     DHCP Server:     10.0.2.2
                                     IP address(es)
                                     [01]: 10.0.2.15
                                     [02]: fe80::2f34:2012:dfff:f18d
                                     [03]: fd17:625c:f037:2:2951:f9c:441d:82b6
                                     [04]: fd17:625c:f037:2:7ce8:bb0c:7010:820f
Virtualization-based security: Status: Not enabled
                               App Control for Business policy: Enforced
                               App Control for Business user mode policy: Audit
                               Security Features Enabled:
Hyper-V Requirements:          A hypervisor has been detected. Features required for Hyper-V will not be displayed.

D:\>

















































































































@echo off
color 0A
title Tools Menu - Lina Command Center

:menu
cls
echo ================================
echo      LINA COMMAND MENU
echo ================================
echo 1. Lihat informasi sistem (systeminfo)
echo 2. Cek kesehatan disk (chkdsk C:)
echo 3. Lihat daftar proses (tasklist)
echo 4. Lihat detail proses (tasklist /v)
echo 5. Tes koneksi ke Google (ping google.com)
echo 6. Keluar
echo ================================
set /p pilihan=Masukkan pilihan Anda (1-6): 

if "%pilihan%"=="1" goto systeminfo
if "%pilihan%"=="2" goto chkdsk
if "%pilihan%"=="3" goto tasklist
if "%pilihan%"=="4" goto tasklistdetail
if "%pilihan%"=="5" goto pinggoogle
if "%pilihan%"=="6" exit
goto menu

:systeminfo
cls
echo Mengambil informasi sistem...
systeminfo | more
pause
goto menu

:chkdsk
cls
echo Menjalankan CHKDSK...
echo (Mode baca saja, tidak memperbaiki)
chkdsk C:
pause
goto menu

:tasklist
cls
echo Daftar proses berjalan:
tasklist | more
pause
goto menu

:tasklistdetail
cls
echo Daftar proses detail:
tasklist /v | more
pause
goto menu

:pinggoogle
cls
echo Tes ping google.com...
ping google.com
pause
goto menu






















































