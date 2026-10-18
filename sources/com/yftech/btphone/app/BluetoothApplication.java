package com.yftech.btphone.app;

import android.text.TextUtils;
import android.util.Log;
import com.yftech.btphone.bean.CallLogBean;
import com.yftech.btphone.lib.sample.SampleApplication;
import com.yftech.btphone.lib.view.CToast;
import com.yftech.btphone.proxy.CallbackManager;
import com.yftech.btphone.proxy.DataProvider;
import com.yftech.btphone.proxy.PhoneCallWindowManager;
import com.yftech.btphone.proxy.TBoxViewManager;
import com.yftech.btphone.proxy.WindowManager;
import com.yftech.btphone.utils.IntentUtils;
import com.yftech.btphone.utils.SoundPoolManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothApplication extends SampleApplication {
    private static BluetoothApplication mInstance;

    public static BluetoothApplication getInstance() {
        return mInstance;
    }

    @Override // com.yftech.btphone.lib.sample.SampleApplication, android.app.Application
    public void onCreate() {
        SoundPoolManager.getInstance().init(this);
        CToast.getInstance().setParamsType(2054);
        CToast.getInstance().setTextSize(36);
        CToast.getInstance().setHeight(88);
        CToast.getInstance().init(this);
        super.onCreate();
        mInstance = this;
        IntentUtils.startMainService(this);
        TBoxViewManager.getInstance().prepare(this);
    }

    @Override // com.yftech.btphone.lib.sample.SampleApplication
    protected void initProxy() {
        this.mWindowManager = new WindowManager();
        this.mCallbackManager = new CallbackManager();
        this.mDataProviderManager = new DataProvider();
        this.mPhoneCallWindowManager = new PhoneCallWindowManager();
    }

    @Override // com.yftech.btphone.lib.sample.SampleApplication
    protected void initData() {
        super.initData();
    }

    public List<CallLogBean> getCallLogBeanList() {
        return getDataProviderManager().mCallLogBeanList;
    }

    @Override // com.yftech.btphone.lib.sample.SampleApplication, com.yftech.btphone.lib.listener.IApplicationProxy
    public DataProvider getDataProviderManager() {
        return (DataProvider) this.mDataProviderManager;
    }

    @Override // com.yftech.btphone.lib.sample.SampleApplication, com.yftech.btphone.lib.listener.IApplicationProxy
    public WindowManager getWindowManager() {
        return (WindowManager) this.mWindowManager;
    }

    public boolean dial(String str) {
        Log.i(this.TAG, "dial number:" + str);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (getDataProviderManager().isExistValidPhone()) {
            Log.d(this.TAG, "dial: isExistValidPhone, ignore");
            return false;
        }
        if (str == null) {
            str = "";
        }
        return CarBluetoothManager.getInstance().dial(str.replace(" ", "").trim());
    }

    public void hangup(PhoneCall phoneCall) {
        Log.i(this.TAG, "hangup:" + phoneCall);
        if (phoneCall == null) {
            return;
        }
        try {
            if (!getDataProviderManager().hasMulPhoneCall()) {
                CarBluetoothManager.getInstance().hangup();
            } else if (phoneCall != null) {
                if (4 == phoneCall.getCallState()) {
                    CarBluetoothManager.getInstance().terminateCurrentActiveCall();
                } else if (2 == phoneCall.getCallState()) {
                    CarBluetoothManager.getInstance().rejectNewCallIn3WayCall();
                } else {
                    CarBluetoothManager.getInstance().terminateCurrentActiveCall();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
