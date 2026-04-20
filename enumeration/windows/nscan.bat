@echo off
set n=%1
if "%n%"=="" set n=192.168.1
>nscan.txt (
for /L %%i in (1,1,254) do @ping -n 1 -w 100 %n%.%%i|find "TTL=">nul&&echo %n%.%%i
)
type nscan.txt