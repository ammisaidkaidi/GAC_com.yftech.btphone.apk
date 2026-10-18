package com.yftech.btphone.bean;

import android.bluetooth.BluetoothDevice;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class BTDevice {
    String mAddress = "";
    String mName = "";

    public void setDevice(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return;
        }
        setAddress(bluetoothDevice.getAddress());
        setName(bluetoothDevice.getName());
    }

    public void reset() {
        this.mAddress = "";
        this.mName = "";
    }

    public String getAddress() {
        return this.mAddress;
    }

    public void setAddress(String str) {
        this.mAddress = str;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public boolean equalsDevice(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return false;
        }
        try {
            return bluetoothDevice.getAddress().equals(getAddress());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int hashCode() {
        return Objects.hash(this.mAddress, this.mName);
    }

    public String toString() {
        return "BTDevice{mAddress='" + this.mAddress + "', mName='" + this.mName + "'}";
    }
}
