# OnePlus 13R Vendor Tree

This repository contains proprietary vendor blobs and configurations for the OnePlus 13R (kalama).

## Device Specifications

| Feature                 | Specification                                                                                                                                                                                      |
| ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| CPU                     | Qualcomm® Kryo™ 980 CPU @3.3GHz                                                                                                                                                                    |
| Chipset                 | Snapdragon® 8 Gen 3 Mobile Platform                                                                                                                                                                |
| GPU                     | Adreno™ 750 @903MHz                                                                                                                                                                                |
| Memory                  | 12GB/16GB LPDDR5X                                                                                                                                                                                  |
| Shipped Android Version | OxygenOS 15.0 based on Android™ 15                                                                                                                                                                 |
| Storage                 | 256GB/512GB UFS 4.0                                                                                                                                                                                |
| Battery                 | 6,000 mAh (single-cell, non-removable)                                                                                                                                                             |
| Display                 | 17.22 cm (6.78 inches), 2780×1264 pixels, 450 ppi, 120Hz ProXDR Display with LTPO 4.1, HBM/Peak Brightness: 1600 nits/4500 nits, 100% Display P3, 10-bit Color Depth, Corning® Gorilla® Glass GG7i |
| Camera (Rear)           | 50 MP (wide), Sony LYT-700, 1/1.56", f/1.8, OIS, 50 MP (telephoto), 2X optical zoom, f/2.0, 8 MP (ultrawide), f/2.2, 112° FOV                                                                      |
| Camera (Front)          | 16 MP (wide), 1/3.09", f/2.4, 82° FOV                                                                                                                                                              |
| Charging                | 80W SUPERVOOC™                                                                                                                                                                                     |

## Extracting Proprietary Blobs

1. Connect your device in recovery mode
2. Run the extraction script:
```bash
./device/oneplus/13r/extract-files.sh
```

## Building

1. Add this repository to your LineageOS build:
```bash
git clone https://github.com/VIKAS9793/android_vendor_oneplus_13r.git -b lineage-21.0 vendor/oneplus/13r
```

2. Build the ROM:
```bash
source build/envsetup.sh
lunch lineage_13r-userdebug
m bacon
```

## Copyright

```
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
``` 