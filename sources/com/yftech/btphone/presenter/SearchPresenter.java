package com.yftech.btphone.presenter;

import android.bluetooth.BluetoothDevice;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.SearchActivity;
import com.yftech.btphone.lib.base.presenter.BasePresenter;
import com.yftech.btphone.lib.listener.IBluetoothContactsListener;
import com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener;
import com.yftech.btphone.lib.listener.IBluetoothSettingsListener;
import com.yftech.btphone.lib.rx.CompositeDisposableMgr;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchPresenter extends BasePresenter<SearchActivity> {
    private IBluetoothContactsListener mBluetoothContactsListener = new IBluetoothContactsListener() { // from class: com.yftech.btphone.presenter.SearchPresenter.1
        @Override // com.yftech.btphone.lib.listener.IBluetoothContactsListener
        public void onBluetoothContactsListChanged(List<Contacts> list) {
            SearchPresenter.this.getView().onBluetoothContactsListChanged(list);
        }
    };
    private IBluetoothSettingsListener mBluetoothSettingsListener = new IBluetoothSettingsListener() { // from class: com.yftech.btphone.presenter.SearchPresenter.2
        @Override // com.yftech.btphone.lib.listener.IBluetoothSettingsListener
        public void onBluetoothStateChanged(int i) {
            SearchPresenter.this.getView().onBluetoothStateChanged(i);
        }
    };
    private IBluetoothPhoneCallListener mBluetoothPhoneCallListener = new IBluetoothPhoneCallListener() { // from class: com.yftech.btphone.presenter.SearchPresenter.3
        @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
            SearchPresenter.this.getView().onBluetoothHfpConnectStatusChanged(bluetoothDevice, i);
        }
    };

    public SearchPresenter() {
        this.mCompositeDisposableMgr = new CompositeDisposableMgr();
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onCreate() {
        super.onCreate();
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().registerListener(this.mBluetoothContactsListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().registerListener(this.mBluetoothPhoneCallListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().registerListener(this.mBluetoothSettingsListener);
    }

    @Override // com.yftech.btphone.lib.base.presenter.BasePresenter, com.yftech.btphone.lib.base.presenter.IPresenter
    public void onDestroy() {
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothContactsCallback().unregisterListener(this.mBluetoothContactsListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().unregisterListener(this.mBluetoothPhoneCallListener);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothSettingsCallback().unregisterListener(this.mBluetoothSettingsListener);
        super.onDestroy();
    }
}
