# OnePlus 13R Vendor Blobs

## Extracted Components
✅ **Complete Implementations**:
- `vulkan.adreno.so`: Vulkan graphics driver (3.1MB)
- `android.hardware.graphics.mapper@4.0-impl-qti-display.so`: Display HAL
- Audio configs (`audio_effects.xml`, `audio.cfg`)

## Missing Critical Components
⚠️ **Camera**:
- `libmmcamera2_stats_modules.so`
- `libmmcamera2_isp_modules.so`
- Camera HAL implementations

⚠️ **NFC**:
- `libnfc-nci.so`
- `vendor.oplus.hardware.nfc_aidl-service`

⚠️ **Thermal Management**:
- `android.hardware.thermal@2.0-service`
- Thermal engine configs

## Extraction Status
- **Method**: Non-root ADB pull
- **Success Rate**: ~40% of target components
- **Permission Issues**:
  - `/vendor/lib64/hw/` restricted
  - `/odm/bin/` protected

## Next Steps
1. Source missing blobs from:
   - Stock ROM firmware
   - Qualcomm reference drivers
   - Community repositories

2. Testing priority:
   - Graphics stack (Vulkan/Display)
   - Audio functionality

3. Tracking:
   - OnePlus OSS releases
   - LineageOS device trees
