package com.yftech.btphone.presenter;

import android.bluetooth.BluetoothDevice;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.MainActivity;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.lib.base.presenter.BasePresenter;
import com.yftech.btphone.lib.listener.IBluetoothContactsListener;
import com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener;
import com.yftech.btphone.lib.listener.IBluetoothSettingsListener;
import com.yftech.btphone.lib.listener.ITimeChangedListener;
import com.yftech.btphone.lib.rx.CompositeDisposableMgr;
import com.yftech.btphone.lib.sample.SampleTimeManger;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MainPresenter extends BasePresenter<MainActivity> {
    private ITimeChangedListener mTimeChangedListener = new ITimeChangedListener() { // from class: com.yftech.btphone.presenter.MainPresenter.1
        @Override // com.yftech.btphone.lib.listener.ITimeChangedListener
        public void onTimeZoneChanged() {
            MainPresenter.this.getView().onTimeChanged();
        }

        @Override // com.yftech.btphone.lib.listener.ITimeChangedListener
        public void onLanguageChanged() {
            MainPresenter.this.getView().onTimeChanged();
        }

        @Override // com.yftech.btphone.lib.listener.ITimeChangedListener
        public void onTimeFormatChanged() {
            MainPresenter.this.getView().onTimeChanged();
        }
    };
    private IBluetoothSettingsListener mBluetoothSettingsListener = new IBluetoothSettingsListener() { // from class: com.yftech.btphone.presenter.MainPresenter.2
        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothStateChanged(int i) {
            MainPresenter.this.getView().onBluetoothStateChanged(i);
        }
    };
    private IBluetoothPhoneCallListener mBluetoothPhoneCallListener = new IBluetoothPhoneCallListener() { // from class: com.yftech.btphone.presenter.MainPresenter.3
        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
            MainPresenter.this.getView().onBluetoothHfpConnectStatusChanged(bluetoothDevice, i);
        }
    };
    private IBluetoothContactsListener mBluetoothContactsListener = new IBluetoothContactsListener() { // from class: com.yftech.btphone.presenter.MainPresenter.4
        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsListChanged(List<Contacts> list) {
            MainPresenter.this.getView().onBluetoothContactsListChanged(list);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsDownloadStateChanged(int i) {
            MainPresenter.this.getView().onBluetoothContactsDownloadStateChanged(i);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
            MainPresenter.this.getView().onBluetoothContactsDownloadPositionChanged(i, i2);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothCallLogDownloadPositionChanged(int i, int i2) {
            MainPresenter.this.getView().onBluetoothCallLogDownloadPositionChanged(i, i2);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothCallLogDownloadStateChanged(int i) {
            MainPresenter.this.getView().onBluetoothCallLogDownloadStateChanged(i);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothCallLogListChanged(List<CallLog> list) {
            MainPresenter.this.getView().onBluetoothCallLogListChanged(list);
        }

        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
            MainPresenter.this.getView().onBluetoothPbapConnectStatusChanged(bluetoothDevice, i);
        }
    };

    public MainPresenter() {
        this.mCompositeDisposableMgr = new CompositeDisposableMgr();
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onCreate() {
        super.onCreate();
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().registerListener(this.mBluetoothPhoneCallListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().registerListener(this.mBluetoothSettingsListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().registerListener(this.mBluetoothContactsListener);
        SampleTimeManger.getInstance().addListener(this.mTimeChangedListener);
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onDestroy() {
        SampleTimeManger.getInstance().removeListener(this.mTimeChangedListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().unregisterListener(this.mBluetoothPhoneCallListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().unregisterListener(this.mBluetoothSettingsListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().unregisterListener(this.mBluetoothContactsListener);
        super.onDestroy();
    }

    public void findContactBean(ContactBean contactBean, boolean z) {
        getView().findContactBean(contactBean, z);
    }

    public void setBackgroundIcon(int i) {
        getView().setBackgroundIcon(i);
    }
}
