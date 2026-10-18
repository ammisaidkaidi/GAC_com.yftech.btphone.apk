package com.yftech.btphone.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.lib.callback.SampleBluetoothContactsCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContactsCallback extends SampleBluetoothContactsCallback {
    public static final int MAX_CONTACT = 2000;

    public ContactsCallback(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.lib.callback.SampleBluetoothContactsCallback
    public void onPbapStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onPbapStatusChanged(bluetoothDevice, i);
    }

    @Override // com.yftech.btphone.lib.callback.SampleBluetoothContactsCallback
    public void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
        super.onBluetoothContactsDownloadPositionChanged(i, i2);
        if (i == 2000) {
            Log.e(this.TAG, "onBluetoothContactsDownloadPositionChanged: is over 2000 contacts show tip !!!! total:" + i2);
            BluetoothApplication.getInstance().getWindowManager().showDownloadContactsFull();
        }
    }
}
