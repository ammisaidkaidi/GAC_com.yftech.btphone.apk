package com.yftech.btphone.lib.sample;

import android.app.Application;
import android.util.Log;
import com.yftech.btphone.lib.listener.IApplicationProxy;
import com.yftech.btphone.lib.listener.ICallbackProxy;
import com.yftech.btphone.lib.listener.IDataProviderProxy;
import com.yftech.btphone.lib.listener.IPhoneCallWindowProxy;
import com.yftech.btphone.lib.listener.IWindowManagerProxy;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleApplication extends Application implements IApplicationProxy {
    protected static SampleApplication mInstance;
    protected ICallbackProxy mCallbackManager;
    protected IDataProviderProxy mDataProviderManager;
    protected IPhoneCallWindowProxy mPhoneCallWindowManager;
    protected IWindowManagerProxy mWindowManager;
    protected String TAG = "SampleApplication";
    private String mLastDialNumber = "";

    public static SampleApplication getInstance() {
        return mInstance;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        this.TAG = getClass().getSimpleName();
        log("onCreate");
        mInstance = this;
        initProxy();
        initData();
    }

    @Override // android.app.Application
    public void onTerminate() {
        log("onTerminate");
        release();
        super.onTerminate();
    }

    private void release() {
        if (this.mCallbackManager != null) {
            getCallbackManager().release(this);
        }
        IWindowManagerProxy iWindowManagerProxy = this.mWindowManager;
        IPhoneCallWindowProxy iPhoneCallWindowProxy = this.mPhoneCallWindowManager;
        IDataProviderProxy iDataProviderProxy = this.mDataProviderManager;
        if (iDataProviderProxy != null) {
            iDataProviderProxy.resetData();
            this.mDataProviderManager = null;
        }
    }

    protected void initProxy() {
        this.mWindowManager = new SampleWindowManager();
        this.mPhoneCallWindowManager = new SamplePhoneCallWindowManager();
        this.mCallbackManager = new SampleCallbackManager();
        this.mDataProviderManager = new SampleDataProvider();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initData() {
        getDataProviderManager().init();
        getCallbackManager().init(this);
        getPhoneCallWindowManager().sendMessageCheckPhoneWindow(false, false);
    }

    public IDataProviderProxy getDataProviderManager() {
        return this.mDataProviderManager;
    }

    @Override // com.yftech.btphone.lib.listener.IApplicationProxy
    public ICallbackProxy getCallbackManager() {
        return this.mCallbackManager;
    }

    @Override // com.yftech.btphone.lib.listener.IApplicationProxy
    public IPhoneCallWindowProxy getPhoneCallWindowManager() {
        return this.mPhoneCallWindowManager;
    }

    public IWindowManagerProxy getWindowManager() {
        return this.mWindowManager;
    }

    public String getLastDialNumber() {
        return this.mLastDialNumber;
    }

    public void setLastDialNumber(String str) {
        this.mLastDialNumber = str;
    }

    protected void log(String str) {
        Log.d(this.TAG, str);
    }
}
