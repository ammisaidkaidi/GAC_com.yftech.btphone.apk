package com.yftech.btphone.contract;

import android.bluetooth.BluetoothDevice;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ISearchView {
    void onBluetoothContactsListChanged(List<Contacts> list);

    void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i);

    void onBluetoothStateChanged(int i);
}
