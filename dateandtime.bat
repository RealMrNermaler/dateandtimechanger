@echo off
setlocal

echo =============================
echo   Date, Time, and Timezone Setter
echo =============================
echo.

REM Function to set the date
:SET_DATE
echo Current Date: %date%
set /p new_date=Enter new date (MM-DD-YYYY): 
echo.
echo Setting new date...
date %new_date%
echo Date set to: %new_date%
echo.

REM Function to set the time
:SET_TIME
echo Current Time: %time%
set /p new_time=Enter new time (HH:MM:SS): 
echo.
echo Setting new time...
time %new_time%
echo Time set to: %new_time%
echo.

REM Function to set the timezone
:SET_TIMEZONE
echo Current Timezone:
tzutil /g
echo.
echo List of available timezones:
tzutil /l
echo.
set /p new_timezone=Enter new timezone (example: "Pacific Standard Time"): 
echo.
echo Setting new timezone...
tzutil /s "%new_timezone%"
echo Timezone set to: %new_timezone%
echo.

echo =============================
echo       Settings Applied
echo =============================
echo.
pause
endlocal
exit /b
