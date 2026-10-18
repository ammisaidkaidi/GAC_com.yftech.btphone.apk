package com.yftech.btphone.lib.listener;

import android.bluetooth.BluetoothDevice;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothSettingsListener {
    default void onBluetoothAutoAcceptPhoneCallStateChanged(boolean z) {
    }

    default void onBluetoothAutoConnectStateChanged(boolean z) {
    }

    default void onBluetoothAutoDownloadCallLogStateChanged(boolean z) {
    }

    default void onBluetoothAutoDownloadContactsStateChanged(boolean z) {
    }

    default void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
    }

    default void onBluetoothDeviceBandStateChanged(BluetoothDevice bluetoothDevice, int i) {
    }

    default void onBluetoothDisconnectReason(BluetoothDevice bluetoothDevice, int i) {
    }

    default void onBluetoothDiscoveryStateChanged(int i, int i2) {
    }

    default void onBluetoothNameChanged(String str) {
    }

    default void onBluetoothPairedListChanged(List<BluetoothDevice> list) {
    }

    default void onBluetoothScanModeChanged(int i) {
    }

    default void onBluetoothScanningStateChanged(boolean z) {
    }

    default void onBluetoothStateChanged(int i) {
    }

    default void onBluetoothUnpairedListChanged(List<BluetoothDevice> list) {
    }
}
