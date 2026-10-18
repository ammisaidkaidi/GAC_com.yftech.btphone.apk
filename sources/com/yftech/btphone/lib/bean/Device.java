package com.yftech.btphone.lib.bean;

import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class Device implements Comparable<Device> {
    private BluetoothDevice mDevice;
    private int mHfpState = 0;
    private int mAvrcpState = 0;
    private int mPbapState = 0;

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    public void setProfileState(int i, int i2) {
        if (16 == i) {
            setHfpState(i2);
        } else if (12 == i) {
            setAvrcpState(i2);
        } else if (17 == i) {
            setPbapState(i2);
        }
    }

    public int getHfpState() {
        return this.mHfpState;
    }

    public void setHfpState(int i) {
        this.mHfpState = i;
    }

    public int getAvrcpState() {
        return this.mAvrcpState;
    }

    public void setAvrcpState(int i) {
        this.mAvrcpState = i;
    }

    public int getPbapState() {
        return this.mPbapState;
    }

    public void setPbapState(int i) {
        this.mPbapState = i;
    }

    public boolean isConnected() {
        return isHfpConnected() || isAvrcpConnected();
    }

    public boolean isHfpConnected() {
        return 2 == getHfpState();
    }

    public boolean isAvrcpConnected() {
        return 2 == getAvrcpState();
    }

    public boolean isBond() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        return bluetoothDevice != null && 12 == bluetoothDevice.getBondState();
    }

    public String getName() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice == null) {
            return "";
        }
        String name = bluetoothDevice.getName();
        return TextUtils.isEmpty(name) ? this.mDevice.getAddress() : name;
    }

    public boolean equals(Object obj) {
        BluetoothDevice bluetoothDevice;
        if (obj != null && (bluetoothDevice = this.mDevice) != null) {
            if (obj instanceof Device) {
                return bluetoothDevice.equals(((Device) obj).getDevice());
            }
            if (obj instanceof BluetoothDevice) {
                return bluetoothDevice.equals(obj);
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(Device device) {
        if (isConnected()) {
            return -1;
        }
        return device.isConnected() ? 1 : 0;
    }

    public String toString() {
        return "device:" + getDevice() + ",hfp:" + getHfpState() + ",avrcp:" + getAvrcpState() + ",pbap:" + getPbapState();
    }
}
