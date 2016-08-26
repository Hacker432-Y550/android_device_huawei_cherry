#
# Copyright (C) 2016	Hacker432
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

# Create symlink spn-conf.xml which points to selective-spn-conf.xml
# since Huawei's modem does not pull in network operator names
$(shell mkdir -p $(TARGET_OUT)/etc; \
    ln -sf /system/etc/selective-spn-conf.xml \
	   $(TARGET_OUT)/etc/spn-conf.xml)

#Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
        ln -sf /system/etc/wifi/WCNSS_wlan_dictionary.dat \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
$(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini)
