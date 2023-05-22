@echo off

setlocal EnableDelayedExpansion

set "verbose_info[0]=Setting up Internet Explorer runtime..."
set "verbose_info[1]=Loading up HTA code..."
set "verbose_info[2]=Exiting Batch loader script..."

for %%i in (0 1 2) do (
    echo !verbose_info[%%i]!
)

set "hta_file=htaweb.hta"

echo Launching HTA file...

start "" "%hta_file%"

if errorlevel 1 (
    echo Error launching HTA file.
)
