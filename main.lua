-- made by bw0z
-- github/bw0z | bend@cyber-wizard.com

local io = require("io")
local os = require("os")

function handleinput(q)
  print(q)
  return io.read()
end

function convertStr(str)
  return string.gsub(str, " ", "\ ")
end

function installerGet()
  local installerOG = handleinput("please enter the name of your macOS installer. must be in the Applications folder (eg. Install macOS Big Sur)")

  local installerPath = "~/Applications/" .. convertStr(str) .. ".app"
  local yn1 = handleinput("Is your installer located at " .. installerPath .. "? (y/n)")

  if yn1.lower() ~= "y" or yn1.lower() ~= "yes" then
    return installerPath
  else
    installerGet()
  end
end

function USBget()
  local USBpath = handleinput("enter the path to your USB (eg. /Volumes/MyVolume)")

  local yn1 = handleinput("Is this correct? (y/n)")

  if yn1.lower() ~= "y" or yn1.lower() ~= "yes" then
    return USBpath
  else
    USBget()
  end

  return USBpath
end

print("made by bw0z")

local installer = installerGet()
local usb = USBget()

os.execute("sudo" .. installer .. "/Contents/Resources/createinstallmedia --volume " .. usb)
