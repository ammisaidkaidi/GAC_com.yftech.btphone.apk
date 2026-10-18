package com.yftech.btphone.lib.sample;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.yftech.btphone.lib.callback.SampleBluetoothContactsCallback;
import com.yftech.btphone.lib.callback.SampleBluetoothMediaCallback;
import com.yftech.btphone.lib.callback.SampleBluetoothPhoneCallCallback;
import com.yftech.btphone.lib.callback.SampleBluetoothSettingsCallback;
import com.yftech.btphone.lib.callback.SampleLifecycleCallbacks;
import com.yftech.btphone.lib.listener.ICallbackProxy;
import com.yftech.car.bluetooth.CarBluetoothManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleCallbackManager implements ICallbackProxy {
    protected String TAG;
    protected SampleBluetoothContactsCallback mBluetoothContactsCallback;
    protected SampleBluetoothMediaCallback mBluetoothMediaCallback;
    protected SampleBluetoothPhoneCallCallback mBluetoothPhoneCallback;
    protected SampleBluetoothSettingsCallback mBluetoothSettingsCallback;
    protected Handler mHandler = new Handler();
    protected SampleLifecycleCallbacks mLifecycleCallbacks;

    /* JADX INFO: Access modifiers changed from: protected */
    public SampleCallbackManager() {
        this.TAG = "SampleCallbackManager";
        this.TAG = getClass().getSimpleName();
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void init(Application application) {
        createContactsCallback(application);
        createMediaCallback(application);
        createPhoneCallCallback(application);
        createSettingsCallback(application);
        createLifecycleCallback(application);
        application.registerActivityLifecycleCallbacks(getLifecycleCallbacks());
        registerCallBack();
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void registerCallBack() {
        Log.i(this.TAG, "registerCallBack");
        CarBluetoothManager.getInstance().registerBluetoothContactsCallback(this.mBluetoothContactsCallback, this.mHandler);
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.mBluetoothPhoneCallback, this.mHandler);
        CarBluetoothManager.getInstance().registerBluetoothSettingsCallback(this.mBluetoothSettingsCallback, this.mHandler);
        CarBluetoothManager.getInstance().registerBluetoothMusicCallback(this.mBluetoothMediaCallback, this.mHandler);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void unRegisterCallBack() {
        Log.i(this.TAG, "unRegisterCallBack");
        CarBluetoothManager.getInstance().unregisterBluetoothContactsCallback(this.mBluetoothContactsCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.mBluetoothPhoneCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothSettingsCallback(this.mBluetoothSettingsCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothMusicCallback(this.mBluetoothMediaCallback);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void createContactsCallback(Context context) {
        this.mBluetoothContactsCallback = new SampleBluetoothContactsCallback(context);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void createPhoneCallCallback(Context context) {
        this.mBluetoothPhoneCallback = new SampleBluetoothPhoneCallCallback(context);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void createMediaCallback(Context context) {
        this.mBluetoothMediaCallback = new SampleBluetoothMediaCallback(context);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void createSettingsCallback(Context context) {
        this.mBluetoothSettingsCallback = new SampleBluetoothSettingsCallback(context);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void createLifecycleCallback(Context context) {
        this.mLifecycleCallbacks = new SampleLifecycleCallbacks(context);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public void release(Application application) {
        application.unregisterActivityLifecycleCallbacks(getLifecycleCallbacks());
        unRegisterCallBack();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public SampleBluetoothContactsCallback getBluetoothContactsCallback() {
        return this.mBluetoothContactsCallback;
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public SampleBluetoothPhoneCallCallback getBluetoothPhoneCallback() {
        return this.mBluetoothPhoneCallback;
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public SampleBluetoothSettingsCallback getBluetoothSettingsCallback() {
        return this.mBluetoothSettingsCallback;
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public SampleBluetoothMediaCallback getBluetoothMediaCallback() {
        return this.mBluetoothMediaCallback;
    }

    @Override // com.yftech.btphone.lib.listener.ICallbackProxy
    public SampleLifecycleCallbacks getLifecycleCallbacks() {
        return this.mLifecycleCallbacks;
    }
}
