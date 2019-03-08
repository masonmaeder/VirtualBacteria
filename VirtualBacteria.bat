@echo off

rem This is Virtual Bacteria. It is a script that duplicates whatever files are in a specified location.

rem To change the location files are duplicated, change the 'dir c:\InstallLocation /s /b'. I had it set to install in a folder named "filler" on my C drive.

rem This script duplicates files exponentially. It doubles everything, so for every number increase is double the files.

rem The number you need to change to change how many times it duplicates is in the first line. "for /1 %%x in (1,1,#YouNeedToChange) do (

rem If the number is set to:

rem 1 = 2 files
rem 2 = 4 files
rem 3 = 8 files
rem 4 = 16 files
rem 5 = 32 files
rem 6 = 64 files
rem 7 = 128 files
rem 8 = 256 files
rem 9 = 512 files
rem 10 = 1024 files

rem And this chart is assuming you only have one file to begin with. If you had multiple, all of these numbers would once again, increase exponentially.

for /l %%x in (1,1,5) do (
 for /f "tokens=* delims=" %%a in ('dir c:\filler /s /b') do (
  copy %%a %%a_%%x
  )
 )