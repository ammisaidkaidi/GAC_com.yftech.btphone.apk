package com.yftech.btphone.lib.listener;

import android.bluetooth.BluetoothDevice;
import com.yftech.btphone.lib.bean.Device;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IDataProviderProxy {
    void deleteUnpairedDevice(BluetoothDevice bluetoothDevice);

    int findPosition(Contacts contacts, List<Contacts> list);

    ArrayList<CallLog> getCallLogs();

    Device getConnectDevice();

    ArrayList<Contacts> getContacts();

    ArrayList<Device> getDevice(int i);

    Device getDeviceFromConnect(BluetoothDevice bluetoothDevice);

    ArrayList<Contacts> getFavorContacts();

    List<PhoneCall> getPhoneCalls();

    BluetoothDevice getRequestPairDevice();

    PhoneCall getStatePhoneCall(int i);

    boolean hasMulPhoneCall();

    void init();

    void initPhoneCall();

    boolean isCarlifeForeground();

    boolean isExistValidPhone();

    boolean isSameContacts(Contacts contacts, Contacts contacts2);

    void resetData();

    void resetHfpData();

    void setForegroundCls(String str);

    void setRequestPairDevice(BluetoothDevice bluetoothDevice);

    void updateCallLog(List<CallLog> list);

    int updateContactsList(Contacts contacts, boolean z);

    void updateContactsList(List<Contacts> list);

    void updateDevices(int i, List<BluetoothDevice> list);

    int updateFavorContactsList(Contacts contacts, boolean z);

    void updatePhoneCalls(List<PhoneCall> list);

    Device updateProfileState(BluetoothDevice bluetoothDevice, int i, int i2);
}
