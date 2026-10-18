package com.yftech.btphone.utils;

import android.bluetooth.BluetoothDevice;
import android.graphics.Typeface;
import android.util.Log;
import com.yftech.btphone.R;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.CommonDialog;
import com.yftech.btphone.lib.bean.Device;

/* loaded from: /home/user/work/dex/classes.dex */
public class DialogManager {
    private static DialogManager mInstance;
    private String TAG = "DialogManager";
    private CommonDialog mCommonDialog;

    public static DialogManager getInstance() {
        if (mInstance == null) {
            mInstance = new DialogManager();
        }
        return mInstance;
    }

    private DialogManager() {
    }

    public void closeDialog() {
        CommonDialog commonDialog = this.mCommonDialog;
        if (commonDialog == null || !commonDialog.isShowing()) {
            return;
        }
        this.mCommonDialog.dismiss();
    }

    private void createCommonDialog() {
        if (this.mCommonDialog == null) {
            this.mCommonDialog = new CommonDialog(BluetoothApplication.getInstance());
        }
        this.mCommonDialog.show();
    }

    public void showConnectTimeoutDialog(BluetoothDevice bluetoothDevice) {
        Log.i(this.TAG, "showConnectTimeoutDialog: " + bluetoothDevice);
        createCommonDialog();
        new Device().setDevice(bluetoothDevice);
        this.mCommonDialog.update(0, BluetoothApplication.getInstance().getResources().getString(R.string.tip_pair_failed_title), BluetoothApplication.getInstance().getResources().getString(R.string.tip_pair_failed_message, CommonUtils.getDeviceName(bluetoothDevice)), new CommonDialog.Callback() { // from class: com.yftech.btphone.utils.DialogManager.1
        });
        this.mCommonDialog.tvTitle.setTypeface(Typeface.create("source-han-sans-cn-medium", 1));
        this.mCommonDialog.btnCentre.setTypeface(Typeface.create("source-han-sans-cn-medium", 1));
    }
}
