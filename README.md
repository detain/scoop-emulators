# Scoop Emulators Bucket

A 🥄[Scoop](https://scoop.sh) 🪣bucket for 🎮console and 🕹arcade emulators.

[![Tests](https://github.com/detain/scoop-emulators/actions/workflows/ci.yml/badge.svg)](https://github.com/detain/scoop-emulators/actions/workflows/ci.yml)
[![Excavator](https://github.com/detain/scoop-emulators/actions/workflows/excavator.yml/badge.svg)](https://github.com/detain/scoop-emulators/actions/workflows/excavator.yml)
[![AppVeyor Build Status](https://img.shields.io/appveyor/ci/detain/scoop-emulators/master.svg?style=flat-square&label=AppVeyor&logo=appveyor)](https://ci.appveyor.com/project/detain/scoop-emulators/branch/master)
[![Repo size](https://img.shields.io/github/repo-size/detain/scoop-emulators.svg?style=flat-square)](https://github.com/detain/scoop-emulators)

## How do I use this?

```cmd
scoop bucket add emulators https://github.com/detain/scoop-emulators
scoop list
scoop install <emulator>
scoop update
scoop update *
scoop uninstall <emulator>
```

## Emulator List

(removed for now)

* [🏠](http://www.zsnes.com/) [📥](https://consolo.is.cc/emu/zsnes/1.51.7z) [zsnes](./bucket/zsnes.json) zsnes is a SNES emulator that suffers from low accuracy when compared to higan and snes9x. Most of znes’s development focused on achieving portability and performance, with the bulk of the emulator being written in x86 assembly.

## Development Notes

* I setup the [bin/checkhealth.sh](./bin/checkhealth.sh) script to run the checkvers.ps1, checkurls.ps1, and missing-checkurls.ps1 scripts hiding the results without problems

### Other Buckets I Incorporated

❤ Thank you guys for all your hard work and getting us this far (read: i got it from here)

* [borger/scoop-emulators](https://github.com/borger/scoop-emulators)
* [dschaefer/scoop-tools816](https://github.com/dschaefer/scoop-tools816)
* [hermanjustnu/scoop-emulators](https://github.com/hermanjustnu/scoop-emulators)
* [littleli/Scoop-AtariEmulators](https://github.com/littleli/Scoop-AtariEmulators)
* [ProfElements/EmulatorBucket](https://github.com/ProfElements/EmulatorBucket)

### Issues and To-Do

* Improve [checkver, autoupdate](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate), and [persist](https://github.com/ScoopInstaller/Scoop/wiki/Persistent-data) usage
* Cache files in another repo to circumvent expiring download links

### emulators im in the middle of adding into here or setting up with checkver/autoupdate

#### frontends

* [ES-DE v1.2.6](https://www.emucr.com/2022/08/es-de-v126.html)
* [LaunchBox v12.15](https://www.emucr.com/2022/09/launchbox-v1215.html)
* [MS-DOS Player for Win32-x64 (2022/09/20)](https://www.emucr.com/2022/09/ms-dos-player-for-win32-x64-20220920.html)
* [QEMU v7.1](https://www.emucr.com/2022/08/qemu-v71.html)
* [vDos (2022/05/01)](https://www.emucr.com/2022/10/vdos-20220501.html)
* [VirtualBox v7.0](https://www.emucr.com/2022/10/virtualbox-v70.html)
* [Wine v7.19](https://www.emucr.com/2022/10/wine-v719.html)
* [XEMU v0.7.71](https://www.emucr.com/2022/10/xemu-v0771.html)
* [DOSBox-Staging Git (2022/10/27)](https://www.emucr.com/2022/10/dosbox-staging-git-20221027.html)
* [DOSBox-X v2022.09.0](https://www.emucr.com/2022/09/dosbox-x-v2022090.html)
* [DSP Emulator v0.21WIP4 (2022/10/25)](https://www.emucr.com/2022/10/dsp-emulator-v021wip4-20221025.html)
* [DuckStation Git (2022/10/23)](https://www.emucr.com/2022/10/duckstation-git-20221023.html)
* [Emulicious (2022/09/30)](https://www.emucr.com/2022/10/emulicious-20220930.html)
* [GameEx v18.29](https://www.emucr.com/2022/10/gameex-v1829.html)
* [Joyce v2.5](https://www.emucr.com/2022/08/joyce-v25.html)
* [Playnite v10.3](https://www.emucr.com/2022/09/playnite-v103.html)
* [RomVault v3.5.1](https://www.emucr.com/2022/10/romvault-v351.html)*
* [86Box v3.7.1](https://www.emucr.com/2022/08/86box-v371.html)
* [Ares Git (2022/10/10)](https://www.emucr.com/2022/10/ares-git-20221010.html)
* [Common Source Code Project (2022/10/14)](https://www.emucr.com/2022/10/common-source-code-project-20221014.html)
* [Ludo v0.16.19](https://www.emucr.com/2022/09/ludo-v01619.html)
* [Mednafen v1.31.0-UNSTABLE](https://www.emucr.com/2022/08/mednafen-v1310-unstable.html)
* [PinballX v5.54](https://www.emucr.com/2022/09/pinballx-v554.html)
