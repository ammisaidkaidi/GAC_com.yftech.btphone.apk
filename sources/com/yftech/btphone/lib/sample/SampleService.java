package com.yftech.btphone.lib.sample;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.core.internal.view.SupportMenu;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleService extends Service {
    protected String TAG = "SampleService";

    /* JADX INFO: Access modifiers changed from: protected */
    public void init() {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.TAG = getClass().getSimpleName();
        log("onCreate");
        setForegroundService(this);
        init();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        log("onStartCommand:" + i);
        setForegroundService(this);
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        release();
        super.onDestroy();
    }

    protected void release() {
        log("release");
    }

    protected void log(String str) {
        Log.i(this.TAG, str);
    }

    public void setForegroundService(Service service) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("CHANNEL_BLUETOOTH_CLIENT_ID", "CHANNEL_BLUETOOTH_CLIENT_ID", 2);
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannel.setShowBadge(true);
            notificationChannel.setLockscreenVisibility(1);
            ((NotificationManager) getSystemService("notification")).createNotificationChannel(notificationChannel);
        }
        Notification build = new Notification.Builder(this).setChannelId("CHANNEL_BLUETOOTH_CLIENT_ID").setTicker("Nature").setSmallIcon(R.drawable.star_on).setContentIntent(PendingIntent.getActivity(this, 0, new Intent("com.android.action.service.sample"), 0)).build();
        build.flags |= 32;
        startForeground(1, build);
    }
}
