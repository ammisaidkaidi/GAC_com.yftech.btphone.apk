package com.yftech.btphone.contract;

import android.bluetooth.BluetoothDevice;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMainView {
    void onBluetoothCallLogDownloadPositionChanged(int i, int i2);

    void onBluetoothCallLogDownloadStateChanged(int i);

    void onBluetoothCallLogListChanged(List<CallLog> list);

    void onBluetoothContactsDownloadPositionChanged(int i, int i2);

    void onBluetoothContactsDownloadStateChanged(int i);

    void onBluetoothContactsListChanged(List<Contacts> list);

    void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i);

    void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i);

    void onBluetoothStateChanged(int i);
}
