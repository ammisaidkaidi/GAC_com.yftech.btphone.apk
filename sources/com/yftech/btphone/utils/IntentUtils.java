package com.yftech.btphone.utils;

import android.content.Context;
import android.content.Intent;
import com.yftech.btphone.app.CallActivity;
import com.yftech.btphone.app.MainService;
import com.yftech.btphone.app.SearchActivity;

/* loaded from: /home/user/work/dex/classes.dex */
public class IntentUtils {
    public static void startMainService(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClass(context, MainService.class);
            context.startForegroundService(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void startSearchActivity(Context context) {
        Intent intent = new Intent(context, (Class<?>) SearchActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void startCallActivity(Context context, boolean z) {
        Intent intent = new Intent(context, (Class<?>) CallActivity.class);
        intent.putExtra(CallActivity.KEY, z);
        intent.addFlags(268435456);
        intent.addFlags(1048576);
        intent.addFlags(4194304);
        context.startActivity(intent);
    }

    public static void notifyStartPhoneCallActivity(Context context) {
        try {
            Intent intent = new Intent("com.bluetooth.window.click");
            intent.setPackage("com.android.systemui");
            context.sendBroadcast(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
