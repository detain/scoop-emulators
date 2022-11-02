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

#### mame

* [FEEL FrontEnd v1.9.8.6](https://www.emucr.com/2020/06/feel-frontend-v1986.html) --- [FEEL FrontEnd Home | FEEL FrontEnd](https://feelfrontend.altervista.org/)

#### frontends

* [FB Alpha Shuffle v2.4.0 (2022/09/29)](https://www.emucr.com/2022/09/fb-alpha-shuffle-v240-20220929.html)
* [ES-DE v1.2.6](https://www.emucr.com/2022/08/es-de-v126.html)
* [LaunchBox v12.15](https://www.emucr.com/2022/09/launchbox-v1215.html)
* [MS-DOS Player for Win32-x64 (2022/09/20)](https://www.emucr.com/2022/09/ms-dos-player-for-win32-x64-20220920.html)
* [QEMU v7.1](https://www.emucr.com/2022/08/qemu-v71.html)
* [ScummVM v2.6.0](https://www.emucr.com/2022/08/scummvm-v260.html)
* [vDos (2022/05/01)](https://www.emucr.com/2022/10/vdos-20220501.html)
* [VirtualBox v7.0](https://www.emucr.com/2022/10/virtualbox-v70.html)
* [Wine v7.19](https://www.emucr.com/2022/10/wine-v719.html)
* [XEMU v0.7.71](https://www.emucr.com/2022/10/xemu-v0771.html)
* [AQZ Netplay Input Plugin Git (2022/09/04)](https://www.emucr.com/2022/09/aqz-netplay-input-plugin-git-20220904.html)
* [CEMU Graphic Packs v883](https://www.emucr.com/2022/08/cemu-graphic-packs-v883.html)
* [DOSBox-Staging Git (2022/10/27)](https://www.emucr.com/2022/10/dosbox-staging-git-20221027.html)
* [DOSBox-X v2022.09.0](https://www.emucr.com/2022/09/dosbox-x-v2022090.html)
* [DSP Emulator v0.21WIP4 (2022/10/25)](https://www.emucr.com/2022/10/dsp-emulator-v021wip4-20221025.html)
* [DuckStation Git (2022/10/23)](https://www.emucr.com/2022/10/duckstation-git-20221023.html)
* [Emulicious (2022/09/30)](https://www.emucr.com/2022/10/emulicious-20220930.html)
* [GameEx v18.29](https://www.emucr.com/2022/10/gameex-v1829.html)
* [Joyce v2.5](https://www.emucr.com/2022/08/joyce-v25.html)
* [Playnite v10.3](https://www.emucr.com/2022/09/playnite-v103.html)
* [Raine v0.94.7](https://www.emucr.com/2022/10/raine-v0947.html)
* [Rebuilder v0.03](https://www.emucr.com/2022/10/rebuilder-v003.html)
* [ROMSorter R6](https://www.emucr.com/2022/10/romsorter-r6.html)
* [RomVault v3.5.1](https://www.emucr.com/2022/10/romvault-v351.html)*
* [86Box v3.7.1](https://www.emucr.com/2022/08/86box-v371.html)
* [Ares Git (2022/10/10)](https://www.emucr.com/2022/10/ares-git-20221010.html)
* [Common Source Code Project (2022/10/14)](https://www.emucr.com/2022/10/common-source-code-project-20221014.html)
* [Ludo v0.16.19](https://www.emucr.com/2022/09/ludo-v01619.html)
* [WinArcadia & AmiArcadia v29.12](https://www.emucr.com/2022/10/winarcadia-amiarcadia-v2912.html)
* [MedGui Reborn v0.120](https://www.emucr.com/2022/08/medgui-reborn-v0120.html)
* [Mednafen v1.31.0-UNSTABLE](https://www.emucr.com/2022/08/mednafen-v1310-unstable.html)
* [PinballX v5.54](https://www.emucr.com/2022/09/pinballx-v554.html)

#### controller

* [DS4Windows v3.1.2](https://www.emucr.com/2022/08/ds4windows-v312.html)
* [JoyToKey v6.9.1](https://www.emucr.com/2022/08/joytokey-v691.html)
* [AntiMicroX v3.3.1](https://www.emucr.com/2022/10/antimicrox-v331.html)

#### atari

* [Stella Git (2022/10/20)](https://www.emucr.com/2022/10/stella-git-20221020.html)
* [Hatari v2.4.1](https://www.emucr.com/2022/08/hatari-v241.html)
* [Gopher2600 v0.19.3](https://www.emucr.com/2022/10/gopher2600-v0193.html)
* [Altirra v4.10 Test 22](https://www.emucr.com/2022/10/altirra-v410-test-22.html)
* [EmuTos CVS (2022/10/26)](https://www.emucr.com/2022/10/emutos-cvs-20221026.html)

#### Apple

* [AppleWin v1.30.12.0](https://www.emucr.com/2022/09/applewin-v130120.html)

##### acorn bbc

* [b2 v20220801](https://www.emucr.com/2022/08/b2-v20220801.html)

#### elektronica bk

* [BK Emulator v3.13.2210.9969](https://www.emucr.com/2022/10/bk-emulator-v31322109969.html)

#### cps + neogeo arcade

* [Caname v0.67.248](https://www.emucr.com/2022/09/caname-v067248.html)

#### amstrad cpc

* [Caprice32 Git (2022/10/03)](https://www.emucr.com/2022/10/caprice32-git-20221003.html)
* [Caprice Forever v22.10](https://www.emucr.com/2022/10/caprice-forever-v2210.html)
* [CPCEMU v2.5](https://www.emucr.com/2022/08/cpcemu-v25.html)

##### vg5k ?

* [DCVG5K 2022.10.20](https://www.emucr.com/2022/10/dcvg5k-20221020.html)

#### symbian os

* [EKA2L1 Git (2022/10/14)](https://www.emucr.com/2022/10/eka2l1-git-20221014.html)

#### calculators

* [Emu42 v1.29](https://www.emucr.com/2022/10/emu42-v128.html)
* [Emu71 v1.16](https://www.emucr.com/2022/08/emu71-v116.html)
* [Free42 v3.0.15](https://www.emucr.com/2022/10/free42-v3015.html)

#### sega dreamcast

* [Flycast Dojo v0.5.6](https://www.emucr.com/2022/10/flycast-dojo-v056.html)

#### sega mastersystem/gamegear

* [GearSystem Git (2022/09/28)](https://www.emucr.com/2022/09/gearsystem-git-20220928.html)

#### sega model 3

* [Supermodel Git (2022/10/16)](https://www.emucr.com/2022/10/supermodel-git-20221016.html)

#### laserdisc

* [Hypseus Singe v2.10.1](https://www.emucr.com/2022/10/hypseus-singe-v2101.html)

#### zx spectrum

* [SpecEmu v3.2 build 2022.10.01](https://www.emucr.com/2022/10/specemu-v32-build-20221001.html)

#### bandai wonderswan

* [StoicGoose v002](https://www.emucr.com/2022/08/stoicgoose-v002.html)

#### fujitsu fm towns

* [Tsugaru (2022/09/24)](https://www.emucr.com/2022/09/tsugaru-20220924.html)

#### videoton tv computer

* [WinTVC v1.3.0](https://www.emucr.com/2022/10/wintvc-v130.html)

#### playstation

* [Jpcsp Git (2022/10/25)](https://www.emucr.com/2022/10/jpcsp-git-20221025.html)
* [no$psx v2.1](https://www.emucr.com/2022/08/nopsx-v21.html)
* [PCSX-Redux Git (2022/10/17)](https://www.emucr.com/2022/10/pcsx-redux-git-20221017.html)

#### nintendo ds

* [ColecoDS v7.7](https://www.emucr.com/2022/09/colecods-v77.html)
* [NooDS Git (2022/10/04)](https://www.emucr.com/2022/10/noods-git-20221004.html)
* [DeSmuME Git (2022/10/24)](https://www.emucr.com/2022/10/desmume-git-20221024.html)

#### gameboy/color/advance

* [PyBoy v1.5.2](https://www.emucr.com/2022/10/pyboy-v152.html)
* [SameBoy v0.15.6](https://www.emucr.com/2022/09/sameboy-v0156.html)
* [mGBA Git (2022/10/23)](https://www.emucr.com/2022/10/mgba-git-20221023.html)
* [NanoBoyAdvance Git (2022/10/04)](https://www.emucr.com/2022/10/nanoboyadvance-git-20221004.html)
* [SkyEmu Git (2022/10/24)](https://www.emucr.com/2022/10/skyemu-git-20221024.html)
* [BGB v1.5.10](https://www.emucr.com/2022/10/bgb-v1510.html)
* [Gearboy Git (2022/09/28)](https://www.emucr.com/2022/09/gearboy-git-20220928.html)

#### snes

* [Mesen-SX Git (2022/10/27)](https://www.emucr.com/2022/10/mesen-sx-git-20221027.html)
* [Mesen-X Git (2022/10/25)](https://www.emucr.com/2022/10/mesen-x-git-20221025.html)
* [bsnes-mt v1.3.4](https://www.emucr.com/2022/09/bsnes-mt-v134.html)
* [bsnes-plus Git (2022/09/04)](https://www.emucr.com/2022/09/bsnes-plus-git-20220904.html)

#### nes

* [Fceux Git (2022/10/13)](https://www.emucr.com/2022/10/fceux-git-20221013.html)
* [NintendulatorNRS (2022/09/12)](https://www.emucr.com/2022/09/nintendulatornrs-20220912.html)

#### tandy tsr color3

* [VCC v2.1.0.7](https://www.emucr.com/2022/10/vcc-v2107.html)

#### commodore 64/amiga

* [WinVICE r42564](https://www.emucr.com/2022/10/winvice-r42564.html)
* [WinUAE v4.9.2 Beta 3](https://www.emucr.com/2022/10/winuae-v492-beta-3.html)
* [vAmiga v2.1](https://www.emucr.com/2022/08/vamiga-v21.html)
* [Z64K (2022/10/10)](https://www.emucr.com/2022/10/z64k-20221010.html)
* [Hoxs64 v1.1.1.2](https://www.emucr.com/2022/09/hoxs64-v1112.html)
* [hpsx64 v0400](https://www.emucr.com/2022/10/hpsx64-v0400.html)
* [JC64Dis v2.3](https://www.emucr.com/2022/10/jc64dis-v23.html)

#### nintendo 64

* [rokuyon (2022/10/20)](https://www.emucr.com/2022/10/rokuyon-20221020.html)
* [Cen64 Git (2022/10/02)](https://www.emucr.com/2022/10/cen64-git-20221002.html)
* [N64 Git (2022/10/17)](https://www.emucr.com/2022/10/n64-git-20221017.html)
* [m64p v2022.08.9](https://www.emucr.com/2022/08/m64p-v2022089.html)
