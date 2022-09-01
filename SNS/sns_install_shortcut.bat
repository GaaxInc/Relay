::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIjJghrRQqRKGq2CooP4Ofp++mSti0=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDBaHMGqjOaYS+9fy4fmTo0ERa/E3d53P2aGaQA==
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWGqR+k45LxNADCODMW6pZg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfFivCLkV7+Dvr82Gr0gOGKJtKN2Jug==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

@Set "SCRIPT=%TEMP%\LinkMaker-%RANDOM%-%RANDOM%.vbs"
@(  echo Set oWS = WScript.CreateObject("WScript.Shell"^)
    echo sLinkFile = "%USERPROFILE%\Desktop\Square N Shoot.lnk"
    echo Set oLink = oWS.CreateShortcut(sLinkFile^)
    echo oLink.TargetPath = "%USERPROFILE%\AppData\Roaming\Relay\Games\SNS\SNS.exe"
    echo oLink.Arguments = """%USERPROFILE%\Desktop\Square N Shoot Debug Test.lnk"""
    echo oLink.IconLocation = "%USERPROFILE%\AppData\Roaming\Relay\Games\SNS\SNS.exe"
    echo oLink.WorkingDirectory = "%USERPROFILE%\AppData\Roaming\Relay\Games\SNS\SNS.exe"
    echo oLink.Save
)>"%SCRIPT%"
@"%__AppDir__%cscript.exe" //NoLogo "%SCRIPT%"
@Del "%SCRIPT%"