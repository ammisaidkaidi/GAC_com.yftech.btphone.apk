package com.yftech.btphone.lib.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.yftech.btphone.lib.listener.IBluetoothSettingsListener;
import com.yftech.btphone.lib.sample.SampleApplication;
import com.yftech.car.bluetooth.callback.CarBluetoothSettingsCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleBluetoothSettingsCallback extends CarBluetoothSettingsCallback {
    protected Context mContext;
    protected String TAG = "SampleBluetoothSettingsCallback";
    protected Collection<IBluetoothSettingsListener> mListeners = Collections.synchronizedCollection(new ArrayList());

    public SampleBluetoothSettingsCallback(Context context) {
        this.mContext = context;
    }

    public void registerListener(IBluetoothSettingsListener iBluetoothSettingsListener) {
        synchronized (this.mListeners) {
            if (!this.mListeners.contains(iBluetoothSettingsListener)) {
                this.mListeners.add(iBluetoothSettingsListener);
            }
        }
    }

    public void unregisterListener(IBluetoothSettingsListener iBluetoothSettingsListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(iBluetoothSettingsListener);
        }
    }

    public void onBluetoothStateChanged(int i) {
        super.onBluetoothStateChanged(i);
        log("onBluetoothStateChanged:" + i);
        onStateChanged(i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothStateChanged(i);
            }
        }
    }

    protected void onStateChanged(int i) {
        if (10 == i) {
            SampleApplication.getInstance().getDataProviderManager().resetData();
        }
    }

    public void onBluetoothScanModeChanged(int i) {
        super.onBluetoothScanModeChanged(i);
        log("onBluetoothScanModeChanged:" + i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothScanModeChanged(i);
            }
        }
    }

    public void onBluetoothDeviceBandStateChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onBluetoothDeviceBandStateChanged(bluetoothDevice, i);
        log("onBluetoothDeviceBandStateChanged:" + i);
        onBondStateChanged(bluetoothDevice, i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothDeviceBandStateChanged(bluetoothDevice, i);
            }
        }
    }

    protected void onBondStateChanged(BluetoothDevice bluetoothDevice, int i) {
        SampleApplication.getInstance().getDataProviderManager().deleteUnpairedDevice(bluetoothDevice);
        if (10 == i) {
            SampleApplication.getInstance().getWindowManager().hidePairWindow();
            SampleApplication.getInstance().getDataProviderManager().setRequestPairDevice(null);
        } else if (11 == i) {
            SampleApplication.getInstance().getDataProviderManager().setRequestPairDevice(bluetoothDevice);
        } else if (12 == i) {
            SampleApplication.getInstance().getWindowManager().hidePairWindow();
            SampleApplication.getInstance().getDataProviderManager().setRequestPairDevice(null);
        }
    }

    public void onBluetoothPairedListChanged(List<BluetoothDevice> list) {
        super.onBluetoothPairedListChanged(list);
        log("onBluetoothPairedListChanged:");
        onPairedListChanged(list);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothPairedListChanged(list);
            }
        }
    }

    protected void onPairedListChanged(List<BluetoothDevice> list) {
        SampleApplication.getInstance().getDataProviderManager().updateDevices(0, list);
    }

    public void onBluetoothUnpairedListChanged(List<BluetoothDevice> list) {
        super.onBluetoothUnpairedListChanged(list);
        log("onBluetoothUnpairedListChanged:" + list.size());
        onUnpairedListChanged(list);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothUnpairedListChanged(list);
            }
        }
    }

    protected void onUnpairedListChanged(List<BluetoothDevice> list) {
        SampleApplication.getInstance().getDataProviderManager().updateDevices(1, list);
    }

    public void onBluetoothScanningStateChanged(boolean z) {
        super.onBluetoothScanningStateChanged(z);
        log("onBluetoothScanningStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothScanningStateChanged(z);
            }
        }
    }

    public void onBluetoothDiscoveryStateChanged(int i, int i2) {
        super.onBluetoothDiscoveryStateChanged(i, i2);
        log("onBluetoothDiscoveryStateChanged:" + i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothDiscoveryStateChanged(i, i2);
            }
        }
    }

    public void onBluetoothAutoDownloadContactsStateChanged(boolean z) {
        super.onBluetoothAutoDownloadContactsStateChanged(z);
        log("onBluetoothAutoDownloadContactsStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothAutoDownloadContactsStateChanged(z);
            }
        }
    }

    public void onBluetoothAutoDownloadCallLogStateChanged(boolean z) {
        super.onBluetoothAutoDownloadCallLogStateChanged(z);
        log("onBluetoothAutoDownloadCallLogStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothAutoDownloadCallLogStateChanged(z);
            }
        }
    }

    public void onBluetoothAutoAcceptPhoneCallStateChanged(boolean z) {
        super.onBluetoothAutoAcceptPhoneCallStateChanged(z);
        log("onBluetoothAutoAcceptPhoneCallStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothAutoAcceptPhoneCallStateChanged(z);
            }
        }
    }

    public void onBluetoothAutoConnectStateChanged(boolean z) {
        super.onBluetoothAutoConnectStateChanged(z);
        log("onBluetoothAutoConnectStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothAutoConnectStateChanged(z);
            }
        }
    }

    public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onBluetoothConnectStateChanged(bluetoothDevice, i);
        log("onBluetoothConnectStateChanged:" + i + "，" + bluetoothDevice);
        onConnectStateChanged(bluetoothDevice, i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothConnectStateChanged(bluetoothDevice, i);
            }
        }
    }

    public void onBluetoothConnectStateChangedEx(BluetoothDevice bluetoothDevice, int i, int i2) {
        super.onBluetoothConnectStateChangedEx(bluetoothDevice, i, i2);
        log("onBluetoothConnectStateChanged,state:" + i + ",bluetooth:," + bluetoothDevice + ",reason:" + i2);
        onDisconnectReason(bluetoothDevice, i, i2);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothDisconnectReason(bluetoothDevice, i2);
            }
        }
    }

    public void onBluetoothNameChanged(String str) {
        super.onBluetoothNameChanged(str);
        synchronized (this.mListeners) {
            Iterator<IBluetoothSettingsListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothNameChanged(str);
            }
        }
    }

    protected void onConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        SampleApplication.getInstance().getWindowManager().updateConnectionState(bluetoothDevice, 4096, i, -1);
    }

    protected void onDisconnectReason(BluetoothDevice bluetoothDevice, int i, int i2) {
        if (i == 0) {
            log("onDisconnectReason, ignore");
        } else {
            SampleApplication.getInstance().getWindowManager().updateConnectionState(bluetoothDevice, 4096, 0, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void log(String str) {
        Log.d(getClass().getSimpleName(), str);
    }
}
