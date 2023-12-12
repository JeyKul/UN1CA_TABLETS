if ! grep -q "wlan/a528b" "$WORK_DIR/configs/file_context-vendor"; then
    {
        echo "/vendor/etc/init/wifi_firmware\.rc u:object_r:vendor_configs_file:s0"
        echo "/vendor/firmware/wpss\.b00 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b02 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b03 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b04 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b05 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b06 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.b07 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wpss\.mdt u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b00 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b02 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b03 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b04 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b05 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b06 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.b07 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev2/wpss\.mdt u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev3 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev3/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev3/wpss\.mdt u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev4 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev4/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev4/wpss\.mdt u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b00 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b02 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b03 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b04 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b05 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b06 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.b07 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528b/rev5/wpss\.mdt u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n/rev1 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n/rev1/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n/rev1/wpss\.mdt u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n/rev2 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n/rev2/wpss\.b01 u:object_r:vendor_firmware_file:s0"
        echo "/vendor/firmware/wlan/a528n/rev2/wpss\.mdt u:object_r:vendor_firmware_file:s0"
    } >> "$WORK_DIR/configs/file_context-vendor"
fi
if ! grep -q "wlan/a528b" "$WORK_DIR/configs/fs_config-vendor"; then
    {
        echo "vendor/etc/init/wifi_firmware.rc 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b00 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b02 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b03 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b04 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b05 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b06 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.b07 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wpss.mdt 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b00 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b02 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b03 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b04 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b05 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b06 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.b07 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev2/wpss.mdt 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev3 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev3/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev3/wpss.mdt 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev4 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev4/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev4/wpss.mdt 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b00 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b02 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b03 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b04 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b05 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b06 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.b07 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528b/rev5/wpss.mdt 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n/rev1 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n/rev1/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n/rev1/wpss.mdt 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n/rev2 0 2000 755 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n/rev2/wpss.b01 0 0 644 capabilities=0x0"
        echo "vendor/firmware/wlan/a528n/rev2/wpss.mdt 0 0 644 capabilities=0x0"
    } >> "$WORK_DIR/configs/fs_config-vendor"
fi
if ! grep -q "vendor_firmware_file (file (mounton" "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"; then
    echo "(allow init_30_0 vendor_firmware_file (file (mounton)))" >> "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
fi
