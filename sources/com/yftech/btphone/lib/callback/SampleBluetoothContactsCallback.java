package com.yftech.btphone.lib.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.yftech.btphone.lib.listener.IBluetoothContactsListener;
import com.yftech.btphone.lib.sample.SampleApplication;
import com.yftech.car.bluetooth.callback.CarBluetoothContactsCallback;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleBluetoothContactsCallback extends CarBluetoothContactsCallback {
    protected Context mContext;
    protected String TAG = "SampleBluetoothContactsCallback";
    protected Collection<IBluetoothContactsListener> mListeners = Collections.synchronizedCollection(new ArrayList());

    public SampleBluetoothContactsCallback(Context context) {
        this.mContext = context;
    }

    public void registerListener(IBluetoothContactsListener iBluetoothContactsListener) {
        synchronized (this.mListeners) {
            if (!this.mListeners.contains(iBluetoothContactsListener)) {
                this.mListeners.add(iBluetoothContactsListener);
            }
        }
    }

    public void unregisterListener(IBluetoothContactsListener iBluetoothContactsListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(iBluetoothContactsListener);
        }
    }

    public void onBluetoothContactsListChanged(List<Contacts> list) {
        super.onBluetoothContactsListChanged(list);
        log("onBluetoothContactsListChanged");
        onContactsListChanged(list);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothContactsListChanged(list);
            }
        }
    }

    protected void onContactsListChanged(List<Contacts> list) {
        SampleApplication.getInstance().getDataProviderManager().updateContactsList(list);
    }

    public void onBluetoothCallLogListChanged(List<CallLog> list) {
        super.onBluetoothCallLogListChanged(list);
        log("onBluetoothCallLogListChanged");
        onCallLogListChanged(list);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothCallLogListChanged(list);
            }
        }
    }

    protected void onCallLogListChanged(List<CallLog> list) {
        SampleApplication.getInstance().getDataProviderManager().updateCallLog(list);
    }

    public void onBluetoothCallLogDownloadStateChanged(int i) {
        super.onBluetoothCallLogDownloadStateChanged(i);
        log("onBluetoothCallLogDownloadStateChanged:" + i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothCallLogDownloadStateChanged(i);
            }
        }
    }

    public void onBluetoothContactsDownloadStateChanged(int i) {
        super.onBluetoothContactsDownloadStateChanged(i);
        log("onBluetoothContactsDownloadStateChanged:" + i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothContactsDownloadStateChanged(i);
            }
        }
    }

    public void onBluetoothCallLogDownloadPositionChanged(int i, int i2) {
        super.onBluetoothCallLogDownloadPositionChanged(i, i2);
        log("onBluetoothCallLogDownloadPositionChanged:" + i + "-" + i2);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothCallLogDownloadPositionChanged(i, i2);
            }
        }
    }

    public void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
        super.onBluetoothContactsDownloadPositionChanged(i, i2);
        log("onBluetoothCallLogDownloadPositionChanged:" + i + "-" + i2);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothContactsDownloadPositionChanged(i, i2);
            }
        }
    }

    public void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onBluetoothPbapConnectStatusChanged(bluetoothDevice, i);
        log("onBluetoothPbapConnectStatusChanged:" + i + ",bluetoothDevice:" + bluetoothDevice);
        onPbapStatusChanged(bluetoothDevice, i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothContactsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothPbapConnectStatusChanged(bluetoothDevice, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPbapStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        SampleApplication.getInstance().getDataProviderManager().updateProfileState(bluetoothDevice, 17, i);
        SampleApplication.getInstance().getWindowManager().updateConnectionState(bluetoothDevice, 17, i, -1);
    }

    protected void log(String str) {
        Log.d(this.TAG, str);
    }
}
