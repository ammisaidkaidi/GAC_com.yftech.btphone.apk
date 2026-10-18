package com.yftech.btphone.proxy;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.EcallDialog;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.adapter.ICarMisc;
import com.yftech.vehicle.internal.adapter.ICarTBox;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarMiscManager;
import com.yftech.vehicle.sdk.CarTBoxManager;
import com.yftech.vehicle.sdk.MpuProjectManager;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class TBoxViewManager {
    private static final int MSG_DELAY_CHECK = 1;
    public static final int TYPE_BT = 2;
    public static final int TYPE_ECALL = 1;
    private static TBoxViewManager mInstance;
    private EcallDialog mEcallDialog;
    private final String TAG = "TBoxViewManager";
    private Handler mHandler = new Handler() { // from class: com.yftech.btphone.proxy.TBoxViewManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (1 == message.what) {
                TBoxViewManager.this.updateEcallStateEx(CarMiscManager.get().getTBoxECallState(), false);
            }
        }
    };
    private CarTBoxManager.CarTBoxListener mListener = new CarTBoxManager.CarTBoxListener() { // from class: com.yftech.btphone.proxy.TBoxViewManager.3
        public void onPhoneModeChanged(ICarTBox.PhoneMode phoneMode) {
            super.onPhoneModeChanged(phoneMode);
            Log.i("TBoxViewManager", "onPhoneModeChanged: " + phoneMode);
        }

        public void onPhoneCallStateChanged(ICarTBox.PhoneCallState phoneCallState) {
            super.onPhoneCallStateChanged(phoneCallState);
            TBoxViewManager.this.updateEcallState(phoneCallState, CarMiscManager.get().getTBoxECallState());
        }
    };
    private CarMiscManager.CarMiscListener mCarMiscListener = new CarMiscManager.CarMiscListener() { // from class: com.yftech.btphone.proxy.TBoxViewManager.4
        public void onTBoxEcallStateChanged(ICarMisc.ECallState eCallState) {
            super.onTBoxEcallStateChanged(eCallState);
            TBoxViewManager.this.updateEcallStateEx(eCallState, true);
        }
    };

    public static TBoxViewManager getInstance() {
        if (mInstance == null) {
            mInstance = new TBoxViewManager();
        }
        return mInstance;
    }

    private TBoxViewManager() {
    }

    public void prepare(Context context) {
        if (this.mEcallDialog == null) {
            this.mEcallDialog = new EcallDialog(context);
        }
        CarTBoxManager.get().registerListener(this.mListener);
        CarMiscManager.get().registerListener(this.mCarMiscListener);
        ICarTBox.PhoneCallState tboxCall = getTboxCall();
        if (ICarTBox.PhoneCallState.CONNECTING != tboxCall && ICarTBox.PhoneCallState.ON_THE_PHONE != tboxCall) {
            setMuteForEcall(false);
        }
        updateEcallState(tboxCall, CarMiscManager.get().getTBoxECallState());
    }

    public void release() {
        EcallDialog ecallDialog = this.mEcallDialog;
        if (ecallDialog != null) {
            ecallDialog.release();
        }
        CarTBoxManager.get().unregisterListener(this.mListener);
    }

    public void updateEcallState(final ICarTBox.PhoneCallState phoneCallState) {
        Log.i("TBoxViewManager", "updateEcallState: " + phoneCallState);
        if (phoneCallState == null) {
            return;
        }
        if (!enableFunc()) {
            Log.i("TBoxViewManager", "updateEcallState: enableFunc false");
        } else {
            this.mHandler.post(new Runnable() { // from class: com.yftech.btphone.proxy.TBoxViewManager.2
                @Override // java.lang.Runnable
                public void run() {
                    if (TBoxViewManager.this.mEcallDialog == null) {
                        Log.i("TBoxViewManager", "run: mEcallDialog is null");
                        return;
                    }
                    BluetoothApplication bluetoothApplication = BluetoothApplication.getInstance();
                    if (ICarTBox.PhoneCallState.CONNECTING == phoneCallState) {
                        TBoxViewManager.this.mEcallDialog.onOutgoing(bluetoothApplication);
                        return;
                    }
                    if (ICarTBox.PhoneCallState.ON_THE_PHONE == phoneCallState) {
                        TBoxViewManager.this.mEcallDialog.onEcallActive(bluetoothApplication);
                        return;
                    }
                    if (ICarTBox.PhoneCallState.HANG_UP == phoneCallState) {
                        TBoxViewManager.this.mEcallDialog.onEcallOver(bluetoothApplication);
                    } else if (ICarTBox.PhoneCallState.__UNKNOWN__ == phoneCallState || ICarTBox.PhoneCallState.NOT_ACTIVE == phoneCallState) {
                        TBoxViewManager.this.mEcallDialog.onEcallOther(bluetoothApplication);
                    }
                }
            });
        }
    }

    private boolean enableFunc() {
        return CarConfig.isECallSwitchPresent();
    }

    public void hangup() {
        Log.i("TBoxViewManager", "hangup: ");
    }

    public void checkAudio(int i) {
        ICarTBox.PhoneCallState tboxCall = getTboxCall();
        Log.i("TBoxViewManager", "checkAudio, type:" + i + ",ecall:" + tboxCall);
        if (!enableFunc()) {
            Log.i("TBoxViewManager", "checkAudio: enableFunc false");
            return;
        }
        boolean z = (tboxCall == null || ICarTBox.PhoneCallState.__UNKNOWN__ == tboxCall || ICarTBox.PhoneCallState.NOT_ACTIVE == tboxCall || ICarTBox.PhoneCallState.CALL_OVER == tboxCall) ? false : true;
        if (1 == i) {
            if (z) {
                mutePhone(true);
            } else {
                mutePhone(false);
            }
        } else if (2 == i && z) {
            mutePhone(true);
        }
        List<PhoneCall> phoneCalls = BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls();
        if (phoneCalls == null || phoneCalls.size() == 0) {
            Log.i("TBoxViewManager", "checkAudio: phone call is null");
            return;
        }
        for (PhoneCall phoneCall : phoneCalls) {
            if (z) {
                if (4 == phoneCall.getCallState()) {
                    if (CarBluetoothManager.getInstance().isPhoneCallAudioEnable()) {
                        Log.i("TBoxViewManager", "checkAudio: setPhoneCallAudioEnable false");
                        CarBluetoothManager.getInstance().setPhoneCallAudioEnable(false);
                        return;
                    } else {
                        Log.i("TBoxViewManager", "checkAudio: isPhoneCallAudioEnable already false");
                        return;
                    }
                }
            } else if (1 == i && 4 == phoneCall.getCallState()) {
                if (CarBluetoothManager.getInstance().isPhoneCallAudioEnable()) {
                    Log.i("TBoxViewManager", "checkAudio: setPhoneCallAudioEnable true");
                    CarBluetoothManager.getInstance().setPhoneCallAudioEnable(true);
                    return;
                } else {
                    Log.i("TBoxViewManager", "checkAudio: isPhoneCallAudioEnable already false");
                    return;
                }
            }
        }
    }

    private void mutePhone(boolean z) {
        Log.i("TBoxViewManager", "mutePhone: " + z);
        CarAudioManager.getInstance().onlyMuteOneStream(2, z, 16);
        CarAudioManager.getInstance().onlyMuteOneStream(6, z, 16);
    }

    private void sendMessageDelayCheck() {
        if (this.mHandler.hasMessages(1)) {
            Log.e("TBoxViewManager", "removeMessageDelayCheck:");
        }
        removeMessageDelayCheck();
        this.mHandler.sendEmptyMessageDelayed(1, 1000L);
    }

    private void removeMessageDelayCheck() {
        this.mHandler.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEcallStateEx(ICarMisc.ECallState eCallState, boolean z) {
        Log.i("TBoxViewManager", "updateEcallStateEx: " + eCallState + ", isCheck:" + z);
        if (!enableFunc()) {
            Log.i("TBoxViewManager", "updateEcallStateEx: enableFunc false");
            return;
        }
        ICarDashBoard.BtInfo btInfo = new ICarDashBoard.BtInfo();
        btInfo.mPhoneSourceType = (byte) 4;
        btInfo.mBtStatus = (byte) -1;
        ICarTBox.PhoneCallState phoneCallState = CarTBoxManager.get().getPhoneCallState();
        if (ICarMisc.ECallState.CALL_GOING == eCallState) {
            btInfo.mBtStatus = (byte) 4;
            updateEcallState(phoneCallState, eCallState);
        } else if (z) {
            btInfo.mBtStatus = (byte) 0;
            sendMessageDelayCheck();
        } else {
            updateEcallState(phoneCallState, eCallState);
        }
    }

    public void updateEcallState(ICarTBox.PhoneCallState phoneCallState, ICarMisc.ECallState eCallState) {
        Log.i("TBoxViewManager", "updateEcallStatus, tboxStatus:" + phoneCallState + ", miscStatus:" + eCallState);
        if (ICarMisc.ECallState.CALL_GOING == eCallState) {
            phoneCallState = ICarTBox.PhoneCallState.ON_THE_PHONE;
            removeMessageDelayCheck();
        }
        updateEcallState(phoneCallState);
    }

    private ICarTBox.PhoneCallState getTboxCall() {
        return ICarMisc.ECallState.CALL_GOING == CarMiscManager.get().getTBoxECallState() ? ICarTBox.PhoneCallState.ON_THE_PHONE : CarTBoxManager.get().getPhoneCallState();
    }

    public void setMuteForEcall(boolean z) {
        try {
            Log.i("TBoxViewManager", "setMuteForEcall, status:" + z + ", country:" + BluetoothApplication.getInstance().getResources().getConfiguration().locale.getLanguage());
            MpuProjectManager.get().setMuteForEcall(z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
