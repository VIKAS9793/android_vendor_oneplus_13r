# OnePlus 13R Vendor Tree

This repository contains the vendor tree for the OnePlus 13R, optimized for LineageOS compatibility.

## Device specifications

| Feature                 | Specification                                                                   |
| ----------------------- | ------------------------------------------------------------------------------- |
| CPU                     | Qualcomm® Kryo™ 980 CPU @3.3GHz                                               |
| Chipset                 | Snapdragon® 8 Gen 3 Mobile Platform                                            |
| GPU                     | Adreno™ 750 @903MHz                                                            |
| Memory                  | 12GB/16GB LPDDR5X                                                              |
| Shipped Android Version | OxygenOS 15.0 based on Android™ 15                                             |
| Storage                 | 256GB/512GB UFS 4.0                                                            |
| Battery                 | 6,000 mAh (single-cell, non-removable)                                         |
| Display                 | 17.22 cm (6.78 inches), 2780×1264 pixels, 450 ppi, 120Hz ProXDR Display with LTPO 4.1, HBM/Peak Brightness: 1600 nits/4500 nits, 100% Display P3, 10-bit Color Depth, Corning® Gorilla® Glass GG7i |
| Camera (Rear)           | 50 MP (wide), Sony LYT-700, 1/1.56", f/1.8, OIS + 50 MP (telephoto), 2X optical zoom, f/2.0 + 8 MP (ultrawide), f/2.2, 112° FOV |
| Camera (Front)          | 16 MP (wide), 1/3.09", f/2.4, 82° FOV                                         |
| Charging                | 80W SUPERVOOC™                                                                 |
| Dimensions             | Height: 16.17 cm, Width: 7.58 cm, Thickness: 0.80 cm                           |
| Weight                 | 206g                                                                            |
| Sensors                | Proximity sensor, Ambient light sensor, Color temperature sensor, E-compass, Accelerometer, Gyroscope, In-display optical fingerprint sensor, Hall Sensor, Infrared remote control |

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