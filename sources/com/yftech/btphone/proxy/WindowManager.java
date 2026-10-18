package com.yftech.btphone.proxy;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.yftech.btphone.R;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.bean.BTDevice;
import com.yftech.btphone.lib.bean.Device;
import com.yftech.btphone.lib.sample.SampleApplication;
import com.yftech.btphone.lib.sample.SampleWindowManager;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.lib.view.CToast;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.btphone.utils.DialogManager;
import com.yftech.car.bluetooth.CarBluetoothManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class WindowManager extends SampleWindowManager {
    public final int TYPE_BASE = 4096;
    public final int TYPE_CONNECTED_SUCCESS = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    public final int TYPE_DISCONNECTED = InputDeviceCompat.SOURCE_TOUCHSCREEN;
    public final int TYPE_DOWNLOAD_CONFIRM = FragmentTransaction.TRANSIT_FRAGMENT_FADE;
    public final int TYPE_DOWNLOAD_FAILED = 4100;
    public final int TYPE_PAIR = 4101;
    private final int timeSecord3 = PathInterpolatorCompat.MAX_NUM_POINTS;
    private final int timeSecord5 = 5000;
    private final int timeSecord10 = 10000;
    private final int timeSecord30 = 30000;
    private boolean mNeedShowDownloadTipNextConnect = true;
    private BTDevice mBtDevice = new BTDevice();

    public void setNeedShowDownloadTip(boolean z) {
        this.mNeedShowDownloadTipNextConnect = z;
    }

    @Override // com.yftech.btphone.lib.sample.SampleWindowManager, com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void updateConnectionState(BluetoothDevice bluetoothDevice, int i, int i2, int i3) {
        super.updateConnectionState(bluetoothDevice, i, i2, i3);
        if (17 == i) {
            if (2 == i2) {
                BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
                closeToastType(bluetoothApplication, FragmentTransaction.TRANSIT_FRAGMENT_FADE);
                closeToastType(bluetoothApplication, 4100);
                return;
            } else {
                if (i2 == 0) {
                    this.mNeedShowDownloadTipNextConnect = true;
                    return;
                }
                return;
            }
        }
        if (4096 == i) {
            if (i2 == 0) {
                this.mNeedShowDownloadTipNextConnect = true;
            }
            if (i2 == 0 && i3 == -1) {
                Device connectDevice = SampleApplication.getInstance().getDataProviderManager().getConnectDevice();
                if (connectDevice != null && connectDevice.isConnected()) {
                    Log.w(this.TAG, "updateConnectionState, ignore show disconnected, connected device: " + connectDevice);
                    return;
                }
                Log.d(this.TAG, "updateConnectionState: disconnect");
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(2);
                this.mHandler.removeMessages(4);
                sendMessageDelay(1, 0, 0, 0, bluetoothDevice);
            }
        }
    }

    @Override // com.yftech.btphone.lib.sample.SampleWindowManager, com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showPairWindow(Intent intent) {
        super.showPairWindow(intent);
        Log.i(this.TAG, "showPaired: ");
        BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
        int intExtra = intent.getIntExtra("android.bluetooth.device.extra.PAIRING_VARIANT", Integer.MIN_VALUE);
        Log.d(this.TAG, "showPairWindow: type=" + intExtra);
        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        if (bluetoothDevice == null) {
            return;
        }
        if (intExtra == 3) {
            Log.d(this.TAG, "showPairWindow: PAIRING_VARIANT_CONSENT agreePair");
            CarBluetoothManager.getInstance().agreePair();
        } else {
            CToast.getInstance().setBackground(R.mipmap.toast_normal_success).show(4101, bluetoothApplication.getResources().getString(R.string.tip_pair_request, String.format("%06d", Integer.valueOf(intent.getIntExtra("android.bluetooth.device.extra.PAIRING_KEY", Integer.MIN_VALUE))), CommonUtils.getDeviceName(bluetoothDevice)), 10000);
        }
    }

    @Override // com.yftech.btphone.lib.sample.SampleWindowManager, com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void hidePairWindow() {
        super.hidePairWindow();
        closeToastType(BluetoothApplication.getInstance(), 4101);
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showConnectSuccess(BluetoothDevice bluetoothDevice) {
        Log.i(this.TAG, "showConnectedSuccessTip: " + bluetoothDevice);
        this.mBtDevice.setDevice(bluetoothDevice);
        BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
        if (bluetoothDevice != null) {
            String deviceName = CommonUtils.getDeviceName(bluetoothDevice);
            Device deviceFromConnect = BluetoothApplication.getInstance().getDataProviderManager().getDeviceFromConnect(bluetoothDevice);
            if (deviceFromConnect == null) {
                Log.w(this.TAG, "showConnectedSuccessTip, device is null");
                return;
            }
            if (1 == deviceFromConnect.getPbapState()) {
                Log.w(this.TAG, "showConnectedSuccessTip, getPbapState is connecting, ignore ");
                return;
            }
            CToast.getInstance().setBackground(R.mipmap.toast_normal_success).show(FragmentTransaction.TRANSIT_FRAGMENT_OPEN, "[" + deviceName + "]" + bluetoothApplication.getResources().getString(R.string.tip_connected), PathInterpolatorCompat.MAX_NUM_POINTS);
            String str = this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("showConnectedSuccessTip: device");
            sb.append(bluetoothDevice);
            Log.i(str, sb.toString());
        }
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showConnectFailed(BluetoothDevice bluetoothDevice) {
        super.showConnectFailed(bluetoothDevice);
        int enableState = CarBluetoothManager.getInstance().getEnableState();
        if (12 != enableState) {
            Log.i(this.TAG, "showConnectFailed, state is: " + enableState + ", ignore");
            return;
        }
        DialogManager.getInstance().showConnectTimeoutDialog(bluetoothDevice);
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showDisconnect(BluetoothDevice bluetoothDevice) {
        Log.i(this.TAG, "showDisconnectedTip: " + bluetoothDevice.getAddress());
        if (!this.mBtDevice.equalsDevice(bluetoothDevice)) {
            Log.e(this.TAG, "showDisconnectedTip: not last connectDevice do not show tip");
            return;
        }
        BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
        String deviceName = CommonUtils.getDeviceName(bluetoothDevice);
        if (12 != CarBluetoothManager.getInstance().getEnableState()) {
            String name = this.mBtDevice.getName();
            Log.i(this.TAG, "showDisconnect: use record name:" + name);
            if (TextUtils.isEmpty(name)) {
                name = this.mBtDevice.getAddress();
            }
            deviceName = CommonUtils.getLimitDeviceName(name);
        }
        if (!TextUtils.isEmpty(deviceName)) {
            CToast.getInstance().setBackground(R.mipmap.toast_normal_success).show(InputDeviceCompat.SOURCE_TOUCHSCREEN, "[" + deviceName + "]" + bluetoothApplication.getResources().getString(R.string.tip_disconnected), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
        this.mBtDevice.reset();
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showDownloadConfirm(BluetoothDevice bluetoothDevice) {
        Log.d(this.TAG, "showDownloadConfirm: mNeedShowDownloadTipNextConnect:" + this.mNeedShowDownloadTipNextConnect);
        if (this.mNeedShowDownloadTipNextConnect) {
            this.mNeedShowDownloadTipNextConnect = false;
            BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
            if (BluetoothApplication.getInstance().getDataProviderManager().getDeviceFromConnect(bluetoothDevice) != null) {
                CToast.getInstance().setBackground(R.mipmap.toast_normal_success).show(FragmentTransaction.TRANSIT_FRAGMENT_FADE, bluetoothApplication.getResources().getString(R.string.tip_download, CommonUtils.getDeviceName(bluetoothDevice)), 5000);
                Log.i(this.TAG, "showDownloadConfirm, hasMessages: " + this.mHandler.hasMessages(2));
                this.mHandler.removeMessages(2);
            }
        }
    }

    @Override // com.yftech.btphone.lib.listener.IWindowManagerProxy
    public void showDownloadFailed(BluetoothDevice bluetoothDevice) {
        BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
        Device connectDevice = BluetoothApplication.getInstance().getDataProviderManager().getConnectDevice();
        Log.i(this.TAG, "showDownloadFailed: device:" + connectDevice);
        if (isActivityShow() && connectDevice != null && connectDevice.isHfpConnected() && connectDevice.isBond()) {
            CToast.getInstance().setBackground(R.mipmap.toasts_error_bg).show(4100, bluetoothApplication.getResources().getString(R.string.tip_download_failed), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
    }

    public void closeToastType(Context context, int i) {
        CToast.getInstance().hide(i);
    }

    public void closeAllToast() {
        Log.i(this.TAG, "closeAllToast: ");
        BluetoothApplication.getInstance();
        CToast.getInstance().hide();
    }

    public void showDownloadContactsFull() {
        CToast.getInstance().setBackground(R.mipmap.toasts_error_bg).show(4100, BluetoothApplication.getInstance().getResources().getString(R.string.tip_download_full), PathInterpolatorCompat.MAX_NUM_POINTS);
    }

    public boolean isActivityShow() {
        Activity currentActivity = AppManager.getAppManager().currentActivity();
        Log.i(this.TAG, "isActivityShow, currentActivity: " + currentActivity);
        return currentActivity != null;
    }
}
