<div align="center">

<img src="res/icon.png" alt="Ascension" height="250">

# Ascension
A trainer for Black Ops 1 Zombies written in C. This tool is being created just for fun while learning reverse engineering fundamentals.

[![Ask DeepWiki](https://img.shields.io/badge/Ask%20DeepWiki-blue?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAPoAAAD6AG1e1JrAAACIUlEQVRYw%2B2XP2gUQRTGv7d3JhYWQawkIBaCVWzETos0gmAnVoKNTSoLK0E7EQQrC20sBVFBtLPQRgTBtBaKjYgIQUSxiJq7fT%2BLvCGPJZdNLt4dQj5Y3u7sznzfzLw%2Fs9IO%2FicANiniCujEfWdsQgBLxAbsbraPZcmBfcAt4DNwKQsZNfEUsAB8YRV12LfA6ZHuedg7AO7ed%2Fc%2BUBcbQhbiu%2B6wXIM6EnZWkszMJe2Ke0n6I2la0v51hFeSMLN6OwIK6jJwEBdUYb2MAxRSz6sY4geiahFgLe1Hwq6YWe3us8AN4FQQU4QM64SPY69Xyr43fADgNjAPXHb3peSsD4FDQ0VLEjAHvIhBPS6AHvA1bBO9JPAXcHFbIRtJ5yzwIQZ9CZwAusDJENIkLqsG8DpNyIZJwSUk9wLHgakcesC1JCCjiHm1kYDNOEjptCxpSVK%2F8f73OFLxPLAYM3oCzEX7MXf%2FlJbc%2F8kWpA4HgQdpYI9IWAbeh83whi84cHXL%2B58EPBoQhnmm94EzwE3gZ2p%2FDhzdbhg%2BTaRr01x7ftb4%2FjBwFzjXrCvDpmLW9crVLNeR9CaapoGemb2TdCERW1tNaBNQ8jktwmozqwtpqRNtdWAjARYk39IS12ZWRX7vmJmA71nQZgi36gN7gCvAj5xc3P0jcH7kx7Ik5IC73wsh14GZsZySow5002l4Jr0b6%2Bm4eSyvpAn8lEzsx2QHo8RfUrlN%2BuPq4ksAAAAASUVORK5CYII%3D&labelColor=black)](https://deepwiki.com/idircarlos/ascension)
[![GitHub stars](https://img.shields.io/github/stars/idircarlos/ascension?style=social)](https://github.com/idircarlos/ascension/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/idircarlos/ascension?style=social)](https://github.com/idircarlos/ascension/network/members)
[![GitHub issues](https://img.shields.io/github/issues/idircarlos/ascension)](https://github.com/idircarlos/ascension/issues)
[![GitHub license](https://img.shields.io/github/license/idircarlos/ascension)](https://github.com/idircarlos/ascension/blob/main/LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/idircarlos/ascension)](https://github.com/idircarlos/ascension/commits/main)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/idircarlos/ascension/fork)
[![C](https://img.shields.io/badge/Language-C-blue)](https://en.wikipedia.org/wiki/C_(programming_language))
[![libui](https://img.shields.io/badge/Library-libui-blue?labelColor=black)](https://github.com/libui-ng/libui-ng)
[![OpenGL](https://img.shields.io/badge/Library-OpenGL-blue?labelColor=black)](https://www.opengl.org/)
[![iniparser](https://img.shields.io/badge/Library-iniparser-blue?labelColor=black)](https://gitlab.com/iniparser/iniparser)
[![Scintilla](https://img.shields.io/badge/Library-Scintilla-blue?labelColor=black)](https://www.scintilla.org/)
[![OpenAssetTools](https://img.shields.io/badge/Library-OpenAssetTools-blue?labelColor=black)](https://github.com/Laupetin/OpenAssetTools)

</div>

---


This tool is still under development. Main features:

|    Player       |  Hacks                 |  Graphics                   |  Misc                                  |  Tools                    |
| --------------- | ---------------------- | --------------------------- | -------------------------------------- | ------------------------- |
|   Change name   |   God Mode             |   Set FOV                   |   Give weapons                         |   Twitch Integration      |
|   Set Health    |   No Clip              |   Set FOV Scale             |   Give ammo                            |   GSC Mods and Editor     |
|   Set Points    |   Invisible            |   Set FPS Cap / Unlimit FPS |   Teleport to any location (save/load) |   Camo Manager and Viewer |
|   Set Speed     |   No Recoil            |   Make Borderless           |   Change to any round                  |   Bind Manager            |
|   Set Kills     |   Infinite Ammo        |   Disable HUD               |   Play easter egg music any time       |   Floating Widgets        |
|   Set Headshots |   Box Never Moves      |   Disable FOG               |   Fix Movement Speed PC Issue          |                           |
|                 |   Instant Kill         |   Colorized mode            |   Show FPS                             |                           |
|                 |   Small Crosshair      |   Fullbright mode           |   Commands                             |                           |
|                 |   Fast Gameplay        |   Customize UI              |   Character Selection                  |                           |
|                 |   Third Person         |                             |   Open/Close Game                      |                           |
|                 |   No Shellshock        |                             |   Game resets                          |                           |
|                 |   Increase Knife Range |                             |   Persisted Settings                   |                           |


## Differences between others mods
This tool allows injecting any GSC script into the game without using any external mod tool. Because of this, I was able to set up bidirectional communication between Ascension and GSC scripts via DVars (Ascension → GSC) and VM notifications (GSC → Ascension).

This is extremely powerful, since the mod can be extended to do whatever your imagination can come up with, without relying on all the limitations that GSC has. To explain it in a simpler way, you could say that you can ask GSC to do whatever you want from this mod at any moment, programmatically.

Hypothetical examples that are not implemented:
- Play the Easter egg song when your favorite streamer starts streaming.
- Give a random perk when your friend sends you a Discord message.
- Use Dempsey, Nikolai, Takeo, or Richtofen depending on the day of the week you are playing.

The action is performed by GSC, but the logic is handled by the tool. I hope this makes sense.

## Requirements

To build and run this project, you’ll need:

* **MinGW-32** - This is for the `g++` compiler and `make`.
* **Meson** (version **0.58.0** - I didn't test it with newer versions) - required to build the [libui]([https://github.com/libui-ng/libui-ng](https://github.com/libui-ng/libui-ng)) library.
* **CMake** (version **3.18.0** - I didn't test it with newer versions) - required to build the [iniparser]([https://github.com/libui-ng/libui-ng](https://gitlab.com/iniparser/iniparser)) library.

[OpenAssetTools](https://github.com/Laupetin/OpenAssetTools) comes in as a git submodule and is built as a static library. Its build system, premake5, is downloaded automatically the first time.

## Build and Run

```bash
git clone --recursive https://github.com/idircarlos/ascension.git
make -j8
make run
```

## Motivation
There are two main reasons why I created this trainer:
- To learn basic concepts of reverse engineering while enjoying one of my favorite games from my childhood.
- Out of curiosity about how [TIM](https://download.magicbennie.com/BlackOpsZombies/TIM/) works under the hood, since it wasn’t open source.

If you have used TIM before, you will definitely find some similarities, but this trainer has its own unique features as well.

My intention in releasing this source code is not to “reveal how to hack BO1,” since there are already plenty of existing trainers out there that already show it, but rather to share how things actually work, how I managed to implement some very unique features, and how customizable this can be in the long term.

After using TIM, it was really nice to have the FOV and some widgets automatically configured, but I felt that some other features were missing. Because of that, I decided to implement things such as:
- Persistent UI color configuration regardless of the game language
- Automatic power-up cycle widget
- Selecting which character I want to use for every run, so I don’t need to restart so many times
- Being able to start at round 40 with any loadout I want, to train any strategy in a fast manner
- Integrated borderless mode, since I was previously using an external application for this
- Adding my own commands
- Adding specific mod commands to key bindings instead of native BO1 commands

Note: If someone is willing to hack a game with malicious intentions, such as faking speedruns, they will do it anyway, whether with this tool or any other.

## Contributions
Contributions are welcome! If you'd like to help improve **Ascension**, feel free to:

- Open an **Issue** to report bugs, suggest features, or share ideas.
- Submit a **Pull Request** with improvements.

I’ll be happy to review your contributions and collaborate on making this trainer even better.
You can join the [Discord Community](https://discord.gg/zcFkKheNfG). Feel free to contact me through Discord personally. 

## Acknowledgments
I would like to extend my gratitude to:
- [magicbennie](https://github.com/magicbennie), creator of TIM, for being an inspiration while creating this tool.
- [Lunar RF Labs](https://lunar.sh), from whom I took the idea of GSC loading based on [one of their journal entries](https://journal.lunar.sh/2023/gsctool.html).
- [Laupetin](https://github.com/Laupetin), with [OpenAssetTools](https://github.com/Laupetin/OpenAssetTools), which is what makes the Camo Manager able to read the game's own assets.
- [Scintilla](https://www.scintilla.org/), the editing UI Component behind the GSC editor.
- [Flaticon](https://www.flaticon.com/):
  - [Open-folder icon](https://www.flaticon.com/free-icons/open-folder) created by NajmunNahar
  - [Paper icon](https://www.flaticon.com/free-icons/paper) created by judanna
  - [Box icon](https://www.flaticon.com/free-icons/box) icons created by Good Ware
