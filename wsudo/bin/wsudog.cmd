@echo off
setlocal
set wsudo_commandLine=%*
set wsudo_curDir=%CD%
powershell.exe -NonInteractive -ExecutionPolicy Bypass -NoProfile -NoLogo -File "%~dp0.\wsudoexec.ps1" -useStart -title %~n0 -action prepare
exit /b %ERRORLEVEL%
