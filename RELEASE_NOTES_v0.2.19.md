# EasyDeliveryCoLanCoop v0.2.19

## Highlights

- Improved host/client spawn consistency by separating saved player positions per map (`deliveryCurrentLastMapBuildIndex`).
- Added map-aware position save-id suffix (`__mapN`) to avoid cross-city/cross-map spawn mixups.
- Tightened world-save synchronization filtering to reduce personal inventory/loadout overwrite risks.
- Added stale save/map context checks before client teleport-on-join.

## Installation

1. Install BepInEx 5 (Mono) into the game folder.
2. Copy `EasyDeliveryCoLanCoop.dll` into:
   `BepInEx/plugins/EasyDeliveryCoLanCoop/`
3. Launch game normally or with one of the launch args.

## Notes

- This is an experimental LAN coop mod.
- Host/client should run the same mod version.
