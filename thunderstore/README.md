# EasyDeliveryCoLanCoop

LAN co-op mod for Easy Delivery Co (BepInEx 5).

## Features

- Host/Client LAN networking over UDP
- Player/car/cargo synchronization
- Save and money sync (host-authoritative)
- Vehicle SFX sync (horn, skid/tire, impact)
- Optional auto-discovery of host on local network
- Runs in background when unfocused

## Install (manual)

1. Install BepInEx 5 into the game folder.
2. Place `EasyDeliveryCoLanCoop.dll` into:
   - `BepInEx/plugins/EasyDeliveryCoLanCoop/`

## Launch options

- `--lancoop-server` or `--lancoop-host`
- `--lancoop-client`
- `--lancoop-off`

## Config

Config file:
- `BepInEx/config/EasyDeliveryCoLanCoop.cfg`

Important options:
- `Mode`: Off / Host / Client
- `Port`, `HostAddress`
- `CarSoundSyncMode`: All / HornOnly

## Source

https://github.com/ARMADA2025AA11/Easy-Delivery-Co-lan-coop-mod
