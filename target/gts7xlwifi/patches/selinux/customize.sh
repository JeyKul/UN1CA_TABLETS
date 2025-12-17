sed -i '\|^(genfscon proc "/sys/kernel/firmware_config" (u object_r proc_fmw ((s0) (s0))))|d' \
$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil
