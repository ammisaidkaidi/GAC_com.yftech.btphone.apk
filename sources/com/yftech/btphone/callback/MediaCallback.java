package com.yftech.btphone.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import com.yftech.btphone.lib.callback.SampleBluetoothMediaCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaCallback extends SampleBluetoothMediaCallback {
    public MediaCallback(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.lib.callback.SampleBluetoothMediaCallback
    public void onAvrcpStateChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onAvrcpStateChanged(bluetoothDevice, i);
    }
}
