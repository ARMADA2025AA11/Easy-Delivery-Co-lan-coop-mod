# EasyDeliveryCoLanCoop v0.2.19

LAN coop mod for Easy Delivery Co (BepInEx 5).

## What is new

- Improved host/client spawn consistency by separating saved player positions per map (`deliveryCurrentLastMapBuildIndex`).
- Added map-aware position save-id suffix (`__mapN`) to avoid cross-city/cross-map spawn mixups.
- Tightened world-save synchronization filtering to reduce personal inventory/loadout overwrite risks.
- Added stale save/map context checks before client teleport-on-join.

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

- EasyDeliveryCoLanCoop-v0.2.19.zip

Local path in this repo:

- releases/EasyDeliveryCoLanCoop-v0.2.19.zip
