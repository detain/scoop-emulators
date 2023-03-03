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

* make sure you have these added:
  * pcxs2-git ryuinx-git fpps4-git flycast-git desmume-git vita3k-git visualboyadvance-m-git skyemu-git fbneo-git openmsx-git dolphin-git ppsspp-git simcoupe hypseus-singe flycast-dojo winvice-dev yuzu-git fceux-git mgba-git ares-git xm6pro-68k  pcsx-redux-git project64-git eka2l1-git common-source-code-project pc6001vx nintendulator citra-git xenia-git duckstation-git stella-git dosbox-staging-git mesen openttd rpcs3-git snex9x-git punes-git bizhawk-git bkemulator windspro cemu simple64 cspect megui-reborn hades-git mesen-x-git wine rmg noods-git nintendulatornrs winuae z64k eightyone retrobat redream melonds-git play-git retro-virtual-machine launchbox xemu rokuyon mutsu tsugaru b2
