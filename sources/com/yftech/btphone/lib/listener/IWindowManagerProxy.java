package com.yftech.btphone.lib.listener;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWindowManagerProxy {
    default void hideConnectFailed() {
    }

    default void hidePairWindow() {
    }

    default void showCallNumberEmpty(Context context) {
    }

    default void showConnectFailed(BluetoothDevice bluetoothDevice) {
    }

    default void showConnectSuccess(BluetoothDevice bluetoothDevice) {
    }

    default void showConnecting(BluetoothDevice bluetoothDevice) {
    }

    default void showDisconnect(BluetoothDevice bluetoothDevice) {
    }

    default void showDownloadConfirm(BluetoothDevice bluetoothDevice) {
    }

    default void showDownloadFailed(BluetoothDevice bluetoothDevice) {
    }

    default void showPairWindow(Intent intent) {
    }

    default void updateConnectionState(BluetoothDevice bluetoothDevice, int i, int i2, int i3) {
    }
}
