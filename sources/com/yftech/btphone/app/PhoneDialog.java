package com.yftech.btphone.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.jakewharton.rxbinding4.view.RxView;
import com.yftech.btphone.R;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.btphone.utils.IntentUtils;
import com.yftech.btphone.view.FontTextView;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhoneDialog extends Dialog {
    private static final int MSG_UPDATE_CALL_TIME = 8192;
    private static final int TYPE_TIME_1 = 1;
    private static final int TYPE_TIME_2 = 2;
    private String TAG;
    private CompositeDisposable compositeDisposable;
    private final Context context;
    private FrameLayout flHead;
    private ImageView imgAnswer;
    private ImageView imgExchange;
    private ImageView imgHungUp;
    private ImageView imgIgnore;
    private boolean isIgnore;
    private LinearLayout llAfterSmall;
    private LinearLayout llAfterWait;
    private LinearLayout llBefore;
    private LinearLayout llButton;
    private LinearLayout llHeadSmall;
    private LinearLayout llWaitBig;
    private LinearLayout llWaitBigParent;
    private IBluetoothPhoneCallListener mBluetoothPhoneCallListener;
    private Handler mHandler;
    private TextView tvHead;
    private FontTextView tvHeadBigWait;
    private FontTextView tvHeadSmall;
    private FontTextView tvHeadWaitSmall;
    private TextView tvName;
    private FontTextView tvNameBigWait;
    private FontTextView tvNameSmall;
    private FontTextView tvNameWaitSmall;
    private TextView tvTime;
    private FontTextView tvTimeBigWait;
    private FontTextView tvTimeSmall;
    private FontTextView tvTimeWaitSmall;

    public PhoneDialog(Context context, boolean z) {
        super(context, R.style.dialog_window);
        this.TAG = "PhoneDialog";
        this.isIgnore = false;
        this.mHandler = new Handler() { // from class: com.yftech.btphone.app.PhoneDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (8192 == message.what) {
                    PhoneDialog.this.startUpdateTime((PhoneCall) message.obj, message.arg1);
                }
            }
        };
        this.mBluetoothPhoneCallListener = new IBluetoothPhoneCallListener() { // from class: com.yftech.btphone.app.PhoneDialog.2
            @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
            public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
                Log.d(PhoneDialog.this.TAG, "onBluetoothPhoneCallStateChanged");
                PhoneDialog.this.initPersonWait();
            }

            @Override // com.yftech.btphone.lib.listener.IBluetoothPhoneCallListener
            public void onBluetoothPhoneCallMicStateChanged(boolean z2) {
                PhoneDialog.this.updateMicState(z2);
            }
        };
        this.context = context;
        this.isIgnore = z;
    }

    public void setIgnore(boolean z) {
        this.isIgnore = z;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getWindow().addFlags(8);
        super.onCreate(bundle);
        setContentView(R.layout.dialog_phone);
        Log.d(this.TAG, "onCreate: ");
        setCanceledOnTouchOutside(false);
        initUi();
    }

    private void initUi() {
        this.llBefore = (LinearLayout) findViewById(R.id.cons_before);
        this.llButton = (LinearLayout) findViewById(R.id.ll_button);
        this.flHead = (FrameLayout) findViewById(R.id.fl_head);
        this.tvHead = (TextView) findViewById(R.id.tv_head);
        this.tvHead.setTextSize(60.0f);
        this.tvName = (TextView) findViewById(R.id.tv_name);
        this.tvTime = (TextView) findViewById(R.id.tv_time);
        this.imgHungUp = (ImageView) findViewById(R.id.dialog_answer_img_hungup);
        this.imgAnswer = (ImageView) findViewById(R.id.dialog_answer_img_answer);
        this.imgIgnore = (ImageView) findViewById(R.id.dialog_answer_img_ignore);
        this.imgExchange = (ImageView) findViewById(R.id.dialog_answer_img_exchange);
        this.tvHeadBigWait = (FontTextView) findViewById(R.id.dialog_answer_head_big_wait);
        this.tvTimeBigWait = (FontTextView) findViewById(R.id.dialog_answer_time_big_wait);
        this.tvNameBigWait = (FontTextView) findViewById(R.id.dialog_answer_name_big_wait);
        this.llWaitBig = (LinearLayout) findViewById(R.id.ll_wait_big);
        this.llWaitBigParent = (LinearLayout) findViewById(R.id.ll_wait_parent);
        this.llAfterSmall = (LinearLayout) findViewById(R.id.ll_small_small);
        this.llAfterWait = (LinearLayout) findViewById(R.id.ll_small_wait);
        this.tvHeadSmall = (FontTextView) findViewById(R.id.dialog_answer_head_small);
        this.tvTimeSmall = (FontTextView) findViewById(R.id.dialog_answer_time_small);
        this.tvNameSmall = (FontTextView) findViewById(R.id.dialog_answer_name_small);
        this.llHeadSmall = (LinearLayout) findViewById(R.id.dialog_answer_head_small_ll);
        this.tvHeadWaitSmall = (FontTextView) findViewById(R.id.dialog_answer_head_wait);
        this.tvTimeWaitSmall = (FontTextView) findViewById(R.id.dialog_answer_time_wait);
        this.tvNameWaitSmall = (FontTextView) findViewById(R.id.dialog_answer_name_wait);
    }

    private void initEvent() {
        if (this.compositeDisposable != null) {
            return;
        }
        this.compositeDisposable = new CompositeDisposable();
        findViewById(R.id.view_move).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$kg4-ITZ8KBrXVeAKukFMo_JWAb8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneDialog.this.lambda$initEvent$0$PhoneDialog(view);
            }
        });
        this.llHeadSmall.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$HkeakBmNxrWevimrxIcFaC4fwAk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneDialog.this.lambda$initEvent$1$PhoneDialog(view);
            }
        });
        this.tvHeadWaitSmall.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$2JRZlpAQc9PddhILmfBVHk-72gY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneDialog.this.lambda$initEvent$2$PhoneDialog(view);
            }
        });
        this.compositeDisposable.add(RxView.clicks(this.llAfterSmall).throttleFirst(2000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$eOFHbBf7swpOjsPYuG85oWoWK2M
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PhoneDialog.this.lambda$initEvent$3$PhoneDialog((Unit) obj);
            }
        }));
        this.imgIgnore.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$D5j13ny0CriUuZIjiQ39koVNd2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneDialog.this.lambda$initEvent$4$PhoneDialog(view);
            }
        });
        this.compositeDisposable.add(RxView.clicks(this.imgHungUp).throttleFirst(1000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$TdbkYyl7hO3HF_AMU2kHcjLmECg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PhoneDialog.this.lambda$initEvent$5$PhoneDialog((Unit) obj);
            }
        }));
        this.compositeDisposable.add(RxView.clicks(this.llWaitBig).throttleFirst(1000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$QKwB7f2iLdQKRWQ-cL9lM-6aGGA
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PhoneDialog.this.lambda$initEvent$6$PhoneDialog((Unit) obj);
            }
        }));
        this.compositeDisposable.add(RxView.clicks(this.imgAnswer).throttleFirst(1000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$fdZ7XOdsePDhEGcMulZnzGOrcdo
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PhoneDialog.this.lambda$initEvent$7$PhoneDialog((Unit) obj);
            }
        }));
        this.compositeDisposable.add(RxView.clicks(this.imgExchange).throttleFirst(1000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$5-q3ivdCcytcWS0tdINKVGHZQlI
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PhoneDialog.this.lambda$initEvent$8$PhoneDialog((Unit) obj);
            }
        }));
        this.compositeDisposable.add(RxView.clicks(this.flHead).throttleFirst(1000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$rOJcWQHXg9DUW_yGn-efx702fzg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PhoneDialog.this.lambda$initEvent$9$PhoneDialog((Unit) obj);
            }
        }));
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().registerListener(this.mBluetoothPhoneCallListener);
    }

    public /* synthetic */ void lambda$initEvent$0$PhoneDialog(View view) {
        Log.d(this.TAG, "clicks(view_move): ");
        showSmall(true);
    }

    public /* synthetic */ void lambda$initEvent$1$PhoneDialog(View view) {
        Log.i(this.TAG, "clicks(tvHeadSmall): ");
        clickHeadSmall();
    }

    public /* synthetic */ void lambda$initEvent$2$PhoneDialog(View view) {
        Log.i(this.TAG, "clicks(tvHeadWaitSmall): ");
        clickHeadSmall();
    }

    public /* synthetic */ void lambda$initEvent$3$PhoneDialog(Unit unit) throws Throwable {
        Log.d(this.TAG, "clicks(llAfterSmall): ");
        dismiss();
        IntentUtils.startCallActivity(getContext(), false);
    }

    public /* synthetic */ void lambda$initEvent$4$PhoneDialog(View view) {
        Log.d(this.TAG, "clicks(imgIgnore): ");
        CarBluetoothManager.getInstance().muteRinger();
        showSmall(true);
    }

    public /* synthetic */ void lambda$initEvent$5$PhoneDialog(Unit unit) throws Throwable {
        Log.d(this.TAG, "clicks(imgHungUp): ");
        BluetoothApplication.getInstance().hangup((PhoneCall) this.imgHungUp.getTag());
    }

    public /* synthetic */ void lambda$initEvent$6$PhoneDialog(Unit unit) throws Throwable {
        Log.d(this.TAG, "clicks(llWaitBig): ");
        List<PhoneCall> phoneCalls = BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls();
        if (phoneCalls.size() > 1) {
            PhoneCall phoneCall = phoneCalls.get(0);
            PhoneCall phoneCall2 = phoneCalls.get(1);
            if (this.tvName.getText().equals(phoneCall.getCallNumber()) || this.tvName.getText().equals(phoneCall.getDisplayName())) {
                initPerson(phoneCall2);
                initWait(phoneCall);
            } else {
                initPerson(phoneCall);
                initWait(phoneCall2);
            }
        }
    }

    public /* synthetic */ void lambda$initEvent$7$PhoneDialog(Unit unit) throws Throwable {
        Log.d(this.TAG, "clicks(imgAnswer): ");
        if (BluetoothApplication.getInstance().getDataProviderManager().hasMulPhoneCall()) {
            CarBluetoothManager.getInstance().acceptNewCallHoldOld();
        } else {
            CarBluetoothManager.getInstance().answer();
        }
    }

    public /* synthetic */ void lambda$initEvent$8$PhoneDialog(Unit unit) throws Throwable {
        Log.d(this.TAG, "clicks(imgExchange): ");
        CarBluetoothManager.getInstance().switchPhoneCall();
    }

    public /* synthetic */ void lambda$initEvent$9$PhoneDialog(Unit unit) throws Throwable {
        Log.d(this.TAG, "clicks(tvHead): ");
        CarBluetoothManager.getInstance().unmuteRinger();
        dismiss();
        IntentUtils.startCallActivity(getContext(), false);
    }

    private void clickHeadSmall() {
        String str = (String) this.tvHeadSmall.getContentDescription();
        Log.i(this.TAG, "clickHeadSmall: " + str);
        if (CarBluetoothManager.getInstance().isPhoneCallMicEnable()) {
            return;
        }
        CarBluetoothManager.getInstance().setPhoneCallMicEnable(true);
        showSmall(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMicState(boolean z) {
        if (!z) {
            this.tvHeadWaitSmall.setText("");
            this.tvHeadWaitSmall.setBackground(ContextCompat.getDrawable(this.context, R.mipmap.btp_btn_mute_100px_sel));
            this.tvHeadSmall.setText("");
            this.tvHeadSmall.setBackground(ContextCompat.getDrawable(this.context, R.mipmap.btp_btn_mute_100px_sel));
            return;
        }
        initPersonWait();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initPersonWait() {
        List<PhoneCall> phoneCalls = BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls();
        if (phoneCalls.isEmpty()) {
            Log.d(this.TAG, "initPersonWait: phoneCallList.isEmpty");
            dismiss();
            return false;
        }
        if (phoneCalls.size() > 1) {
            PhoneCall phoneCall = phoneCalls.get(0);
            PhoneCall phoneCall2 = phoneCalls.get(1);
            if (phoneCall.getCallState() == 7 || phoneCall2.getCallState() == 7) {
                this.llWaitBigParent.setVisibility(8);
                this.llAfterWait.setVisibility(8);
            } else {
                this.llAfterWait.setVisibility(0);
            }
            if (phoneCall2.getCallState() != 7) {
                initPerson(phoneCall2);
                if (phoneCall.getCallState() != 7) {
                    initWait(phoneCall);
                }
            } else {
                initPerson(phoneCall);
            }
        } else {
            this.llWaitBigParent.setVisibility(8);
            this.llAfterWait.setVisibility(8);
            initPerson(phoneCalls.get(0));
        }
        return true;
    }

    private void showSmall(boolean z) {
        Log.i(this.TAG, "showSmall: " + z);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.flags = 10;
        attributes.width = -2;
        if (z) {
            this.llBefore.setVisibility(8);
            this.llAfterSmall.setVisibility(0);
            attributes.gravity = 83;
            attributes.x = 155;
            attributes.y = 10;
        } else {
            this.llBefore.setVisibility(0);
            this.llAfterSmall.setVisibility(8);
            attributes.gravity = 19;
            attributes.x = 155;
            attributes.y = 20;
        }
        getWindow().setAttributes(attributes);
    }

    private void stopUpdateTime() {
        this.mHandler.removeMessages(8192);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startUpdateTime(PhoneCall phoneCall, int i) {
        if (phoneCall == null) {
            return;
        }
        String callingTime = CommonUtils.getCallingTime(phoneCall);
        if (i == 1) {
            this.tvTime.setText(callingTime);
            this.tvTimeSmall.setText(callingTime);
        } else if (i == 2) {
            this.tvTimeBigWait.setText(callingTime);
            this.tvTimeWaitSmall.setText(callingTime);
        }
        Message obtainMessage = this.mHandler.obtainMessage(8192);
        obtainMessage.obj = phoneCall;
        obtainMessage.arg1 = i;
        this.mHandler.sendMessageDelayed(obtainMessage, 1000L);
    }

    private void initWait(PhoneCall phoneCall) {
        Log.d(this.TAG, "initWait: " + phoneCall);
        int callState = phoneCall.getCallState();
        this.llWaitBigParent.setVisibility(0);
        String displayName = phoneCall.getDisplayName() != null ? phoneCall.getDisplayName() : "";
        String callNumber = phoneCall.getCallNumber();
        if (!TextUtils.isEmpty(displayName)) {
            this.tvNameBigWait.setText(displayName);
            this.tvNameWaitSmall.setText(displayName);
            String upperCase = String.valueOf(displayName.charAt(0)).toUpperCase();
            if (CommonUtils.isLetterOrChinese(upperCase)) {
                this.tvHeadWaitSmall.setText(upperCase);
                this.tvHeadWaitSmall.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
                this.tvHeadWaitSmall.setEnabled(false);
                this.tvHeadBigWait.setText(upperCase);
                this.tvHeadBigWait.setEnabled(false);
            } else {
                this.tvHeadWaitSmall.setText("");
                this.tvHeadWaitSmall.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
                this.tvHeadWaitSmall.setEnabled(true);
                this.tvHeadBigWait.setText("");
                this.tvHeadBigWait.setEnabled(true);
            }
        } else {
            this.tvNameBigWait.setText(callNumber);
            this.tvNameWaitSmall.setText(callNumber);
            this.tvHeadBigWait.setText("");
            this.tvHeadBigWait.setEnabled(true);
            this.tvHeadWaitSmall.setText("");
            this.tvHeadWaitSmall.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
            this.tvHeadWaitSmall.setEnabled(true);
        }
        ContactBean findContacts = BluetoothApplication.getInstance().getDataProviderManager().findContacts(phoneCall);
        if (findContacts != null) {
            CommonUtils.setBackground(this.tvHeadWaitSmall, findContacts.getPhoto());
            CommonUtils.setBackground(this.tvHeadBigWait, findContacts.getPhoto());
        }
        if (phoneCall.getCallState() == 4 && !CarBluetoothManager.getInstance().isPhoneCallMicEnable()) {
            updateMicState(false);
        }
        setWaitNameTextView(true);
        if (callState == 1) {
            this.tvTimeBigWait.setText(this.context.getResources().getString(R.string.income_call_dial_tip));
            this.tvTimeWaitSmall.setText(this.context.getResources().getString(R.string.income_call_dial_tip));
            return;
        }
        if (callState == 4) {
            startUpdateTime(phoneCall, 2);
            return;
        }
        if (callState == 2) {
            this.tvTimeBigWait.setText(this.context.getResources().getString(R.string.income_call_income));
            this.tvTimeWaitSmall.setText(this.context.getResources().getString(R.string.income_call_waitting));
        } else if (callState == 7) {
            setWaitNameTextView(false);
            this.tvTimeBigWait.setText(this.context.getResources().getString(R.string.answer_over_dialog));
            this.tvTimeWaitSmall.setText(this.context.getResources().getString(R.string.answer_over_dialog));
        } else if (callState == 3) {
            this.tvTimeBigWait.setText(this.context.getResources().getString(R.string.income_call_waitting));
            this.tvTimeWaitSmall.setText(this.context.getResources().getString(R.string.income_call_waitting));
        }
    }

    private void setNameTextView(boolean z) {
        float f = z ? 1.0f : 0.2f;
        this.tvTime.setAlpha(f);
        this.tvTimeSmall.setAlpha(f);
        this.tvName.setAlpha(f);
        this.tvNameSmall.setAlpha(f);
        this.tvHeadSmall.setAlpha(f);
    }

    private void setWaitNameTextView(boolean z) {
        float f = z ? 1.0f : 0.2f;
        this.tvTimeBigWait.setAlpha(f);
        this.tvTimeWaitSmall.setAlpha(f);
        this.tvNameBigWait.setAlpha(f);
        this.tvNameWaitSmall.setAlpha(f);
        this.tvHeadWaitSmall.setAlpha(f);
    }

    private void initPerson(PhoneCall phoneCall) {
        Log.d(this.TAG, "initPerson: " + phoneCall);
        stopUpdateTime();
        String displayName = phoneCall.getDisplayName() != null ? phoneCall.getDisplayName() : "";
        String callNumber = phoneCall.getCallNumber();
        ContactBean findContacts = BluetoothApplication.getInstance().getDataProviderManager().findContacts(phoneCall);
        if (!TextUtils.isEmpty(displayName)) {
            this.tvName.setText(displayName);
            this.tvNameSmall.setText(displayName);
            String upperCase = String.valueOf(displayName.charAt(0)).toUpperCase();
            boolean isLetterOrChinese = CommonUtils.isLetterOrChinese(upperCase);
            if (findContacts != null && CommonUtils.setBackground(this.tvHeadSmall, findContacts.getPhoto())) {
                CommonUtils.setBackground(this.tvHead, findContacts.getPhoto());
            } else if (isLetterOrChinese) {
                this.tvHead.setText(upperCase);
                this.tvHead.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
                this.tvHead.setEnabled(false);
                this.tvHeadSmall.setText(upperCase);
                this.tvHeadSmall.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
                this.tvHeadSmall.setEnabled(false);
            } else {
                this.tvHead.setText("");
                this.tvHead.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
                this.tvHead.setEnabled(true);
                this.tvHeadSmall.setText("");
                this.tvHeadSmall.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
                this.tvHeadSmall.setEnabled(true);
            }
        } else {
            this.tvName.setText(callNumber);
            this.tvNameSmall.setText(callNumber);
            this.tvHead.setText("");
            this.tvHead.setEnabled(true);
            this.tvHead.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
            this.tvHeadSmall.setText("");
            this.tvHeadSmall.setBackground(ContextCompat.getDrawable(this.context, R.drawable.ic_head3));
            this.tvHeadSmall.setEnabled(true);
        }
        if (phoneCall.getCallState() == 4 && !CarBluetoothManager.getInstance().isPhoneCallMicEnable()) {
            updateMicState(false);
        }
        int callState = phoneCall.getCallState();
        this.imgExchange.setVisibility(8);
        this.imgHungUp.setTag(phoneCall);
        setNameTextView(true);
        if (callState == 7) {
            setNameTextView(false);
            this.imgHungUp.setEnabled(false);
            this.imgAnswer.setEnabled(false);
            this.imgIgnore.setEnabled(false);
            if (2 == phoneCall.getLastCallState()) {
                this.tvTime.setText(this.context.getResources().getString(R.string.ring_refuse));
                this.tvTimeSmall.setText(this.context.getResources().getString(R.string.ring_refuse));
            } else {
                this.tvTime.setText(this.context.getResources().getString(R.string.answer_over_dialog));
                this.tvTimeSmall.setText(this.context.getResources().getString(R.string.answer_over_dialog));
            }
            this.compositeDisposable.add(Observable.timer(1000L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$PhoneDialog$R9tst0Q7s4q5Fe4IpgePihG7FQo
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    PhoneDialog.this.lambda$initPerson$10$PhoneDialog((Long) obj);
                }
            }));
            setIgnore(false);
            BluetoothApplication.getInstance().getPhoneCallWindowManager().setShouldShowOSD(true);
            return;
        }
        if (callState == 4) {
            this.imgAnswer.setVisibility(8);
            this.imgIgnore.setVisibility(8);
            this.imgHungUp.setEnabled(true);
            this.imgHungUp.setVisibility(0);
            startUpdateTime(phoneCall, 1);
            return;
        }
        if (callState == 3) {
            this.imgAnswer.setVisibility(8);
            this.imgIgnore.setVisibility(8);
            this.imgHungUp.setVisibility(8);
            this.imgExchange.setVisibility(0);
            this.tvTime.setText(this.context.getResources().getString(R.string.income_call_waitting));
            this.tvTimeSmall.setText(this.context.getResources().getString(R.string.income_call_waitting));
            return;
        }
        if (callState == 1) {
            this.imgAnswer.setVisibility(8);
            this.imgIgnore.setVisibility(8);
            this.imgHungUp.setVisibility(0);
            this.imgHungUp.setEnabled(true);
            this.tvTime.setText(this.context.getResources().getString(R.string.income_call_dial_tip));
            this.tvTimeSmall.setText(this.context.getResources().getString(R.string.income_call_dial_tip));
            return;
        }
        if (callState == 2) {
            this.imgAnswer.setVisibility(0);
            this.imgIgnore.setVisibility(0);
            this.imgHungUp.setVisibility(0);
            this.imgExchange.setVisibility(8);
            this.imgHungUp.setEnabled(true);
            this.imgAnswer.setEnabled(true);
            this.imgIgnore.setEnabled(true);
            this.tvTime.setText(this.context.getResources().getString(R.string.income_call_income));
            this.tvTimeSmall.setText(this.context.getResources().getString(R.string.income_call_waitting));
        }
    }

    public /* synthetic */ void lambda$initPerson$10$PhoneDialog(Long l) throws Throwable {
        dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.isIgnore = CarBluetoothManager.getInstance().isMuteRinger();
        Log.d(this.TAG, "show,isIgnore:" + this.isIgnore);
        showSmall(this.isIgnore);
        getWindow().setDimAmount(0.0f);
        initEvent();
        if (initPersonWait()) {
            BluetoothApplication.getInstance().getPhoneCallWindowManager().setShouldShowOSD(false);
            BluetoothApplication.getInstance().getPhoneCallWindowManager().setShouldShowFull(false);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Log.d(this.TAG, "dismiss: ");
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        this.compositeDisposable = null;
        this.mHandler.removeCallbacksAndMessages(null);
        BluetoothApplication.getInstance().getCallbackManager().getBluetoothPhoneCallback().unregisterListener(this.mBluetoothPhoneCallListener);
        super.dismiss();
    }
}
