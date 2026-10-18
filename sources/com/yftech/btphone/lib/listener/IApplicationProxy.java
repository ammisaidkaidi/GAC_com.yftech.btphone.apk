package com.yftech.btphone.lib.listener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IApplicationProxy {
    ICallbackProxy getCallbackManager();

    IDataProviderProxy getDataProviderManager();

    IPhoneCallWindowProxy getPhoneCallWindowManager();

    IWindowManagerProxy getWindowManager();
}
