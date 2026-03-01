# EasyDeliveryCoLanCoop v0.2.18

## Highlights

- Added runtime launch mode overrides:
  - `--lancoop-server` / `--lancoop-host`
  - `--lancoop-client`
  - `--lancoop-off`
- Added ready-to-use launcher scripts:
  - `run_lancoop_server.bat`
  - `run_lancoop_client.bat`
  - `run_lancoop_off.bat`
- Improved vehicle sound synchronization:
  - direct horn signal handling
  - configurable sound sync mode (`All` / `HornOnly`)
  - better horn clip selection and playback behavior
- Enabled background processing (`Application.runInBackground = true`).
- Added repository documentation: README refresh, CHANGELOG, CONTRIBUTING, MIT LICENSE.

## Installation

1. Install BepInEx 5 (Mono) into the game folder.
2. Copy `EasyDeliveryCoLanCoop.dll` into:
   `BepInEx/plugins/EasyDeliveryCoLanCoop/`
3. Launch game normally or with one of the launch args above.

## Notes

- This is an experimental LAN coop mod.
- Host/client should run the same mod version.
