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

#### Emulators to checkout and update

* [ScoopInstaller/Awesome: A curated list of awesome Scoop resources and more.](https://github.com/ScoopInstaller/Awesome)
* [hermanjustnu/scoop-emulators: Scoop bucket for emulators](https://github.com/hermanjustnu/scoop-emulators/)
* [pcsx2-sse4-vxwidgets: Update to version 1.7.3517 · hermanjustnu/scoop-emulators@bbf9457](https://github.com/hermanjustnu/scoop-emulators/commit/bbf9457df4e7952e795428cd489f904d09e75753)
* [retroarch-nightly: Update to version 2022-11-03 · hermanjustnu/scoop-emulators@6969de6](https://github.com/hermanjustnu/scoop-emulators/commit/6969de65e55c01dd17ce92a5a8fd4aab87c18201)
* [duckstation-preview: Update to version 20221103-gbdde3ce · hermanjustnu/scoop-emulators@7d3f6da](https://github.com/hermanjustnu/scoop-emulators/commit/7d3f6daf0bc6840f6ad2f269fd161c2b23e8cbd4)
* [dolphin-dev: Update to version 5.0-17790 · hermanjustnu/scoop-emulators@51b2531](https://github.com/hermanjustnu/scoop-emulators/commit/51b253180c8c0f1a0e2f2a1d9a8fe3ad1712e981)
* [xenia-canary: Update to version 20221103121517-dae5085 · hermanjustnu/scoop-emulators@4e233c9](https://github.com/hermanjustnu/scoop-emulators/commit/4e233c95bfdd7093a25f35181b65819fa7fbd536)
* [simple64: Update to version 2022.11.1 · hermanjustnu/scoop-emulators@3c70b85](https://github.com/hermanjustnu/scoop-emulators/commit/3c70b851358d94d70f2787bb040e873fece7d64d)
* [mgba-dev: Update to version 7775-20221101 · hermanjustnu/scoop-emulators@f047a20](https://github.com/hermanjustnu/scoop-emulators/commit/f047a200f26bbeb72747da519e93f93dcdf182c3)
* [project64-dev: Update to version 4.0.0-5966-0503f32 · hermanjustnu/scoop-emulators@1f4b0b7](https://github.com/hermanjustnu/scoop-emulators/commit/1f4b0b76fa1a029e1410eb2a6a05b9c92cf41dd4)
* [sameboy: Update to version 0.15.7 · hermanjustnu/scoop-emulators@f43206c](https://github.com/hermanjustnu/scoop-emulators/commit/f43206c7a5015eccc075e7a920e0879d03d9b693)
* [scummvm: Update to version 2.6.1 · hermanjustnu/scoop-emulators@c53ef45](https://github.com/hermanjustnu/scoop-emulators/commit/c53ef4532c9dae3771c8a9c1a498a0f1d3a7e5e6)
* [vice-sdl2-snapshot: Update to version 3.6.2-42569 · hermanjustnu/scoop-emulators@8ca7ca2](https://github.com/hermanjustnu/scoop-emulators/commit/8ca7ca20b27ac404ad51c12a1dff7aca45e46208)
* [vice-gtk3-snapshot: Update to version 3.6.2-42569 · hermanjustnu/scoop-emulators@708d94e](https://github.com/hermanjustnu/scoop-emulators/commit/708d94e03a5001b5c0ec5c4e4b782802f3e3e0a7)
* [fceux: Add interim versions · hermanjustnu/scoop-emulators@8da5b4d](https://github.com/hermanjustnu/scoop-emulators/commit/8da5b4d37695478cf80f67f555f87217d1ba4a13)
* [fceux-qt: Add version 2.6.4 · hermanjustnu/scoop-emulators@4e083a9](https://github.com/hermanjustnu/scoop-emulators/commit/4e083a9c17c3dae0ffc27ebd0bed64bf08943248)
* [fceux-qt-dev: Add version 1448-35c5fa36 · hermanjustnu/scoop-emulators@afc6b97](https://github.com/hermanjustnu/scoop-emulators/commit/afc6b97076f973fa01a6608b830d728ac261b422)
* [fceux-dev: Fix 64bit shortcuts · hermanjustnu/scoop-emulators@ad5a9dc](https://github.com/hermanjustnu/scoop-emulators/commit/ad5a9dc6a91316d514ed94329588b71b1cc3361a)
* [fceux-interim: Remove extract_dir · hermanjustnu/scoop-emulators@845c272](https://github.com/hermanjustnu/scoop-emulators/commit/845c2725b54535a19b921f1edaab72e9d79adda5)
* [hoxs64: Add version 1.1.1.2 · hermanjustnu/scoop-emulators@baf1a5d](https://github.com/hermanjustnu/scoop-emulators/commit/baf1a5d7e7a882ea66fad3e68c78fb9e9dc1b455)
* [virtualjaguar: Add version 2.1.2 · hermanjustnu/scoop-emulators@b98fb0c](https://github.com/hermanjustnu/scoop-emulators/commit/b98fb0c9ed593e6b1d32c711720973fb115ca3db)
* [vice: Add version 3.6.1 · hermanjustnu/scoop-emulators@ea986f1](https://github.com/hermanjustnu/scoop-emulators/commit/ea986f1ee492ff62487c5373aa7e9ae44d7ab36e)
* [vice-snapshot: Add version 3.6.2-42547 · hermanjustnu/scoop-emulators@b510aea](https://github.com/hermanjustnu/scoop-emulators/commit/b510aeab50c79f73809fa5c30380d1b837a1afc4)
* [handy: Add version 0.95 · hermanjustnu/scoop-emulators@84d6e14](https://github.com/hermanjustnu/scoop-emulators/commit/84d6e14e59e569dadcbad3175ae3bf750045f178)
* [dosbox: Add version 0.74-3 · hermanjustnu/scoop-emulators@57f93e5](https://github.com/hermanjustnu/scoop-emulators/commit/57f93e50e88d4100892736b29b8c2b4c31a8bcac)
* [(chore): Add sourceforge to sorting · hermanjustnu/scoop-emulators@318fcdb](https://github.com/hermanjustnu/scoop-emulators/commit/318fcdb1bfc307cc3e9f7ab5120fd1f6cf686142)
* [xenia-canary: Update to version 20221018103614-48fea6d · hermanjustnu/scoop-emulators@18b2cb6](https://github.com/hermanjustnu/scoop-emulators/commit/18b2cb6c607fd0c185867d2abfba38c434328a5f)
* [mednafen: Fix checkver · hermanjustnu/scoop-emulators@ed7baf9](https://github.com/hermanjustnu/scoop-emulators/commit/ed7baf9e58c84acadf93b799236e63a2f30c79d2)
* [visualboyadvance-m-nightly: Update manifest · hermanjustnu/scoop-emulators@84ed1ad](https://github.com/hermanjustnu/scoop-emulators/commit/84ed1ad5cfe0b0f2bc9def1de27faf437eeab078)
* [z26: Add autoupdate · hermanjustnu/scoop-emulators@afd17c7](https://github.com/hermanjustnu/scoop-emulators/commit/afd17c75b6cb4a0b44366fb5b422e0ea76b7549a)
* [bsnes-nightly: Add architecture · hermanjustnu/scoop-emulators@d849cc6](https://github.com/hermanjustnu/scoop-emulators/commit/d849cc69dd947ffe2efee620ec2e363dda5ce3b3)
* [Scoop-AtariEmulators/emu7800.json at master · littleli/Scoop-AtariEmulators](https://github.com/littleli/Scoop-AtariEmulators/blob/master/bucket/emu7800.json)
* [Scoop-AtariEmulators/hatari.json at master · littleli/Scoop-AtariEmulators](https://github.com/littleli/Scoop-AtariEmulators/blob/master/bucket/hatari.json)

#### Emulators to update

* [PCSX-Redux Git (2022/10/31) - EmuCR](https://www.emucr.com/2022/10/pcsx-redux-git-20221031.html)
* [GitHub - grumpycoders/pcsx-redux: Latest iteration of PCSX, the popular open source PlayStation1 emulator, heavily focused on development, debuggability, and reverse engineering, but still perfectly usable to run Playstation 1 titles.](https://github.com/grumpycoders/pcsx-redux)
* [PSArcade Classic+ 2.1 - EmuCR](https://www.emucr.com/2022/11/psarcade-classic-21.html)
* [GitHub - Gaston900/PSArcadeClassic: An emulator that focuses on combining the source code ARCADE + HBMAME + simplifying the list and thus keeping the roms more stable.](https://github.com/Gaston900/PSArcadeClassic)
* [Command.dat v0.249 - EmuCR](https://www.emucr.com/2022/11/commanddat-v0249.html)
* [progetto-SNAPS Command.dat](https://www.progettosnaps.net/command/)
* [Cemu v2.0-11 - EmuCR](https://www.emucr.com/2022/11/cemu-v20-11.html)
* [Cemu Emulator](http://cemu.info/)
* [Releases · cemu-project/Cemu](https://github.com/cemu-project/Cemu/releases)
* [LnxSpectrum v1.8.7 - EmuCR](https://www.emucr.com/2022/11/lnxspectrum-v187.html)
* [Download – www.ilnx.cz](https://www.ilnx.cz/downl/)
* [GameEx v18.30 - EmuCR](https://www.emucr.com/2022/11/gameex-v1830.html)
* [GameEx - GameEx Installs - Spesoft Forums](https://forums.gameex.com/forums/files/file/534-gameex/?_fromLogin=1)
* [Problem loading page](http://www.gameex.net/)
* [OpenTTD v13.0-beta1 - EmuCR](https://www.emucr.com/2022/11/openttd-v130-beta1.html)
* [OpenTTD | Download | Testing](https://www.openttd.org/downloads/openttd-releases/testing)
* [puNES Git (2022/11/03) - EmuCR](https://www.emucr.com/2022/11/punes-git-20221103.html)
* [GitHub - punesemu/puNES: Qt-based Nintendo Entertaiment System emulator and NSF/NSFe Music Player (Linux, FreeBSD, OpenBSD and Windows)](https://github.com/punesemu/puNES)
* [DuckStation Git (2022/11/03) - EmuCR](https://www.emucr.com/2022/11/duckstation-git-20221103.html)
* [GitHub - stenzek/duckstation: Fast PlayStation 1 emulator for x86-64/AArch32/AArch64](https://github.com/stenzek/duckstation)
