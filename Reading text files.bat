REM This should allow people to read .txt files from batch
@echo off
:Begin
cls
echo What is the directory of the file?
set /p Directory=%Input%
cd %Directory% >nul
echo What is the File's name? (No extension)
set /p Filename=%Input%
set Filename=%Filename%.txt
echo This is the path, correct?
echo %Directory%%Filename%
set /p ifstatement=%Input%
if /i "%ifstatement%"=="Yes" goto Readthefile
if /i "%ifstatement%"=="No" goto Begin

:Readthefile
TYPE %Directory%%Filename%
pause >nul
exit