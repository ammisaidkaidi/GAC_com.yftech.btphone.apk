package com.yftech.btphone.lib.listener;

import android.bluetooth.BluetoothDevice;
import com.yftech.car.bluetooth.model.Indicator;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothPhoneCallListener {
    default void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
    }

    default void onBluetoothIndicatorChanged(Indicator indicator) {
    }

    default void onBluetoothPhoneCallAudioStateChanged(boolean z) {
    }

    default void onBluetoothPhoneCallMicStateChanged(boolean z) {
    }

    default void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
    }

    default void onBluetoothStateChanged(int i) {
    }
}
