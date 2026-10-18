package com.yftech.btphone.lib.sample;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.yftech.btphone.callback.ContactsCallback;
import com.yftech.btphone.lib.bean.Device;
import com.yftech.btphone.lib.listener.IWindowManagerProxy;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleWindowManager implements IWindowManagerProxy {
    protected String TAG;
    protected final int DELAY_TIME_PBAP_CONFIRM = ContactsCallback.MAX_CONTACT;
    protected final int DELAY_TIME_PBAP_FAILED = 1000;
    protected final int DELAY_TIME_CONNECT_SUCCESS = 1000;
    protected final int MSG_CONNECTED = 2;
    protected final int MSG_DISCONNECTED = 1;
    protected final int MSG_DOWNLOAD_CONFIRM = 3;
    protected final int MSG_DOWNLOAD_FAILED = 4;
    protected Handler mHandler = new Handler() { // from class: com.yftech.btphone.lib.sample.SampleWindowManager.1
        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            super.dispatchMessage(message);
            SampleWindowManager.this.dispatchHandlerMessage(message);
        }
    };

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void hidePairWindow() {
    }

    public SampleWindowManager() {
        this.TAG = "SampleWindowManager";
        this.TAG = getClass().getSimpleName();
    }

    protected void dispatchHandlerMessage(Message message) {
        Log.i(this.TAG, "dispatchMessage: " + message.what);
        if (1 == message.what) {
            showDisconnect((BluetoothDevice) message.obj);
            return;
        }
        if (2 == message.what) {
            showConnectSuccess((BluetoothDevice) message.obj);
        } else if (3 == message.what) {
            showDownloadConfirm((BluetoothDevice) message.obj);
        } else if (4 == message.what) {
            showDownloadFailed((BluetoothDevice) message.obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendMessageDelay(int i, int i2, int i3, int i4, Object obj) {
        Log.i(this.TAG, "sendMessageDelay: " + i);
        Message obtainMessage = this.mHandler.obtainMessage(i);
        obtainMessage.arg2 = i4;
        obtainMessage.arg1 = i3;
        obtainMessage.obj = obj;
        this.mHandler.sendMessageDelayed(obtainMessage, i2);
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void updateConnectionState(BluetoothDevice bluetoothDevice, int i, int i2, int i3) {
        Log.i(this.TAG, "updateConnectionState, profile: " + i + ",state:" + i2 + ",reason:" + i3);
        if (17 == i) {
            this.mHandler.removeMessages(3);
            this.mHandler.removeMessages(4);
            if (i2 == 0) {
                sendMessageDelay(4, 1000, 0, 0, bluetoothDevice);
                return;
            } else if (1 == i2) {
                sendMessageDelay(3, ContactsCallback.MAX_CONTACT, 0, 0, bluetoothDevice);
                return;
            } else {
                if (2 == i2) {
                    this.mHandler.removeMessages(3);
                    return;
                }
                return;
            }
        }
        if (16 == i || 12 == i || 4096 != i) {
            return;
        }
        Device connectDevice = SampleApplication.getInstance().getDataProviderManager().getConnectDevice();
        if (2 == i2) {
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(1);
            hideConnectFailed();
            sendMessageDelay(2, 0, 0, 0, bluetoothDevice);
        }
        if (10 == bluetoothDevice.getBondState() && 3 == i3) {
            Log.i(this.TAG, "updateConnectionState: BluetoothDevice.BOND_NONE == bluetoothDevice.getBondState()");
            showConnectFailed(bluetoothDevice);
            return;
        }
        if (11 == bluetoothDevice.getBondState()) {
            Log.i(this.TAG, "updateConnectionState: BluetoothDevice.BOND_BONDING = bluetoothDevice.getBondState()");
            return;
        }
        if (5 == i3) {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(4);
            showConnectFailed(bluetoothDevice);
            return;
        }
        if (i2 != 0 || -1 == i3) {
            return;
        }
        if (connectDevice != null && connectDevice.isConnected()) {
            Log.w(this.TAG, "updateConnectionState, ignore show disconnected, connected device: " + connectDevice);
            return;
        }
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(4);
        sendMessageDelay(1, 0, 0, 0, bluetoothDevice);
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showPairWindow(Intent intent) {
        hideConnectFailed();
    }

    public boolean addCallView(Context context, View view, int i, int i2, int i3, int i4, int i5) {
        WindowManager.LayoutParams layoutParams;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Log.i(this.TAG, "addCallView:" + view);
        if (windowManager != null && !view.isShown()) {
            WindowManager.LayoutParams createWindowManagerLayoutParams = createWindowManagerLayoutParams(i, i2, i3, i4);
            createWindowManagerLayoutParams.flags |= i5;
            windowManager.addView(view, createWindowManagerLayoutParams);
            return true;
        }
        if (windowManager == null || (layoutParams = (WindowManager.LayoutParams) view.getLayoutParams()) == null) {
            return false;
        }
        layoutParams.flags |= i5;
        windowManager.updateViewLayout(view, layoutParams);
        return false;
    }

    public WindowManager.LayoutParams createWindowManagerLayoutParams(int i, int i2, int i3, int i4) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(2038, 524288);
        layoutParams.type = i;
        layoutParams.flags |= 8521472;
        layoutParams.format = 1;
        layoutParams.gravity = i2;
        layoutParams.width = i3;
        layoutParams.height = i4;
        return layoutParams;
    }

    public boolean removeCallView(Context context, View view) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null || view == null || !view.isShown()) {
            return false;
        }
        Log.i(this.TAG, "removeCallView:" + view);
        windowManager.removeView(view);
        return true;
    }
}
