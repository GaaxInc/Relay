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