package com.yftech.btphone.lib.sample;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.yftech.btphone.lib.listener.IPhoneCallWindowProxy;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SamplePhoneCallWindowManager implements IPhoneCallWindowProxy {
    protected String TAG;
    protected final int MSG_CHECK_PHONE_WINDOW = 1;
    protected final int MSG_CHECK_PHONE_WINDOW_EX = 2;
    public boolean shouldShowOSD = false;
    public boolean shouldShowFull = true;
    protected int TIME_DELAY_CHECK_WINDOW = 500;
    protected int TIME_DELAY_CHECK_WINDOW2 = 1000;
    protected Handler mHandler = new Handler() { // from class: com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager.1
        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            super.dispatchMessage(message);
            if (1 == message.what) {
                SamplePhoneCallWindowManager.this.handlerPhoneCallWindow(message.arg1 == 1, message.arg2 == 1);
            } else if (2 == message.what) {
                SamplePhoneCallWindowManager.this.handlerPhoneCallWindow(false, false);
            }
        }
    };

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public Class getCallActivityCls() {
        return null;
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public boolean isPhoneCallDialogShow() {
        return false;
    }

    public SamplePhoneCallWindowManager() {
        this.TAG = "SamplePhoneCallWindowManager";
        this.TAG = getClass().getSimpleName();
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void setShouldShowOSD(boolean z) {
        this.shouldShowOSD = z;
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void setShouldShowFull(boolean z) {
        this.shouldShowFull = z;
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void sendMessageCheckPhoneWindow(boolean z, boolean z2) {
        this.mHandler.removeMessages(2);
        Message obtainMessage = this.mHandler.obtainMessage(1);
        obtainMessage.arg1 = z ? 1 : 0;
        obtainMessage.arg2 = z2 ? 1 : 0;
        this.mHandler.sendMessageDelayed(obtainMessage, this.TIME_DELAY_CHECK_WINDOW);
    }

    public void sendMessageCheckPhoneWindow() {
        this.mHandler.removeMessages(2);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(2), this.TIME_DELAY_CHECK_WINDOW2);
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void showPhoneCallDialog() {
        Log.d(this.TAG, "showPhoneCallDialog: ");
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void hidePhoneCallDialog() {
        Log.d(this.TAG, "hidePhoneCallDialog: ");
    }

    @Override // com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void showPhoneCallActivity() {
        Log.d(this.TAG, "showPhoneCallActivity: ");
        sendMessageCheckPhoneWindow();
    }

    protected void handlerPhoneCallWindow(boolean z, boolean z2) {
        List<PhoneCall> phoneCalls = SampleApplication.getInstance().getDataProviderManager().getPhoneCalls();
        if (phoneCalls.isEmpty()) {
            Log.d(this.TAG, "handlerPhoneCallWindow: phoneCalls.isEmpty");
            return;
        }
        if (!SampleApplication.getInstance().getDataProviderManager().isExistValidPhone()) {
            Log.d(this.TAG, "handlerPhoneCallWindow: isExistValidPhone false");
            return;
        }
        boolean isPhoneCallDialogShow = isPhoneCallDialogShow();
        boolean isContainsCallActivity = SampleApplication.getInstance().getCallbackManager().getLifecycleCallbacks().isContainsCallActivity();
        boolean z3 = AppManager.getAppManager().getActivity(getCallActivityCls()) != null;
        Log.d(this.TAG, "handlerPhoneCallWindow: isPhoneDialogShow:" + isPhoneCallDialogShow + ",isContainsCallActivity:" + isContainsCallActivity + ",showOsd:" + z + ",showActivity:" + z2 + ",shouldShowOSD:" + this.shouldShowOSD + ",shouldShowFull:" + this.shouldShowFull + ",isActualContainsCallActivity:" + z3 + ",size:" + phoneCalls.size());
        if (checkFirstPhoneCallWindow(phoneCalls, isPhoneCallDialogShow, isContainsCallActivity)) {
            return;
        }
        if (z) {
            if (isContainsCallActivity || z3) {
                AppManager.getAppManager().finishActivity(getCallActivityCls());
            }
            if (isPhoneCallDialogShow) {
                return;
            }
            showPhoneCallDialog();
            return;
        }
        if (!z2) {
            if (isPhoneCallDialogShow || isContainsCallActivity) {
                return;
            }
            showPhoneCallActivity();
            return;
        }
        if (isPhoneCallDialogShow) {
            hidePhoneCallDialog();
        }
        if (isContainsCallActivity) {
            return;
        }
        showPhoneCallActivity();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkFirstPhoneCallWindow(List<PhoneCall> list, boolean z, boolean z2) {
        if (list.size() == 1) {
            int callState = list.get(0).getCallState();
            if (checkFirstIncomingCall(callState)) {
                if (this.shouldShowFull && !this.shouldShowOSD) {
                    showPhoneCallActivity();
                    return true;
                }
                if (!z && this.shouldShowOSD) {
                    showPhoneCallDialog();
                }
                if (z2) {
                    AppManager.getAppManager().finishActivity(getCallActivityCls());
                }
                return true;
            }
            if (checkFirstOutgoingCall(callState)) {
                if (!z2) {
                    showPhoneCallActivity();
                }
                if (z) {
                    hidePhoneCallDialog();
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkFirstIncomingCall(int i) {
        return 2 == i && this.shouldShowOSD;
    }

    protected boolean checkFirstOutgoingCall(int i) {
        return 1 == i && this.shouldShowFull;
    }
}
