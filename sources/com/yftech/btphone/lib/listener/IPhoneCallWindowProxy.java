package com.yftech.btphone.lib.listener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPhoneCallWindowProxy {
    Class getCallActivityCls();

    void hidePhoneCallDialog();

    boolean isPhoneCallDialogShow();

    void sendMessageCheckPhoneWindow(boolean z, boolean z2);

    void setShouldShowFull(boolean z);

    void setShouldShowOSD(boolean z);

    void showPhoneCallActivity();

    void showPhoneCallDialog();
}
