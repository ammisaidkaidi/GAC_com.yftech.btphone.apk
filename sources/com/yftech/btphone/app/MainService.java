package com.yftech.btphone.app;

import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import com.yftech.btphone.lib.sample.SampleService;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.lib.utils.Configuration;

/* loaded from: /home/user/work/dex/classes.dex */
public class MainService extends SampleService {
    private static final String KEY_AIR_CONTROL_SHOW = "air_control_show";
    private static final String KEY_CAR_CONTROL_SHOW = "car_control_show";
    private static final String KEY_SEAT_CONTROL_SHOW = "seat_control_show";
    private static final int VALUE_WINDOW_HIDE = 0;
    private static final int VALUE_WINDOW_SHOW = 1;
    private GlobalReceiver mGlobalReceiver;
    private String TAG = "MainService";
    private String[] mUriArray = {KEY_AIR_CONTROL_SHOW, KEY_CAR_CONTROL_SHOW, KEY_SEAT_CONTROL_SHOW};
    private ContentObserver mContentObserver = new ContentObserver(new Handler()) { // from class: com.yftech.btphone.app.MainService.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            Log.i(MainService.this.TAG, "onChange:" + uri);
            String path = uri.getPath();
            String str = MainService.KEY_CAR_CONTROL_SHOW;
            if (!path.contains(MainService.KEY_CAR_CONTROL_SHOW)) {
                if (uri.getPath().contains(MainService.KEY_AIR_CONTROL_SHOW)) {
                    str = MainService.KEY_AIR_CONTROL_SHOW;
                } else if (!uri.getPath().contains(MainService.KEY_SEAT_CONTROL_SHOW)) {
                    return;
                } else {
                    str = MainService.KEY_SEAT_CONTROL_SHOW;
                }
            }
            int i = Settings.System.getInt(MainService.this.getContentResolver(), str, 0);
            Log.i(MainService.this.TAG, "onChange: " + i);
            if (i == 1) {
                AppManager.getAppManager().finishActivity(CallActivity.class);
                BluetoothApplication.getInstance().getPhoneCallWindowManager().sendMessageCheckPhoneWindow(true, false);
            }
        }
    };

    @Override // com.yftech.btphone.lib.sample.SampleService
    public void init() {
        super.init();
        for (String str : this.mUriArray) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor(str), true, this.mContentObserver);
        }
        this.mGlobalReceiver = new GlobalReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Config.ACTION_ECALL_COMMAND);
        intentFilter.addAction(Configuration.ACTIVITY_CHANGE);
        intentFilter.addAction(Configuration.EXIT_APPLICATION_BROADCAST_ACTION);
        intentFilter.addAction(KEY_AIR_CONTROL_SHOW);
        registerReceiver(this.mGlobalReceiver, intentFilter);
    }

    @Override // com.yftech.btphone.lib.sample.SampleService
    public void release() {
        GlobalReceiver globalReceiver = this.mGlobalReceiver;
        if (globalReceiver != null) {
            unregisterReceiver(globalReceiver);
            this.mGlobalReceiver = null;
        }
        getContentResolver().unregisterContentObserver(this.mContentObserver);
    }
}
