@echo off

REM This should allow people to read .txt files from batch
REM Note: Comments are screwing with it in general, so they must be removed from the actual file.
:Begin

cls REM This is to clear out the screen when the main program starts

@echo off


echo What is the directory of the file?

set /p Directory=%Input%

cd %Directory% >nul
echo What is the File's name? (No extension)

set /p Filename=%Input%
set Filename=%Filename%.txt

:IfStatement
echo This is the path, correct?

echo %Directory%%Filename%
set /p ifstatement=%Input%

if /i "%ifstatement%"=="Yes" goto Readthefile

if /i "%ifstatement%"=="No" goto Begin

if /i not "%ifstatement%"=="No" goto ErrInResponse

:ErrInResponse
cls REM This is to perform a loop if someone screws up the answer, and to not cause it to fail.
echo That response is not valid
echo The valid responses are "Yes" and "No". Try again.
goto IfStatement

:Readthefile

cls
TYPE %Directory%%Filename%
pause >nul

exit
