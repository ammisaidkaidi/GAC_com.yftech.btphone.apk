package com.yftech.btphone.contract;

import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICallView {
    void onBluetoothPhoneCallAudioStateChanged(boolean z);

    void onBluetoothPhoneCallMicStateChanged(boolean z);

    void onBluetoothPhoneCallStateChanged(List<PhoneCall> list);
}
