package com.yftech.btphone.presenter;

import android.bluetooth.BluetoothDevice;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.CallActivity;
import com.yftech.btphone.lib.base.presenter.BasePresenter;
import com.yftech.btphone.lib.listener.IBluetoothContactsListener;
import com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener;
import com.yftech.btphone.lib.listener.IBluetoothSettingsListener;
import com.yftech.btphone.lib.rx.CompositeDisposableMgr;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhonePresenter extends BasePresenter<CallActivity> {
    private IBluetoothSettingsListener mBluetoothSettingsListener = new IBluetoothSettingsListener() { // from class: com.yftech.btphone.presenter.PhonePresenter.1
        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothStateChanged(int i) {
        }
    };
    private IBluetoothPhoneCallListener mBluetoothPhoneCallListener = new IBluetoothPhoneCallListener() { // from class: com.yftech.btphone.presenter.PhonePresenter.2
        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            PhonePresenter.this.getView().onBluetoothPhoneCallStateChanged(BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls());
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothPhoneCallAudioStateChanged(boolean z) {
            PhonePresenter.this.getView().onBluetoothPhoneCallAudioStateChanged(z);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothPhoneCallMicStateChanged(boolean z) {
            PhonePresenter.this.getView().onBluetoothPhoneCallMicStateChanged(z);
        }
    };
    private IBluetoothContactsListener mBluetoothContactsListener = new IBluetoothContactsListener() { // from class: com.yftech.btphone.presenter.PhonePresenter.3
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

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        }
    };

    public PhonePresenter() {
        this.mCompositeDisposableMgr = new CompositeDisposableMgr();
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onCreate() {
        super.onCreate();
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().registerListener(this.mBluetoothSettingsListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().registerListener(this.mBluetoothPhoneCallListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().registerListener(this.mBluetoothContactsListener);
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onDestroy() {
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().unregisterListener(this.mBluetoothSettingsListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().unregisterListener(this.mBluetoothPhoneCallListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().unregisterListener(this.mBluetoothContactsListener);
        super.onDestroy();
    }
}
