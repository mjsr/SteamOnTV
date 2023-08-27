# Kills the Steam that's running and runs another in big picture just to make sure

$STEAM_PATH = "C:\Program Files (x86)\Steam\steam.exe"
$steam = Get-Process -Name "Steam"

if ($steam) {
    Start-Process $steam.Path -ArgumentList '-Shutdown' -Wait
}
Start-Sleep -Seconds 2 # because otherwise, despite the -Wait, the following command yields no result.
Start-Process -FilePath "C:\Program Files (x86)\Steam\steam.exe" -ArgumentList '-bigpicture'