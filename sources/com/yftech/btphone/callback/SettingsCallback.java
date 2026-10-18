package com.yftech.btphone.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import com.yftech.btphone.lib.callback.SampleBluetoothSettingsCallback;
import com.yftech.btphone.lib.sample.SampleApplication;

/* loaded from: /home/user/work/dex/classes.dex */
public class SettingsCallback extends SampleBluetoothSettingsCallback {
    public SettingsCallback(Context context) {
        super(context);
    }

    @Override // com.yftech.btphone.lib.callback.SampleBluetoothSettingsCallback
    protected void onDisconnectReason(BluetoothDevice bluetoothDevice, int i, int i2) {
        if (i == 0 && 10 == bluetoothDevice.getBondState() && 3 == i2) {
            log("onBluetoothConnectStateChangedEx, ignore");
        } else if (i == 0 && 1 == i2) {
            log("onBluetoothConnectStateChangedEx, ignore");
        } else {
            SampleApplication.getInstance().getWindowManager().updateConnectionState(bluetoothDevice, 4096, 0, i2);
        }
    }
}
