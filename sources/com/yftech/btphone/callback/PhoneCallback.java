package com.yftech.btphone.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import com.yftech.btphone.lib.callback.SampleBluetoothPhoneCallCallback;
import com.yftech.btphone.proxy.TBoxViewManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhoneCallback extends SampleBluetoothPhoneCallCallback {
    public PhoneCallback(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.lib.callback.SampleBluetoothPhoneCallCallback
    public void onHfpStateChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onHfpStateChanged(bluetoothDevice, i);
    }

    @Override // com.yftech.btphone.lib.callback.SampleBluetoothPhoneCallCallback
    public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
        super.onBluetoothPhoneCallStateChanged(list);
        TBoxViewManager.getInstance().checkAudio(2);
    }
}
