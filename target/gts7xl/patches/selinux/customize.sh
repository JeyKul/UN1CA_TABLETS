SKIPUNZIP=1

sed -i "/hal_dsms_default/d" "$WORK_DIR/system/system/system_ext/etc/selinux/mapping/30.0.cil"
sed -i "/hal_dsms_service/d" "$WORK_DIR/system/system/system_ext/etc/selinux/mapping/30.0.cil"
sed -i "/uwb_regulation_skip_prop/d" "$WORK_DIR/system/system/system_ext/etc/selinux/mapping/30.0.cil"

echo "system/system_ext/apex/com.android.vndk.v30.apex 0 0 755 capabilities=0x0" >> $WORK_DIR/configs/fs_config-system
echo "/system/system_ext/apex/com\.android\.vndk\.v30\.apex u:object_r:system_file:s0" >> $WORK_DIR/configs/file_context-system
