# macos-installer-formatter
This is a basic tool written in Lua that will automatically create macOS usb creation commands for you. Essentially, it's an automatic version of [this guide from Apple](https://support.apple.com/en-us/101578).

## Use
Make sure you have Lua installed. If you have [Homebrew](https://brew.sh), you can run:
```
brew install lua
```

Now you can run this tool:
```
lua ~/path/to/macos-formatter.lua
```

Enter the name of the macOS version you want to use:
```
please enter the name of your macOS installer. must be in the Applications folder (eg. Install macOS Big Sur)
> Install macOS Big Sur
Is your installer located at ~/Applications/Install\ macOS\ Big\ Sur.app? (y/n)
y
```

You enter the name of your Volume next. Make sure it is formatted and readable.
```
enter the path to your USB (eg. /Volumes/MyVolume)
/Volumes/OSXUSB
Is this correct? (y/n)
y
```

It then runs the appropiate command to install macOS onto your USB drive. Since this command uses "sudo", it may prompt for your password.
