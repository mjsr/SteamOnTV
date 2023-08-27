$MMT_PATH = "D:\Apps\multimonitortool-x64\MultiMonitorTool.exe"

$MMT_CONFIG_DESK = "D:\Apps\multimonitortool-x64\desk.cfg"
$MMT_CONFIG_COUCH = "D:\Apps\multimonitortool-x64\couch.cfg"

# Couch
Start-Process -FilePath $MMT_PATH -ArgumentList @("/LoadConfig", $MMT_CONFIG_COUCH) -Wait
# My secondary won't turn off despite the config being valid. Turning it off, works.
# Start-Process -FilePath $MMT_PATH -ArgumentList @("/TurnOff", $DESK_SEC) -Wait
# Just to make sure the TV is primary.
# Start-Process -FilePath $MMT_PATH -ArgumentList @("/SetPrimary", $COUCH) -Wait

# For testing purposes
Start-Sleep -Seconds 10 # because otherwise, despite the -Wait, the following command yields no result.

# Desk
# Turn the secondary back on (doesn't work on my desk primary).
# Start-Process -FilePath $MMT_PATH -ArgumentList @("/TurnOn", $DESK_SEC) -Wait
# Start-Process -FilePath $MMT_PATH -ArgumentList @("/TurnOn", $DESK_PRI) -Wait
Start-Process -FilePath $MMT_PATH -ArgumentList @("/LoadConfig", $MMT_CONFIG_DESK) -Wait
# Start-Process -FilePath $MMT_PATH -ArgumentList @("/SetPrimary", $DESK_PRI) -Wait
