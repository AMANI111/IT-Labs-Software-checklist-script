:: Main Programme
@echo off
title Software Check for GBS IT Labs
echo ___________________________________________

echo Software installation check for GBS IT Labs

echo ___________________________________________
echo.

call :check_Software "Revit 2026" "C:\Program Files\Autodesk\Revit 2026\Revit.exe"
call :check_Software "Ardunio IDE" "C:\Program Files (x86)\Arduino\arduino.exe"
call :check_Software "Cisco Packet Tracer" "C:\Program Files (x86)\Cisco Packet Tracer 8.2\bin\PacketTracer.exe"
call :check_Software "GitHub Desktop" "C:\Users\%USERNAME%\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
call :check_Software "IntelliJ IDEA" "C:\Program Files\JetBrains\IntelliJ IDEA 2023.2.1\bin\idea64.exe"
call :check_Software "MongoDB" "C:\Program Files\MongoDB\Server\6.0\bin\mongod.exe"
call :check_Software "Microsoft Project" "C:\Program Files\Microsoft Office\root\Office16\WINPROJ.EXE"
call :check_Software "MySQL Workbench" "C:\Program Files\MySQL\MySQL Workbench 8.0\MySQLWorkbench.exe"
call :check_Software "Notepad++" "C:\Program Files\Notepad++\notepad++.exe"
call :check_Software "NVivo" "C:\Program Files\QSR International\NVivo 14\NVivo.exe"
call :check_Software "Microsoft Office" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
call :check_Software "PP16002-324" "C:\Program Files\PP16002-324\PP16002-324.exe"
call :check_Software "Primavera P6" "C:\Program Files (x86)\Oracle\Primavera P6\P6.exe"
call :check_Software "PuTTY" "C:\Program Files\PuTTY\putty.exe"
call :check_Software "PyCharm Community" "C:\Program Files\JetBrains\PyCharm Community Edition 2023.2.1\bin\pycharm64.exe"
call :check_Software "Python" "C:\Program Files\Python311\python.exe"
call :check_Software "Safe Exam Browser" "C:\Program Files\Safe Exam Browser\SEB.exe"
call :check_Software "StarUML" "C:\Program Files\StarUML\StarUML.exe"
call :check_Software "Tableau Desktop" "C:\Program Files\Tableau\Tableau 2023.1\bin\tableau.exe"
call :check_Software "VirtualBox" "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
call :check_Software "Visual Studio Code" "C:\Program Files\Microsoft VS Code\Code.exe"
call :check_Software "XAMPP" "C:\xampp\xampp-control.exe"
call :check_Software "Zotero" "C:\Program Files (x86)\Zotero\zotero.exe"
echo.
echo ___________________________________________
echo Software checklist completed.
echo ___________________________________________
pause
exit /b


REM Function Definitions inside mainscript to check if software is installed or not. It uses the Windows registry to check for the presence of the software by searching for its name in the Uninstall key.
:check_Software
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s /f %1 >nul 2>&1

:: /s searches all subkeys, /f specifies the search string (software name), and >nul 2>&1 redirects output to null to hide all errors and output so the user only sees the result of the check.

if %errorlevel% equ 0 (
    echo %~1 [Installed]
) else (
    echo %~1 [MISSING*]
)

:: 0 indicates that the software was found, while a non-zero value indicates that it was not found. The script uses this to determine whether to print that the software is installed or not. the ~ removes quotation marks from the software name, which is necessary for the echo command to work correctly.

exit /b
