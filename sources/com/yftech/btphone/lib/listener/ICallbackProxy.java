package com.yftech.btphone.lib.listener;

import android.app.Application;
import android.content.Context;
import com.yftech.btphone.lib.callback.SampleBluetoothContactsCallback;
import com.yftech.btphone.lib.callback.SampleBluetoothMediaCallback;
import com.yftech.btphone.lib.callback.SampleBluetoothPhoneCallCallback;
import com.yftech.btphone.lib.callback.SampleBluetoothSettingsCallback;
import com.yftech.btphone.lib.callback.SampleLifecycleCallbacks;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICallbackProxy {
    void createContactsCallback(Context context);

    void createLifecycleCallback(Context context);

    void createMediaCallback(Context context);

    void createPhoneCallCallback(Context context);

    void createSettingsCallback(Context context);

    SampleBluetoothContactsCallback getBluetoothContactsCallback();

    SampleBluetoothMediaCallback getBluetoothMediaCallback();

    SampleBluetoothPhoneCallCallback getBluetoothPhoneCallback();

    SampleBluetoothSettingsCallback getBluetoothSettingsCallback();

    SampleLifecycleCallbacks getLifecycleCallbacks();

    void init(Application application);

    void registerCallBack();

    void release(Application application);

    void unRegisterCallBack();
}
