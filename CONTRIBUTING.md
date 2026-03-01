# Contributing

Thanks for contributing to EasyDeliveryCoLanCoop.

## Development Setup

1. Install .NET SDK (compatible with `netstandard2.1` build workflow).
2. Put required game/BepInEx references into `lib/` (see `lib/README.md`).
3. Build:

   `dotnet build -c Release`

4. Copy resulting DLL to game plugin folder:

   `BepInEx/plugins/EasyDeliveryCoLanCoop/`

## Branching and Commits

- Use short, focused branches per feature/fix.
- Keep commits small and atomic.
- Commit message style:
  - `feat: ...`
  - `fix: ...`
  - `docs: ...`
  - `refactor: ...`

## Pull Request Checklist

- [ ] Code builds in `Release`.
- [ ] No unrelated file changes.
- [ ] README/CHANGELOG updated when behavior changes.
- [ ] Host/client compatibility impact described.
- [ ] Logs/examples added for network/audio related fixes.

## Reporting Bugs

When opening an issue, include:

- Mod version
- Game version
- Host and client logs
- Reproduction steps
- Config diff (network + sound settings)
- Expected vs actual behavior

## Coding Notes

- Prefer root-cause fixes over quick patches.
- Keep protocol changes backward-aware where practical.
- Avoid hardcoding machine-specific paths.
- Preserve existing style and naming in touched files.

## Testing Tips

- Validate both Host and Client paths.
- Test reconnect behavior.
- Test focus loss / background run behavior.
- For sound sync, test:
  - horn
  - skid/tire sounds
  - impact sounds
  - short/rapid repeated triggers

## Security and Safety

- Do not commit private credentials or local machine data.
- Keep binary blobs out of git unless required.
