package com.yftech.btphone.lib.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.yftech.btphone.lib.listener.IBluetoothMediaListener;
import com.yftech.btphone.lib.sample.SampleApplication;
import com.yftech.car.bluetooth.callback.CarBluetoothMusicCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleBluetoothMediaCallback extends CarBluetoothMusicCallback {
    protected Context mContext;
    protected String TAG = "SampleBluetoothMediaCallback";
    protected Collection<IBluetoothMediaListener> mListeners = Collections.synchronizedCollection(new ArrayList());

    public SampleBluetoothMediaCallback(Context context) {
        this.mContext = context;
    }

    public void registerListener(IBluetoothMediaListener iBluetoothMediaListener) {
        synchronized (this.mListeners) {
            if (!this.mListeners.contains(iBluetoothMediaListener)) {
                this.mListeners.add(iBluetoothMediaListener);
            }
        }
    }

    public void unregisterListener(IBluetoothMediaListener iBluetoothMediaListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(iBluetoothMediaListener);
        }
    }

    public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onBluetoothAvrcpConnectStateChanged(bluetoothDevice, i);
        log("onBluetoothAvrcpConnectStateChanged:" + bluetoothDevice + ", state:" + i);
        onAvrcpStateChanged(bluetoothDevice, i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothMediaListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothAvrcpConnectStateChanged(bluetoothDevice, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAvrcpStateChanged(BluetoothDevice bluetoothDevice, int i) {
        SampleApplication.getInstance().getDataProviderManager().updateProfileState(bluetoothDevice, 12, i);
        SampleApplication.getInstance().getWindowManager().updateConnectionState(bluetoothDevice, 12, i, -1);
    }

    protected void log(String str) {
        Log.d(this.TAG, str);
    }
}
