#
# Copyright (C) 2016 Android For Marvell Project <ctx.xda@gmail.com>
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
#

#!/bin/sh

LINEAGEOS_TOP=../../..
VENDOR=samsung
DEVICE=coreprimeltexx

BASE=$LINEAGEOS_TOP/vendor/$VENDOR/$DEVICE/

mkdir -p $BASE

for FILE in `cat proprietary-files.txt | grep -v "^#"`; do

    echo Pulling $FILE to $BASE/$(dirname "${FILE}")

	# Check if pull dir already exists in $BASE
	if [ ! -d $BASE/$(dirname "${FILE}") ]; then
		mkdir -p $BASE/$(dirname "${FILE}")
	fi

    adb pull /system/$FILE $BASE/$(dirname "${FILE}")
done

./setup-makefiles.sh
