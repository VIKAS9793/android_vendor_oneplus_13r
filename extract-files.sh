#!/bin/bash

# Copyright (C) 2024 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

DEVICE=13r
VENDOR=oneplus

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../../..
HELPER="$LINEAGE_ROOT"/vendor/lineage/build/tools/extract_utils.sh

if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Default to sanitizing the vendor folder while extraction
DEFAULT_VENDOR_FILE="$MY_DIR"/proprietary-files.txt

setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT" false "$DEFAULT_VENDOR_FILE"

extract "$MY_DIR"/proprietary-files.txt "$SRC" "$SECTION"

"$MY_DIR"/setup-makefiles.sh 