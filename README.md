# Scoop Emulators Bucket

[![Tests](https://github.com/detain/scoop-emulators/actions/workflows/ci.yml/badge.svg)](https://github.com/detain/scoop-emulators/actions/workflows/ci.yml) [![Excavator](https://github.com/detain/scoop-emulators/actions/workflows/excavator.yml/badge.svg)](https://github.com/detain/scoop-emulators/actions/workflows/excavator.yml)

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

- *fceux-dev*: couldn't match '(?<job32>[\w]{16}) (?<job64>[\w]{16}) (?<build>[\d]+) (?<commit>[a-f0-9]{8})' in https://ci.appveyor.com/api/projects/zeromus/fceux

#### Missing Version Checking or Auto-Updating Code

```
[C]heckver
 | [A]utoupdate
 |  |
[ ][ ] 64tass
[ ][ ] acme
[ ][ ] bizhawk
[ ][ ] cc65
[ ][ ] epsxe
[ ][ ] gbeplus
[ ][ ] higan
[ ][ ] kegafusion
[ ][ ] model-b
[ ][ ] mupen64plus
[ ][ ] nestopia
[ ][ ] play
[ ][ ] reicast
[ ][A] retroarch-nightly
[ ][ ] vice
[ ][A] visualboyadvance-m-nightly
[ ][ ] xformer
[ ][ ] yabause
[ ][ ] z26
```

#### Scoop and Bucket Links

- [Scoop Wiki - Persistent data](https://github.com/ScoopInstaller/Scoop/wiki/Persistent-data)
- [nightly.link](https://nightly.link/)

#### Emulators To Add

- [stella-emu/stella](https://github.com/stella-emu/stella)
- [grumpycoders/pcsx-redux](https://github.com/grumpycoders/pcsx-redux)
- [punesemu/puNES](https://github.com/punesemu/puNES)
- [openMSX/openMSX](https://github.com/openMSX/openMSX)
- [Zibri/VICE](https://github.com/Zibri/VICE/)
- [captainys/TOWNSEMU](https://github.com/captainys/TOWNSEMU)
- [Hydr8gon/NooDS](https://github.com/Hydr8gon/NooDS)
- [drhelius/Gearboy](https://github.com/drhelius/Gearboy)
- [drhelius/Gearsystem](https://github.com/drhelius/Gearsystem)
- [jpcsp/jpcsp](https://github.com/jpcsp/jpcsp)
- [leniad/dsp-emulator](https://github.com/leniad/dsp-emulator)
- [WinKawaks v1.65](https://www.emucr.com/2016/05/winkawaks-v165.html)
- [WinUAE v4.9.1](https://www.emucr.com/2022/02/winuae-v491.html)
- [WinArcadia & AmiArcadia v28.92](https://www.emucr.com/2022/07/winarcadia-amiarcadia-v2892.html)
- [Z64K (2022/07/03)](https://www.emucr.com/2022/07/z64k-20220703.html)
- [Caname v0.67.245](https://www.emucr.com/2022/07/caname-v067245.html)
- [ARCADE v0.245](https://www.emucr.com/2022/07/arcade-v0245.html)
- [Raine v0.93.5d](https://www.emucr.com/2022/07/raine-v0935d.html)
- [SDLMAME v0.245](https://www.emucr.com/2022/07/sdlmame-v0245.html)
- [Supermodel SVN r888](https://www.emucr.com/2022/06/supermodel-svn-r888.html)
- [MESSUI v0.245](https://www.emucr.com/2022/06/messui-v0245.html)
- [MameUI64 v0.245](https://www.emucr.com/2022/06/mameui64-v0245.html)
- [Nintendulator 0.985 beta (2022/06/28)](https://www.emucr.com/2022/06/nintendulator-0985-beta-20220628.html)
- [Steem SSE v4.1.2 R2](https://www.emucr.com/2022/06/steem-sse-v412-r2.html)
- [SpecEmu v3.2 build 2022.06.25](https://www.emucr.com/2022/06/specemu-v32-build-20220625.html)
- [A7800 v5.2](https://www.emucr.com/2022/06/a7800-v52.html)
- [DCMOTO v2022.06.15](https://www.emucr.com/2022/06/dcmoto-v20220615.html)
- [EightyOne v1.29](https://www.emucr.com/2022/06/eightyone-v129.html)
