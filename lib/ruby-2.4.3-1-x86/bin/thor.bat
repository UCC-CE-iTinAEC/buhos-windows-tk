@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"E:\buhos-win32\lib\ruby-2.4.3-1-x86\bin\ruby.exe" "E:/buhos-win32/lib/ruby-2.4.3-1-x86/bin/thor" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"E:\buhos-win32\lib\ruby-2.4.3-1-x86\bin\ruby.exe" "%~dpn0" %*