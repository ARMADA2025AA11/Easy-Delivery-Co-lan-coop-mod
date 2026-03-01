# Changelog

All notable changes to this project are documented in this file.

## [0.2.18] - 2026-03-01

### Added
- Car sound sync modes via config (`CarSoundSyncMode`: `All` / `HornOnly`).
- Runtime launch mode overrides via args:
  - `--lancoop-server` / `--lancoop-host`
  - `--lancoop-client`
  - `--lancoop-off`
- Ready-to-use launch scripts:
  - `run_lancoop_server.bat`
  - `run_lancoop_client.bat`
  - `run_lancoop_off.bat`
- Extended README with full GitHub-ready documentation.

### Changed
- Improved car horn synchronization reliability using direct horn input signal.
- Expanded car SFX sync to include tires/skid and impact/crash in `All` mode.
- Improved remote horn playback routing and clip resolution.
- Enabled background processing (`Application.runInBackground = true`).

### Fixed
- Version mismatch visibility and safer runtime mode handling.
- Reduced wrong horn substitutions by preferring explicit transmitted clip data.

## [0.2.17] - 2026-03-01

### Added
- Command-line mode override support for Host/Client/Off.

## [0.2.16] - 2026-03-01

### Added
- Full vehicle SFX sync mode (`All`) with broader skid/crash classification.

## [0.2.15] - 2026-03-01

### Fixed
- Enforced exact horn clip usage to avoid wrong horn sound substitutions.

## [0.2.14] - 2026-03-01

### Fixed
- Global clip-name resolution for horn playback from loaded audio clips.

## [0.2.13] - 2026-03-01

### Changed
- Prioritized transmitted horn clip/source during remote playback.

## [0.2.12] - 2026-03-01

### Changed
- Preferred `Headlights.horn` playback path for remote horn.
- Tightened 3D fallback emitter distance behavior.

## [0.2.11] - 2026-03-01

### Fixed
- Direct horn input detection via game input state (`hornPressed`).
- Ignored self-relayed car SFX echoes on client.

## [0.2.10] - 2026-03-01

### Fixed
- Restored horn transmission with safer fallback filtering.

## [0.2.9] - 2026-03-01

### Changed
- Added horn-only synchronization switch and reduced noisy fallback classification.

## [0.2.8] - 2026-02-28

### Added
- Initial end-to-end car sound sync transport and relay.
- Remote playback fallback logic and diagnostics.
