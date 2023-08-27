# SteamOnTV

Enable 3rd monitor (connected to TV) for Steam Big Picture when the Xbox wireless adapter is connected.

My setup:

- 2 monitors connected via DisplayPort (1440p 165Hz and 4k 60Hz) -- extended desktop.
- receiver/TV connected via HDMI (4k HDR 120Hz) -- this display is disabled in display settings.

The problem:

Sometimes I just want to play on my TV. Having to enable the display corresponding to the TV. It's cumbersome.

The (possible) solution:

I'm still exploring feasibility of this solution:

1. Detect if the Xbox wireless USB dongle is connected.
1. Automate the disabling other screens and enabling only the receiver/TV. For that I'll be using [MultiMonitorTool](https://www.nirsoft.net/utils/multi_monitor_tool.html) since I found in my extensive 5min research, a way to do it with PowerShell.
1. Change audio output. For that I'll be using [frgnca/AudioDeviceCmdlets](https://github.com/frgnca/AudioDeviceCmdlets)
1. Open Steam in Big Picture mode.
1. Undo the display changes when the Xbox wireless USB dongle is unplugged.
