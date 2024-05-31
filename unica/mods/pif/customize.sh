GET_PROP()
{
    local PROP="$1"
    local FILE="$2"

    if [ ! -f "$FILE" ]; then
        echo "File not found: $FILE"
        exit 1
    fi

    grep "^$PROP=" "$FILE" | cut -d "=" -f2-
}

if ! grep -q "system/bin/rezetprop" "$WORK_DIR/configs/file_context-system"; then
    {
        echo "/system/bin/rezetprop u:object_r:system_file:s0"
    } >> "$WORK_DIR/configs/file_context-system"
fi
if ! grep -q "system/bin/rezetprop" "$WORK_DIR/configs/fs_config-system"; then
    {
        echo "system/bin/rezetprop 0 2000 755 capabilities=0x0"
    } >> "$WORK_DIR/configs/fs_config-system"
fi

CODENAME="$(GET_PROP "ro.product.system.name" "$WORK_DIR/system/system/build.prop")"
echo -e "\n" >> "$WORK_DIR/system/system/etc/init/ssu_$CODENAME.rc"
echo    "on property:service.bootanim.exit=1" >> "$WORK_DIR/system/system/etc/init/ssu_$CODENAME.rc"
echo    "    exec u:r:magisk:s0 root root -- /system/bin/rezetprop -n ro.boot.verifiedbootstate green" >> "$WORK_DIR/system/system/etc/init/ssu_$CODENAME.rc"
echo -n "    exec u:r:su:s0 root root -- /system/bin/rezetprop -n ro.boot.verifiedbootstate green" >> "$WORK_DIR/system/system/etc/init/ssu_$CODENAME.rc"
if [[ "$(GET_PROP "ro.product.first_api_level" "$WORK_DIR/vendor/build.prop")" -ge "33" ]]; then
    echo -e "\n    exec u:r:magisk:s0 root root -- /system/bin/rezetprop -n ro.product.first_api_level 32" >> "$WORK_DIR/system/system/etc/init/ssu_$CODENAME.rc"
    echo -n "    exec u:r:su:s0 root root -- /system/bin/rezetprop -n ro.product.first_api_level 32" >> "$WORK_DIR/system/system/etc/init/ssu_$CODENAME.rc"
fi