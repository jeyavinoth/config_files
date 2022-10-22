local M = {}

function M.connect()
    local toggle_airpods = [[
        use framework "IOBluetooth"
        use scripting additions

        set AirPodsName to "AirPods"

        on getFirstMatchingDevice(deviceName)
            repeat with device in (current application's IOBluetoothDevice's pairedDevices() as list)
                if (device's nameOrAddress as string) contains deviceName then return device
            end repeat
        end getFirstMatchingDevice

        on toggleDevice(device)
            if not (device's isConnected as boolean) then
                device's openConnection()
                return "Connecting " & (device's nameOrAddress as string)
            end if
        end toggleDevice

        return toggleDevice(getFirstMatchingDevice(AirPodsName))

    ]]
    return hs.osascript.applescript(toggle_airpods)
end

function M.disconnect()
    local toggle_airpods = [[
            use framework "IOBluetooth"
            use scripting additions

            set AirPodsName to "AirPods"

            on getFirstMatchingDevice(deviceName)
                repeat with device in (current application's IOBluetoothDevice's pairedDevices() as list)
                    if (device's nameOrAddress as string) contains deviceName then return device
                end repeat
            end getFirstMatchingDevice

            on toggleDevice(device)
                if (device's isConnected as boolean) then
                    device's closeConnection()
                    return "Disconnecting " & (device's nameOrAddress as string)
                end if
            end toggleDevice

            return toggleDevice(getFirstMatchingDevice(AirPodsName))

        ]]
    return hs.osascript.applescript(toggle_airpods)
end

return M
