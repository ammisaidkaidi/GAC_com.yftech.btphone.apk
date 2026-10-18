package com.yftech.btphone.proxy;

import android.content.Context;
import com.yftech.btphone.callback.ContactsCallback;
import com.yftech.btphone.callback.MediaCallback;
import com.yftech.btphone.callback.PhoneCallback;
import com.yftech.btphone.callback.SettingsCallback;
import com.yftech.btphone.lib.sample.SampleCallbackManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class CallbackManager extends SampleCallbackManager {
    @Override // com.yftech.btphone.lib.sample.SampleCallbackManager, com.yftech.btphone.lib.listener.ICallbackProxy
    public void createContactsCallback(Context context) {
        this.mBluetoothContactsCallback = new ContactsCallback(context);
    }

    @Override // com.yftech.btphone.lib.sample.SampleCallbackManager, com.yftech.btphone.lib.listener.ICallbackProxy
    public void createMediaCallback(Context context) {
        this.mBluetoothMediaCallback = new MediaCallback(context);
    }

    @Override // com.yftech.btphone.lib.sample.SampleCallbackManager, com.yftech.btphone.lib.listener.ICallbackProxy
    public void createPhoneCallCallback(Context context) {
        this.mBluetoothPhoneCallback = new PhoneCallback(context);
    }

    @Override // com.yftech.btphone.lib.sample.SampleCallbackManager, com.yftech.btphone.lib.listener.ICallbackProxy
    public void createSettingsCallback(Context context) {
        this.mBluetoothSettingsCallback = new SettingsCallback(context);
    }
}
