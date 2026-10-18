package com.yftech.btphone.lib.listener;

import android.bluetooth.BluetoothDevice;
import android.media.MediaMetadata;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothMediaListener {
    default void onBluetoothA2dpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
    }

    default void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
    }

    default void onBluetoothMediaExit() {
    }

    default void onBluetoothMediaPlaybackStateChanged(boolean z, int i, int i2) {
    }

    default void onBluetoothMediaRepeatModeChanged(int i) {
    }

    default void onBluetoothMediaTrackInfoChanged(MediaMetadata mediaMetadata) {
    }
}
