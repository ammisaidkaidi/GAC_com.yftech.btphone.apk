package com.yftech.btphone.lib.callback;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener;
import com.yftech.btphone.lib.sample.SampleApplication;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.Indicator;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleBluetoothPhoneCallCallback extends CarBluetoothPhoneCallback {
    protected Context mContext;
    protected String TAG = "SampleBluetoothPhoneCallCallback";
    protected Collection<IBluetoothPhoneCallListener> mListeners = Collections.synchronizedCollection(new ArrayList());

    public SampleBluetoothPhoneCallCallback(Context context) {
        this.mContext = context;
    }

    public void registerListener(IBluetoothPhoneCallListener iBluetoothPhoneCallListener) {
        synchronized (this.mListeners) {
            if (!this.mListeners.contains(iBluetoothPhoneCallListener)) {
                this.mListeners.add(iBluetoothPhoneCallListener);
            }
        }
    }

    public void unregisterListener(IBluetoothPhoneCallListener iBluetoothPhoneCallListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(iBluetoothPhoneCallListener);
        }
    }

    public void onBluetoothIndicatorChanged(Indicator indicator) {
        super.onBluetoothIndicatorChanged(indicator);
        log("onBluetoothIndicatorChanged:" + indicator);
        synchronized (this.mListeners) {
            Iterator<IBluetoothPhoneCallListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothIndicatorChanged(indicator);
            }
        }
    }

    public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        super.onBluetoothHfpConnectStatusChanged(bluetoothDevice, i);
        log("onBluetoothHfpConnectStatusChanged:" + i + "," + bluetoothDevice);
        onHfpStateChanged(bluetoothDevice, i);
        synchronized (this.mListeners) {
            Iterator<IBluetoothPhoneCallListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothHfpConnectStatusChanged(bluetoothDevice, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHfpStateChanged(BluetoothDevice bluetoothDevice, int i) {
        if (i == 0 || 1 == i) {
            SampleApplication.getInstance().getDataProviderManager().resetHfpData();
            onPhoneCallChanged(new ArrayList());
        }
        SampleApplication.getInstance().getDataProviderManager().updateProfileState(bluetoothDevice, 16, i);
        SampleApplication.getInstance().getWindowManager().updateConnectionState(bluetoothDevice, 16, i, -1);
    }

    public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
        super.onBluetoothPhoneCallStateChanged(list);
        log("onBluetoothPhoneCallStateChanged, phone size:" + list.size());
        onPhoneCallChanged(list);
        synchronized (this.mListeners) {
            Iterator<IBluetoothPhoneCallListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothPhoneCallStateChanged(list);
            }
        }
    }

    protected void onPhoneCallChanged(List<PhoneCall> list) {
        SampleApplication.getInstance().getDataProviderManager().updatePhoneCalls(list);
        if (list.isEmpty() || (1 == list.size() && 7 == list.get(0).getCallState())) {
            SampleApplication.getInstance().getPhoneCallWindowManager().setShouldShowOSD(true);
            SampleApplication.getInstance().getPhoneCallWindowManager().setShouldShowFull(true);
        }
        if (list.size() > 1) {
            log("############ setShouldShowOSD(false)");
            SampleApplication.getInstance().getPhoneCallWindowManager().setShouldShowOSD(false);
        }
        if (SampleApplication.getInstance().getDataProviderManager().isExistValidPhone()) {
            SampleApplication.getInstance().getWindowManager().hideConnectFailed();
        }
        SampleApplication.getInstance().getPhoneCallWindowManager().sendMessageCheckPhoneWindow(false, false);
    }

    public void onBluetoothPhoneCallAudioStateChanged(boolean z) {
        super.onBluetoothPhoneCallAudioStateChanged(z);
        log("onBluetoothPhoneCallAudioStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothPhoneCallListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothPhoneCallAudioStateChanged(z);
            }
        }
    }

    public void onBluetoothPhoneCallMicStateChanged(boolean z) {
        super.onBluetoothPhoneCallMicStateChanged(z);
        log("onBluetoothPhoneCallMicStateChanged:" + z);
        synchronized (this.mListeners) {
            Iterator<IBluetoothPhoneCallListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onBluetoothPhoneCallMicStateChanged(z);
            }
        }
    }

    protected void log(String str) {
        Log.d(getClass().getSimpleName(), str);
    }
}
