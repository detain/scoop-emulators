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
