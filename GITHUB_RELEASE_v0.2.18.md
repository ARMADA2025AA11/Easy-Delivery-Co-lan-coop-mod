# EasyDeliveryCoLanCoop v0.2.18

LAN coop mod for Easy Delivery Co (BepInEx 5).

## What is new

- Added launch mode overrides through startup args:
  - --lancoop-server / --lancoop-host
  - --lancoop-client
  - --lancoop-off
- Added ready-made launcher scripts:
  - run_lancoop_server.bat
  - run_lancoop_client.bat
  - run_lancoop_off.bat
- Improved vehicle audio sync:
  - direct horn signal handling
  - configurable mode (All / HornOnly)
  - better horn clip resolution and playback
- Enabled background run mode (game keeps updating while unfocused).
- Added repository documentation:
  - README refresh
  - CHANGELOG
  - CONTRIBUTING
  - MIT LICENSE

## Installation

1. Install BepInEx 5 (Mono) into the game folder.
2. Copy EasyDeliveryCoLanCoop.dll to:
   BepInEx/plugins/EasyDeliveryCoLanCoop/
3. Launch game normally or with one of the startup args above.

## Compatibility notes

- Host and client should use the same mod version.
- Project status: experimental.

## Recommended release asset

Attach this file to the GitHub Release:

- EasyDeliveryCoLanCoop-v0.2.18.zip

Local path in this repo:

- releases/EasyDeliveryCoLanCoop-v0.2.18.zip
