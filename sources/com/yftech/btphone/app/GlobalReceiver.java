package com.yftech.btphone.app;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.yftech.btphone.lib.sample.SampleGlobalReceiver;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.proxy.TBoxViewManager;
import com.yftech.vehicle.internal.adapter.ICarTBox;
import com.yftech.vehicle.sdk.CarMiscManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class GlobalReceiver extends SampleGlobalReceiver {
    private static final String KEY_AIR_CONTROL_SHOW = "air_control_show";
    private static final String VALUE_AIR_CONTROL_SHOW = "isShow";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.lib.sample.SampleGlobalReceiver
    public void onActivityStateChanged(String str, String str2, String str3) {
        super.onActivityStateChanged(str, str2, str3);
        if (SampleGlobalReceiver.BACKGROUND.equals(str3)) {
            BluetoothApplication.getInstance().getWindowManager().closeAllToast();
            BluetoothApplication.getInstance().getWindowManager().hideConnectFailed();
        }
        if (SampleGlobalReceiver.FOREGROUND.equals(str3)) {
            if (str2.equals("com.yftech.yfhome.view.HomeActivity") || str2.equals("com.android.systemui.applist.activity.AppListActivity")) {
                AppManager.getAppManager().finishActivity(MainActivity.class);
            }
        }
    }

    @Override // com.yftech.btphone.lib.sample.SampleGlobalReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        if (intent.getAction().equals(KEY_AIR_CONTROL_SHOW)) {
            if (intent.getBooleanExtra(VALUE_AIR_CONTROL_SHOW, false)) {
                Log.i(this.TAG, "onReceive: KEY_AIR_CONTROL_SHOW ");
                AppManager.getAppManager().finishActivity(CallActivity.class);
                BluetoothApplication.getInstance().getPhoneCallWindowManager().sendMessageCheckPhoneWindow(true, false);
                return;
            }
            return;
        }
        if (Config.ACTION_ECALL_COMMAND.equals(intent.getAction())) {
            int intExtra = intent.getIntExtra(Config.KEY_ECALL, -1);
            Log.i(this.TAG, "onReceive, ACTION_ECALL_COMMAND: " + intExtra);
            TBoxViewManager.getInstance().updateEcallState(ICarTBox.PhoneCallState.valueOf(intExtra), CarMiscManager.get().getTBoxECallState());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.lib.sample.SampleGlobalReceiver
    public void exit() {
        super.exit();
        AppManager.getAppManager().finishActivity(MainActivity.class);
        AppManager.getAppManager().finishActivity(SearchActivity.class);
    }
}
