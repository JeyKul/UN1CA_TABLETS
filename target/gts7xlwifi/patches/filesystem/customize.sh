SKIPUNZIP=1

echo "Add stock fstab.qcom"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "vendor" "etc/fstab.qcom"

echo "Add erofs mountpoint"

sed -i '/^\(product\|vendor\|odm\)[[:space:]]\+\/\(product\|vendor\|odm\)[[:space:]]\+ext4/ {
  p
  s/ext4/erofs/
}' $WORK_DIR/vendor/etc/fstab.qcom

sed -i 's/fileencryption=ice/fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized/g' $WORK_DIR/vendor/etc/fstab.qcom

echo "Remove DualDAR mount points"
sed -i "/keydata/d" "$WORK_DIR/vendor/etc/fstab.qcom"
sed -i "/keyrefuge/d" "$WORK_DIR/vendor/etc/fstab.qcom"

echo "Replace USERDATA string"
sed -i 's|^/dev/block/bootdevice/by-name/userdata[[:space:]]\+/data[[:space:]]\+f2fs[[:space:]]\+noatime,nosuid,nodev,discard,usrquota,grpquota,fsync_mode=nobarrier,reserve_root=32768,resgid=5678,inlinecrypt[[:space:]]\+latemount,wait,check,fileencryption=ice,quota,reservedsize=128M,checkpoint=fs$|/dev/block/bootdevice/by-name/userdata  /data  f2fs  noatime,nosuid,nodev,discard,usrquota,grpquota,fsync_mode=nobarrier,reserve_root=32768,resgid=5678,inlinecrypt  latemount,wait,check,,fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized,quota,reservedsize=128M,sysfs_path=/sys/devices/platform/soc/1d84000.ufshc,checkpoint=fs,keydirectory=/metadata/vold/metadata_encryption|' $WORK_DIR/vendor/etc/fstab.qcom