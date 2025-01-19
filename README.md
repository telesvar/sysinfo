# sysinfo

Display essential system information in a human readable form on OpenBSD.

![Screenshot](assets/screen.png)

## Features

- Displays system information in a clean, organized format
- Shows ASCII art of Puffy, the OpenBSD mascot
- Color-coded output for better readability
- Hardware detection including virtualization environment
- Memory and disk usage with human-readable format
- Window manager detection

## Installation

```sh
# Clone the repository
git clone https://github.com/telesvar/sysinfo.git
# or with got
got clone https://github.com/telesvar/sysinfo.git
got checkout sysinfo.git/ sysinfo/

cd sysinfo

# Install
doas make install

# Uninstall
doas make uninstall
```

## Usage

Simply run:

```sh
sysinfo
```

## License

MIT License. See [LICENSE](LICENSE) file for details.

## Credits

- Original work by [Szenesis](https://github.com/Szenesis/sysinfo)
- Modified by Dair Aidarkhanov
