@echo off

@Set "SCRIPT=%TEMP%\LinkMaker-%RANDOM%-%RANDOM%.vbs"
@(  echo Set oWS = WScript.CreateObject("WScript.Shell"^)
    echo sLinkFile = "%USERPROFILE%\Desktop\Relay.lnk"
    echo Set oLink = oWS.CreateShortcut(sLinkFile^)
    echo oLink.TargetPath = "%USERPROFILE%\AppData\Roaming\Relay\Relay\Relay.exe"
    echo oLink.Arguments = """%USERPROFILE%\Desktop\Relay.lnk"""
    echo oLink.IconLocation = "%USERPROFILE%\AppData\Roaming\Relay\Relay\Relay.exe"
    echo oLink.WorkingDirectory = "%USERPROFILE%\AppData\Roaming\Relay\Relay\"
    echo oLink.Save
)>"%SCRIPT%"
@"%__AppDir__%cscript.exe" //NoLogo "%SCRIPT%"
@Del "%SCRIPT%"

