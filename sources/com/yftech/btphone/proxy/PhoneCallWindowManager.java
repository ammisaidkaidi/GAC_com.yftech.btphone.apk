package com.yftech.btphone.proxy;

import android.util.Log;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.CallActivity;
import com.yftech.btphone.app.PhoneDialog;
import com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.utils.IntentUtils;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhoneCallWindowManager extends SamplePhoneCallWindowManager {
    private PhoneDialog phoneDialog;

    public PhoneCallWindowManager() {
        this.shouldShowOSD = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager
    public boolean checkFirstIncomingCall(int i) {
        boolean isCarlifeForeground = BluetoothApplication.getInstance().getDataProviderManager().isCarlifeForeground();
        if (1 == i && this.shouldShowFull && isCarlifeForeground) {
            return true;
        }
        return super.checkFirstIncomingCall(i);
    }

    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager, com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void showPhoneCallDialog() {
        super.showPhoneCallDialog();
        Log.d(this.TAG, "showDialogCall,isIgnore:");
        if (this.phoneDialog == null) {
            this.phoneDialog = new PhoneDialog(BluetoothApplication.getInstance(), false);
            this.phoneDialog.getWindow().setType(2054);
        }
        if (this.phoneDialog.isShowing()) {
            return;
        }
        this.phoneDialog.show();
    }

    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager, com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void hidePhoneCallDialog() {
        super.hidePhoneCallDialog();
        PhoneDialog phoneDialog = this.phoneDialog;
        if (phoneDialog != null && phoneDialog.isShowing()) {
            this.phoneDialog.dismiss();
        }
        this.phoneDialog = null;
    }

    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager
    protected void handlerPhoneCallWindow(boolean z, boolean z2) {
        List<PhoneCall> phoneCalls = BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls();
        if (phoneCalls.isEmpty()) {
            Log.d(this.TAG, "handlerPhoneCallWindow: phoneCalls.isEmpty");
            return;
        }
        if (!BluetoothApplication.getInstance().getDataProviderManager().isExistValidPhone()) {
            Log.d(this.TAG, "handlerPhoneCallWindow: isExistValidPhone false");
            return;
        }
        boolean isPhoneCallDialogShow = isPhoneCallDialogShow();
        boolean isContainsCallActivity = BluetoothApplication.getInstance().getCallbackManager().getLifecycleCallbacks().isContainsCallActivity();
        boolean z3 = AppManager.getAppManager().getActivity(getCallActivityCls()) != null;
        Log.d(this.TAG, "handlerPhoneCallWindow: isPhoneDialogShow:" + isPhoneCallDialogShow + ",isContainsCallActivity:" + isContainsCallActivity + ",showOsd:" + z + ",showActivity:" + z2 + ",shouldShowOSD:" + this.shouldShowOSD + ",shouldShowFull:" + this.shouldShowFull + ",isActualContainsCallActivity:" + z3 + ",size:" + phoneCalls.size());
        if (checkFirstPhoneCallWindow(phoneCalls, isPhoneCallDialogShow, isContainsCallActivity)) {
            return;
        }
        if (z) {
            if ((isContainsCallActivity || z3) && isPhoneCallDialogShow) {
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

    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager, com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public void showPhoneCallActivity() {
        super.showPhoneCallActivity();
        IntentUtils.startCallActivity(BluetoothApplication.getInstance(), false);
    }

    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager, com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public Class getCallActivityCls() {
        return CallActivity.class;
    }

    @Override // com.yftech.btphone.lib.sample.SamplePhoneCallWindowManager, com.yftech.btphone.lib.listener.IPhoneCallWindowProxy
    public boolean isPhoneCallDialogShow() {
        PhoneDialog phoneDialog = this.phoneDialog;
        return phoneDialog != null && phoneDialog.isShowing();
    }
}
