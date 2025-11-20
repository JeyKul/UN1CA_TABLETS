MODEL=$(echo -n "$TARGET_FIRMWARE" | cut -d "/" -f 1)
REGION=$(echo -n "$TARGET_FIRMWARE" | cut -d "/" -f 2)

if ! grep -q "Camera End" "$WORK_DIR/vendor/ueventd.rc"; then
    echo -e "\n" >> "$WORK_DIR/vendor/ueventd.rc"
    cat "$SRC_DIR/target/gts7xlwifi/patches/camera/ueventd" >> "$WORK_DIR/vendor/ueventd.rc"
fi

BLOBS_LIST="
system/lib/libFrucPSVTLib.so
system/lib/libSemanticMap_v1.camera.samsung.so
system/lib/libaifrc.aidl.quram.so
system/lib/libaifrcInterface.camera.samsung.so
system/lib/libmcaimegpu.samsung.so
system/lib64/libAEBHDR_wrapper.camera.samsung.so
system/lib64/libAIQSolution_MPISingleRGB40.camera.samsung.so
system/lib64/libDocDeblur.camera.samsung.s
system/lib64/libDocObjectRemoval.camera.samsung.so
system/lib64/libDocObjectRemoval.enhanceX.samsung.so
system/lib64/libFrucPSVTLib.so
system/lib64/libMPISingleRGB40.camera.samsung.so
system/lib64/libMPISingleRGB40Tuning.camera.samsung.so
system/lib64/libPetClustering.camera.samsung.so
system/lib64/libRelighting_API.camera.samsung.so
system/lib64/libSemanticMap_v1.camera.samsung.so
system/lib64/libSlowShutter-core.so
system/lib64/libWideDistortionCorrection.camera.samsung.so
system/lib64/libae_bracket_hdr.arcsoft.so
system/lib64/libaifrc.aidl.quram.so
system/lib64/libaifrcInterface.camera.samsung.so
system/lib64/libarcsoft_dualcam_portraitlighting.so
system/lib64/libarcsoft_single_cam_glasses_seg.so
system/lib64/libdvs.camera.samsung.so
system/lib64/libhybridHDR_wrapper.camera.samsung.so
system/lib64/libhybrid_high_dynamic_range.arcsoft.so
system/lib64/libmcaimegpu.samsung.so
"
for blob in $BLOBS_LIST
do
    DELETE_FROM_WORK_DIR "system" "$blob"
done

LOG_STEP_IN "- Adding stock camera libs"
BLOBS_LIST="
system/etc/public.libraries-arcsoft.txt
system/etc/public.libraries-camera.samsung.txt
system/lib64/libFaceRestoration.camera.samsung.so
system/lib64/libFace_Landmark_Engine.camera.samsung.so
system/lib64/libFacialStickerEngine.arcsoft.so
system/lib64/libHpr_RecFace_dl_v1.0.camera.samsung.so
system/lib64/libImageCropper.camera.samsung.so
system/lib64/libImageTagger.camera.samsung.so
system/lib64/libLocalTM_pcc.camera.samsung.so
system/lib64/libMultiFrameProcessing30.camera.samsung.so
system/lib64/libMultiFrameProcessing30.snapwrapper.camera.samsung.so
system/lib64/libMultiFrameProcessing30Tuning.camera.samsung.so
system/lib64/libPortraitDistortionCorrection.arcsoft.so
system/lib64/libSwIsp_core.camera.samsung.so
system/lib64/libSwIsp_wrapper_v1.camera.samsung.so
system/lib64/libhigh_dynamic_range.arcsoft.so
system/lib64/libhumantracking.arcsoft.so
system/lib64/liblow_light_hdr.arcsoft.so
system/lib64/libsaiv_HprFace_cmh_support_jni.camera.samsung.so
system/lib64/libsamsung_videoengine_9_0.so
system/lib64/libAiSolution_wrapper_v1.camera.samsung.so
system/lib64/libBright_core.camera.samsung.so
system/lib64/libFacePreProcessing.camera.samsung.so
system/lib64/libFace_Landmark_API.camera.samsung.so
system/lib64/libHprFace_GAE_api.camera.samsung.so
system/lib64/libHpr_RecGAE_cvFeature_v1.0.camera.samsung.so
system/lib64/libHpr_TaskFaceClustering_hierarchical_v1.0.camera.samsung.so
system/lib64/libMyFilter.camera.samsung.so
system/lib64/libPortraitDistortionCorrectionCali.arcsoft.so
system/lib64/libUltraWideDistortionCorrection.camera.samsung.so
system/lib64/libWideDistortionCorrection.camera.samsung.so
system/lib64/libhumantracking_util.camera.samsung.so
system/lib64/libtensorflowLite.dynamic_viewing.camera.samsung.so
"

for blob in $BLOBS_LIST
do
    ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "$blob" 0 0 644 "u:object_r:system_lib_file:s0"
done
{
    echo "libLttEngine.camera.samsung.so"
} >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
LOG_STEP_OUT

LOG_STEP_IN "- Fixing MIDAS model detection"
sed -i "s/ro.product.device/ro.product.vendor.device/g" "$WORK_DIR/vendor/etc/midas/midas_config.json"
LOG_STEP_OUT