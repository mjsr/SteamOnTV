# Returns if dongle is connected, including Status=OK which might be helpful.

Get-PnpDevice -PresentOnly | Where-Object { $_.FriendlyName -match 'Xbox Wireless Adapter for Windows' } | Format-Custom -Property $_.InstanceId

# Status     Class           FriendlyName                                                                     InstanceId
# ------     -----           ------------                                                                     ----------
# OK         Net             Xbox Wireless Adapter for Windows                                                USB\VID_045E&P…

# Additional details nobody cares about.

Get-PnpDevice -PresentOnly | Where-Object { $_.FriendlyName -match 'Xbox Wireless Adapter for Windows' } | Format-Custom -Property $_.InstanceId

# class CimInstance#ROOT/cimv2/Win32_PnPEntity
# {
#   Caption = Xbox Wireless Adapter for Windows
#   Description = Xbox Wireless Adapter for Windows
#   InstallDate =
#   Name = Xbox Wireless Adapter for Windows
#   Status = OK
#   Availability =
#   ConfigManagerErrorCode = CM_PROB_NONE
#   ConfigManagerUserConfig = False
#   CreationClassName = Win32_PnPEntity
#   DeviceID = USB\VID_045E&PID_02FE\435213
#   ErrorCleared =
#   ErrorDescription =
#   LastErrorCode =
#   PNPDeviceID = USB\VID_045E&PID_02FE\435213
#   PowerManagementCapabilities =
#   PowerManagementSupported =
#   StatusInfo =
#   SystemCreationClassName = Win32_ComputerSystem
#   SystemName = PROMETHEUS
#   ClassGuid = {4d36e972-e325-11ce-bfc1-08002be10318}
#   CompatibleID =
#     [
#       USB\COMPAT_VID_045E&Class_FF&SubClass_FF&Prot_FF
#       USB\COMPAT_VID_045E&Class_FF&SubClass_FF
#       USB\COMPAT_VID_045E&Class_FF
#       USB\Class_FF&SubClass_FF&Prot_FF
#       …
#     ]

#   HardwareID =
#     [
#       USB\VID_045E&PID_02FE&REV_0100
#       USB\VID_045E&PID_02FE
#     ]

#   Manufacturer = Microsoft Corporation
#   PNPClass = Net
#   Present = True
#   Service = mt7612US
#   PSComputerName =
#   Class = Net
#   FriendlyName = Xbox Wireless Adapter for Windows
#   InstanceId = USB\VID_045E&PID_02FE\435213
#   Problem = CM_PROB_NONE
#   ProblemDescription =
# }