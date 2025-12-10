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
