package com.yftech.btphone.lib.sample;

import android.bluetooth.BluetoothDevice;
import com.yftech.btphone.lib.base.presenter.BasePresenter;
import com.yftech.btphone.lib.base.view.IView;
import com.yftech.btphone.lib.listener.IBluetoothContactsListener;
import com.yftech.btphone.lib.listener.IBluetoothMediaListener;
import com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener;
import com.yftech.btphone.lib.listener.IBluetoothSettingsListener;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SamplePresenter<T extends IView> extends BasePresenter<T> {
    private IBluetoothSettingsListener mBluetoothSettingsCallback = new IBluetoothSettingsListener() { // from class: com.yftech.btphone.lib.sample.SamplePresenter.1
        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothAutoAcceptPhoneCallStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothAutoConnectStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothAutoDownloadCallLogStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothAutoDownloadContactsStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothDeviceBandStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothDiscoveryStateChanged(int i, int i2) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothPairedListChanged(List<BluetoothDevice> list) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothScanModeChanged(int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothScanningStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothStateChanged(int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothUnpairedListChanged(List<BluetoothDevice> list) {
        }
    };
    private IBluetoothContactsListener mIBluetoothContactsListener = new IBluetoothContactsListener() { // from class: com.yftech.btphone.lib.sample.SamplePresenter.2
        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothCallLogDownloadPositionChanged(int i, int i2) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothCallLogDownloadStateChanged(int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothCallLogListChanged(List<CallLog> list) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsDownloadStateChanged(int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsListChanged(List<Contacts> list) {
        }
    };
    private IBluetoothMediaListener mIBluetoothMediaListener = new IBluetoothMediaListener() { // from class: com.yftech.btphone.lib.sample.SamplePresenter.3
        @Override // com.yftech.btphone.lib.listener.IBluetoothMediaListener
        public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }
    };
    private IBluetoothPhoneCallListener mBluetoothPhoneCallListener = new IBluetoothPhoneCallListener() { // from class: com.yftech.btphone.lib.sample.SamplePresenter.4
        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothPhoneCallAudioStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothPhoneCallMicStateChanged(boolean z) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
        }
    };

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onCreate() {
        super.onCreate();
        SampleApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().registerListener(this.mBluetoothSettingsCallback);
        SampleApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().registerListener(this.mIBluetoothContactsListener);
        SampleApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().registerListener(this.mBluetoothPhoneCallListener);
        SampleApplication.getInstance().getCallbackManager().getBluetoothMediaCallback().registerListener(this.mIBluetoothMediaListener);
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onDestroy() {
        SampleApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().unregisterListener(this.mBluetoothSettingsCallback);
        SampleApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().unregisterListener(this.mIBluetoothContactsListener);
        SampleApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().unregisterListener(this.mBluetoothPhoneCallListener);
        SampleApplication.getInstance().getCallbackManager().getBluetoothMediaCallback().unregisterListener(this.mIBluetoothMediaListener);
        super.onDestroy();
    }
}
