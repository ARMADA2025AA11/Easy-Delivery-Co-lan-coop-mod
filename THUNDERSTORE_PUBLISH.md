# Thunderstore Publish Guide (Easy Delivery Co)

Prepared package files are in:

- `thunderstore/manifest.json`
- `thunderstore/README.md`
- `thunderstore/icon.png`
- plugin payload: `BepInEx/plugins/EasyDeliveryCoLanCoop/EasyDeliveryCoLanCoop.dll`

Generated upload archive:

- `releases/Thunderstore-EasyDeliveryCoLanCoop-v0.2.19.zip`

## Publish via Thunderstore website

1. Open Thunderstore community page for Easy Delivery Co.
2. Sign in.
3. Create a new package (or new version of existing package).
4. Upload `releases/Thunderstore-EasyDeliveryCoLanCoop-v0.2.19.zip`.
5. Verify package metadata shown from `manifest.json`.
6. Publish.

## Optional: Publish via thunderstore-cli

If you use thunderstore-cli:

1. Install/configure thunderstore-cli.
2. Authenticate your account.
3. Run publish command against:
   - `releases/Thunderstore-EasyDeliveryCoLanCoop-v0.2.19.zip`

(Exact CLI flags depend on installed thunderstore-cli version.)

## Notes

- Current package version in manifest: `0.2.19`.
- If you release a new mod version, update `thunderstore/manifest.json` and rebuild package:
  - `thunderstore/build_package.ps1`
