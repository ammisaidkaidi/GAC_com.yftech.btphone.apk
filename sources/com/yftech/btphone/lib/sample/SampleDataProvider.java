package com.yftech.btphone.lib.sample;

import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;
import android.util.Log;
import com.yftech.btphone.lib.bean.Device;
import com.yftech.btphone.lib.listener.IDataProviderProxy;
import com.yftech.btphone.lib.utils.Configuration;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleDataProvider implements IDataProviderProxy {
    public static final int DEVICE_TYPE_CONNECT = 2;
    public static final int DEVICE_TYPE_PAIRED = 0;
    public static final int DEVICE_TYPE_UNPAIRED = 1;
    protected String TAG;
    public ArrayList<Device> mUnpairedDevices = new ArrayList<>();
    public ArrayList<Device> mPairedDevices = new ArrayList<>();
    protected ArrayList<Contacts> mContacts = new ArrayList<>();
    protected ArrayList<Contacts> mFavorContacts = new ArrayList<>();
    protected ArrayList<PhoneCall> mPhoneCalls = new ArrayList<>();
    protected ArrayList<CallLog> mCallLogs = new ArrayList<>();
    protected BluetoothDevice mRequestPairDevice = null;
    protected String mForegroundCls = "";

    public SampleDataProvider() {
        this.TAG = "SampleDataProvider";
        this.TAG = getClass().getSimpleName();
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void init() {
        initPhoneCall();
        updateDevices(0, CarBluetoothManager.getInstance().getPairedDevices());
        updateDevices(1, CarBluetoothManager.getInstance().getUnpairedDevices());
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void initPhoneCall() {
        PhoneCall phoneCall = new PhoneCall();
        phoneCall.setDisplayName("");
        phoneCall.setCallNumber("10086");
        phoneCall.setCallState(4);
        this.mPhoneCalls.add(phoneCall);
        updatePhoneCalls(CarBluetoothManager.getInstance().getPhoneCalls());
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public BluetoothDevice getRequestPairDevice() {
        return this.mRequestPairDevice;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void setRequestPairDevice(BluetoothDevice bluetoothDevice) {
        this.mRequestPairDevice = bluetoothDevice;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public ArrayList<Contacts> getContacts() {
        ArrayList<Contacts> arrayList;
        synchronized (this.mContacts) {
            arrayList = this.mContacts;
        }
        return arrayList;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public ArrayList<Contacts> getFavorContacts() {
        ArrayList<Contacts> arrayList;
        synchronized (this.mFavorContacts) {
            arrayList = this.mFavorContacts;
        }
        return arrayList;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public ArrayList<CallLog> getCallLogs() {
        return this.mCallLogs;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void resetData() {
        resetHfpData();
        synchronized (this.mUnpairedDevices) {
            this.mUnpairedDevices.clear();
            this.mPairedDevices.clear();
        }
        setRequestPairDevice(null);
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void resetHfpData() {
        Log.i(this.TAG, "resetHfpData: ");
        updateContactsList(new ArrayList());
        updateCallLog(new ArrayList());
        updatePhoneCalls(new ArrayList());
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public ArrayList<Device> getDevice(int i) {
        ArrayList<Device> arrayList;
        ArrayList<Device> arrayList2;
        if (i == 0) {
            synchronized (this.mPairedDevices) {
                arrayList2 = this.mPairedDevices;
            }
            return arrayList2;
        }
        if (1 != i) {
            return null;
        }
        synchronized (this.mUnpairedDevices) {
            arrayList = this.mUnpairedDevices;
        }
        return arrayList;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void updateDevices(int i, List<BluetoothDevice> list) {
        if (i == 0) {
            synchronized (this.mPairedDevices) {
                this.mPairedDevices.clear();
                if (list != null && !list.isEmpty()) {
                    for (BluetoothDevice bluetoothDevice : list) {
                        Device device = new Device();
                        device.setDevice(bluetoothDevice);
                        int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 16);
                        int deviceConnectState2 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 12);
                        device.setProfileState(16, deviceConnectState);
                        device.setProfileState(12, deviceConnectState2);
                        this.mPairedDevices.add(device);
                    }
                }
            }
            return;
        }
        if (1 == i) {
            synchronized (this.mUnpairedDevices) {
                this.mUnpairedDevices.clear();
                if (list != null && !list.isEmpty()) {
                    for (BluetoothDevice bluetoothDevice2 : list) {
                        Device device2 = new Device();
                        device2.setDevice(bluetoothDevice2);
                        if (TextUtils.isEmpty(device2.getName())) {
                            Log.w(this.TAG, "updateDevices, but device name is null, ignore:" + bluetoothDevice2);
                        } else {
                            this.mUnpairedDevices.add(device2);
                        }
                    }
                }
                Log.d(this.TAG, "updateDevices, unpaired:" + this.mUnpairedDevices.size());
            }
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public Device getDeviceFromConnect(BluetoothDevice bluetoothDevice) {
        synchronized (this.mUnpairedDevices) {
            Iterator<Device> it = this.mPairedDevices.iterator();
            while (it.hasNext()) {
                Device next = it.next();
                if (next.getDevice().equals(bluetoothDevice)) {
                    return next;
                }
            }
            return null;
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public Device getConnectDevice() {
        synchronized (this.mPairedDevices) {
            Iterator<Device> it = this.mPairedDevices.iterator();
            while (it.hasNext()) {
                Device next = it.next();
                if (next.isConnected()) {
                    return next;
                }
            }
            return null;
        }
    }

    public Device getConnectDevice(int i) {
        synchronized (this.mPairedDevices) {
            Iterator<Device> it = this.mPairedDevices.iterator();
            while (it.hasNext()) {
                Device next = it.next();
                if (next.getHfpState() == i || next.getAvrcpState() == i) {
                    return next;
                }
            }
            return null;
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void deleteUnpairedDevice(BluetoothDevice bluetoothDevice) {
        synchronized (this.mUnpairedDevices) {
            Iterator<Device> it = this.mUnpairedDevices.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Device next = it.next();
                if (next.equals(bluetoothDevice)) {
                    this.mUnpairedDevices.remove(next);
                    Log.w(this.TAG, "deleteUnpairedDevice, find device: " + next);
                    break;
                }
            }
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public Device updateProfileState(BluetoothDevice bluetoothDevice, int i, int i2) {
        if (bluetoothDevice == null) {
            Log.d(this.TAG, "updateProfileState: bluetoothDevice is null");
            return null;
        }
        Log.d(this.TAG, "updateProfileState: profile:" + i + ",state:" + i2 + ",bluetoothDevice:" + bluetoothDevice);
        synchronized (this.mPairedDevices) {
            Iterator<Device> it = this.mPairedDevices.iterator();
            while (it.hasNext()) {
                Device next = it.next();
                if (next.getDevice().equals(bluetoothDevice)) {
                    next.setProfileState(i, i2);
                    Log.i(this.TAG, "updateProfileState#: " + next);
                    return next;
                }
            }
            return null;
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public List<PhoneCall> getPhoneCalls() {
        return this.mPhoneCalls;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void updatePhoneCalls(List<PhoneCall> list) {
        synchronized (this.mPhoneCalls) {
            this.mPhoneCalls.clear();
            if (list != null && !list.isEmpty()) {
                if (1 == list.size()) {
                    this.mPhoneCalls.addAll(list);
                } else {
                    for (PhoneCall phoneCall : list) {
                        if (7 != phoneCall.getCallState()) {
                            this.mPhoneCalls.add(phoneCall);
                        }
                    }
                }
            }
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public boolean isExistValidPhone() {
        if (CarBluetoothManager.getInstance().getEnableState() != 12) {
            Log.e(this.TAG, "isExistValidPhone: BT not STATE_ON !!!!");
            return false;
        }
        synchronized (this.mPhoneCalls) {
            Iterator<PhoneCall> it = this.mPhoneCalls.iterator();
            while (it.hasNext()) {
                if (7 != it.next().getCallState()) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public boolean hasMulPhoneCall() {
        boolean z;
        synchronized (this.mPhoneCalls) {
            z = true;
            if (this.mPhoneCalls.size() <= 1) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public PhoneCall getStatePhoneCall(int i) {
        synchronized (this.mPhoneCalls) {
            Iterator<PhoneCall> it = this.mPhoneCalls.iterator();
            while (it.hasNext()) {
                PhoneCall next = it.next();
                if (i == next.getCallState()) {
                    return next;
                }
            }
            return null;
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public int updateContactsList(Contacts contacts, boolean z) {
        int findPosition;
        synchronized (this.mContacts) {
            findPosition = findPosition(contacts, this.mContacts);
            if (findPosition >= 0) {
                Log.i(this.TAG, "updateContactsList, find position:" + findPosition + ", contacts:" + contacts);
                this.mContacts.get(findPosition).setCollect(z);
            } else {
                Log.i(this.TAG, "updateContactsList, but not find, state:" + z + ", contacts:" + contacts);
            }
        }
        return findPosition;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void updateContactsList(List<Contacts> list) {
        synchronized (this.mContacts) {
            this.mContacts.clear();
            this.mFavorContacts.clear();
            if (list != null && !list.isEmpty()) {
                this.mContacts.addAll(list);
                Iterator<Contacts> it = this.mContacts.iterator();
                while (it.hasNext()) {
                    Contacts next = it.next();
                    if (next.isCollect()) {
                        addFavorContactsList(next);
                    } else if (isContainsFavorContactsList(next)) {
                        next.setCollect(true);
                    }
                }
            }
            Log.i(this.TAG, "updateContactsList, mFavorContacts.size:" + this.mFavorContacts.size());
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public int updateFavorContactsList(Contacts contacts, boolean z) {
        int i;
        synchronized (this.mFavorContacts) {
            i = -1;
            if (z) {
                if (!addFavorContactsList(contacts)) {
                    i = this.mFavorContacts.indexOf(contacts);
                }
            } else {
                i = this.mFavorContacts.indexOf(contacts);
                if (i >= 0 && this.mFavorContacts.remove(i) == null) {
                    Log.w(this.TAG, "updateFavorContactsList, but not find, state:" + z + ", contacts:" + contacts);
                }
            }
        }
        return i;
    }

    private boolean addFavorContactsList(Contacts contacts) {
        boolean z;
        boolean z2;
        synchronized (this.mFavorContacts) {
            Iterator<Contacts> it = this.mFavorContacts.iterator();
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                Contacts next = it.next();
                if (contacts.getName().equals(next.getName()) && contacts.getNumber().equals(next.getNumber())) {
                    z2 = true;
                    break;
                }
            }
            if (!isContainsFavorContactsList(contacts)) {
                this.mFavorContacts.add(contacts);
            } else {
                Log.w(this.TAG, "addFavorContactsList, add already, contacts:" + contacts);
            }
            if (z2) {
                z = false;
            }
        }
        return z;
    }

    private boolean isContainsFavorContactsList(Contacts contacts) {
        if (this.mFavorContacts.contains(contacts)) {
            return true;
        }
        Iterator<Contacts> it = this.mFavorContacts.iterator();
        while (it.hasNext()) {
            Contacts next = it.next();
            if (contacts.getName().equals(next.getName()) && contacts.getNumber().equals(next.getNumber())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public int findPosition(Contacts contacts, List<Contacts> list) {
        for (int i = 0; i < list.size(); i++) {
            if (isSameContacts(list.get(i), contacts)) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public boolean isSameContacts(Contacts contacts, Contacts contacts2) {
        return (contacts == null || contacts2 == null || !contacts.getLabel().equals(contacts2.getLabel())) ? false : true;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void updateCallLog(List<CallLog> list) {
        synchronized (this.mCallLogs) {
            this.mCallLogs.clear();
            if (list != null && !list.isEmpty()) {
                this.mCallLogs.addAll(list);
            }
        }
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public void setForegroundCls(String str) {
        this.mForegroundCls = str;
    }

    @Override // com.yftech.btphone.lib.listener.IDataProviderProxy
    public boolean isCarlifeForeground() {
        return this.mForegroundCls.contains(Configuration.PKG_CARLIFE);
    }
}
