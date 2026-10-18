package com.yftech.btphone.utils;

import android.os.SystemProperties;

/* loaded from: /home/user/work/dex/classes.dex */
public class BootUtils {
    public static final String SYS_LAUNCHER_BOOT_COMPLETED = "sys.launcher.boot_completed";
    public static final String VENDOR_LAUNCHER_BOOT_COMPLETED = "vendor.launcher.boot_completed";

    public static boolean isBootComplete() {
        return SystemProperties.getInt(SYS_LAUNCHER_BOOT_COMPLETED, 0) == 1 || SystemProperties.getInt(VENDOR_LAUNCHER_BOOT_COMPLETED, 0) == 1;
    }
}
