# OnePlus 13R Vendor Tree

This repository contains the vendor tree for the OnePlus 13R, optimized for LineageOS compatibility.

## Device specifications

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Octa-core (1x3.3 GHz Cortex-X4 & 5x3.2 GHz Cortex-A720 & 2x2.3 GHz Cortex-A520) |
| Chipset                 | Qualcomm SM8650 (Snapdragon 8 Gen 3) |
| GPU                     | Adreno 750 |
| Memory                  | 8/12/16 GB |
| Shipped Android Version | 14.0.0 |
| Storage                | 128/256/512 GB |
| Battery                | 5500 mAh |
| Display                | 6.78 inches, 1264 x 2780 pixels, AMOLED, 120Hz |
| Camera (Rear)          | 50 MP (f/1.8, 1/1.56", 1.0µm) + 8 MP (f/2.2, 1/4", 1.12µm) + 2 MP (f/2.4) |
| Camera (Front)         | 16 MP (f/2.4, 1/3.06", 1.0µm) |
| Sensors                | Fingerprint (under display, optical), accelerometer, gyro, proximity, compass |

## Copyright

```
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
```

## Proprietary Files

This repository contains proprietary files required for the OnePlus 13R device. These files are extracted from the stock ROM and are necessary for the device to function properly.

## Dependencies

- [android_device_oneplus_13r](https://github.com/your-github-username/android_device_oneplus_13r)
- [android_device_oneplus_sm8650-common](https://github.com/your-github-username/android_device_oneplus_sm8650-common)
- [android_kernel_oneplus_13r](https://github.com/your-github-username/android_kernel_oneplus_13r)

## How to extract blobs

```bash
# Clone the repository
git clone https://github.com/your-github-username/android_vendor_oneplus_13r.git

# Navigate to the repository
cd android_vendor_oneplus_13r

# Extract blobs from a device running the same Android version
./extract-files.sh
```

## Included blobs

- Audio HAL
- Camera HAL
- Display HAL
- Fingerprint HAL
- Graphics HAL
- Sensors HAL
- WiFi HAL

## Building LineageOS

1. Initialize your build environment:
```bash
source build/envsetup.sh
```

2. Add this repository to your LineageOS build:
```bash
git clone https://github.com/VIKAS9793/android_vendor_oneplus_13r.git -b lineage-21.0 vendor/oneplus/13r
```

3. Select the device:
```bash
lunch lineage_13r-userdebug
```

4. Build the ROM:
```bash
m bacon
```

## Device Tree Structure

```
android_vendor_oneplus_13r/
├── 13r-vendor.mk           # Device-specific vendor configurations
├── Android.mk              # Makefile for building vendor blobs
├── BoardConfigVendor.mk    # Vendor-specific board configurations
└── README.md               # This file
```

## Contributing

1. Fork this repository
2. Create a new branch for your changes
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details. 