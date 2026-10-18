package com.yftech.btphone.lib.listener;

import android.bluetooth.BluetoothDevice;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothContactsListener {
    default void onBluetoothCallLogDownloadPositionChanged(int i, int i2) {
    }

    default void onBluetoothCallLogDownloadStateChanged(int i) {
    }

    default void onBluetoothCallLogListChanged(List<CallLog> list) {
    }

    default void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
    }

    default void onBluetoothContactsDownloadStateChanged(int i) {
    }

    default void onBluetoothContactsListChanged(List<Contacts> list) {
    }

    default void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
    }
}
