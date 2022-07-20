# Scoop Emulators Bucket

[![Tests](https://github.com/detain/scoop-emulators/actions/workflows/ci.yml/badge.svg)](https://github.com/detain/scoop-emulators/actions/workflows/ci.yml) [![Excavator](https://github.com/detain/scoop-emulators/actions/workflows/excavator.yml/badge.svg)](https://github.com/detain/scoop-emulators/actions/workflows/excavator.yml) [![AppVeyor Build Status](https://img.shields.io/appveyor/ci/detain/scoop-emulators/master.svg?style=flat-square&label=AppVeyor&logo=appveyor)](https://ci.appveyor.com/project/detain/scoop-emulators/branch/master) [![Repo size](https://img.shields.io/github/repo-size/detain/scoop-emulators.svg?style=flat-square)](https://github.com/detain/scoop-emulators)

A 🥄[Scoop](https://scoop.sh) 🪣bucket for 🎮console and 🕹arcade emulators.

### How do I install these manifests?

To add this bucket, run `scoop bucket add <bucketname> https://github.com/detain/scoop-emulators`. To install, do `scoop install <manifest>`.

### Other Buckets I Incorporated

❤ Thank you guys for all your hard work and getting us this far (read: i got it from here)

- [borger/scoop-emulators](https://github.com/borger/scoop-emulators)
- [dschaefer/scoop-tools816](https://github.com/dschaefer/scoop-tools816)
- [hermanjustnu/scoop-emulators](https://github.com/hermanjustnu/scoop-emulators)
- [littleli/Scoop-AtariEmulators](https://github.com/littleli/Scoop-AtariEmulators)
- [ProfElements/EmulatorBucket](https://github.com/ProfElements/EmulatorBucket)

## Development Notes

### How do I contribute new manifests?

To make a new manifest contribution, please read the [Contributing Guide](./CONTRIBUTING.md).

### Issues

_Note_ I setup the [bin/checkhealth.sh][./bin/checkhealth.sh] script to run the checkvers.ps1, checkurls.ps1, and missing-checkurls.ps1 scripts hiding the results without problems

##### Download URL Problems

```
[U]RLs
 | [O]kay
 |  | [F]ailed
 |  |  |
[1][0][1] cc65
       > The remote server returned an error: (502) Bad Gateway. (https://dl.bintray.com/cdtdoug/tools/cc65-2.18.7z)
[1][0][1] reicast
       > The remote server returned an error: (404) Not Found. (http://reicast-builds-windows.s3.amazonaws.com/builds/heads/stable-333b7c536071ea77b0ecc46e534cb28206e471b4/reicast-win_x64-RelWithDebInfo-333b7c536071ea77b0ecc46e534cb28206e471b4.zip)
[1][0][1] vice
       > The remote server returned an error: (404) Not Found. (https://downloads.sourceforge.net/projects/vice-emu/experimental%20binaries/GTK3VICE-3.3-win32.7z)
[1][0][1] visualboyadvance
       > The operation has timed out (https://downloads.sourceforge.net/project/vba/VisualBoyAdvance/1.7.2/VisualBoyAdvance-1.7.2.zip)
```

##### Version and Auto Update Problems

- _fceux-dev_: couldn't match '(?<job32>[\w]{16}) (?<job64>[\w]{16}) (?<build>[\d]+) (?<commit>[a-f0-9]{8})' in <https://ci.appveyor.com/api/projects/zeromus/fceux>

#### Missing Version Checking or Auto-Updating Code

```
[C]heckver
 | [A]utoupdate
 |  |
[ ][ ] cc65
[ ][ ] epsxe
[ ][ ] fbneo-nightly
[ ][ ] model-b
[ ][ ] nester
[ ][ ] nestopia
[ ][ ] play
[ ][ ] reicast
[ ][A] retroarch-nightly
[ ][A] visualboyadvance-m-nightly
[ ][ ] xformer
[ ][ ] yabause
[ ][ ] z26
```

#### Scoop and Bucket Links

- [Scoop Wiki - Persistent data](https://github.com/ScoopInstaller/Scoop/wiki/Persistent-data)
- [nightly.link](https://nightly.link/)

#### Emulators To Add

- [punesemu/puNES: Qt-based Nintendo Entertaiment System emulator and NSF/NSFe Music Player (Linux, FreeBSD, OpenBSD and Windows)](https://github.com/punesemu/puNES)
- [openMSX/openMSX: the MSX emulator that aims for perfection](https://github.com/openMSX/openMSX)
- [Zibri/VICE: The fresher build on the net :D](https://github.com/Zibri/VICE/)
- [captainys/TOWNSEMU: FM Towns Emulator "Tsugaru"](https://github.com/captainys/TOWNSEMU)
- [Hydr8gon/NooDS: A (hopefully!) speedy NDS emulator](https://github.com/Hydr8gon/NooDS)
- [drhelius/Gearboy: Game Boy / Gameboy Color emulator for iOS, macOS, Raspberry Pi, Windows, Linux, BSD and RetroArch.](https://github.com/drhelius/Gearboy)
- [drhelius/Gearsystem: Sega Master System / Game Gear / SG-1000 emulator for iOS, macOS, Raspberry Pi, Windows, Linux, BSD and RetroArch.](<https://github.com/>- drhelius/Gearsystem)
- [jpcsp/jpcsp: Jpcsp - PSP Emulator written in Java](https://github.com/jpcsp/jpcsp)
- [leniad/dsp-emulator: Dsp emulator](https://github.com/leniad/dsp-emulator)
- [tonioni/WinUAE: WinUAE Amiga emulator](https://github.com/tonioni/WinUAE)
- [Robbbert/store1: ARCADE64 - MAME with working arcade games only](https://github.com/Robbbert/store1)
- [Raine : Latest version](http://raine.1emulation.com/download/latest.html)
- [SDLMAME for Ubuntu](https://sdlmame.wallyweek.org/download/)
- [Robbbert/mameui: MAMEUI - MAME with a windows frontend](https://github.com/Robbbert/mameui)
- [Mataniko/IV-Play: IV/Play - A small and powerful MAME front-end.](https://github.com/Mataniko/IV-Play)
- [quietust/nintendulator: NES emulator for Windows](https://github.com/quietust/nintendulator)
- [Releases · 7800-devtools/a7800](https://github.com/7800-devtools/a7800/releases)
- [EightyOne Sinclair Emulator - Browse Files at SourceForge.net](https://sourceforge.net/projects/eightyone-sinclair-emulator/files/)
