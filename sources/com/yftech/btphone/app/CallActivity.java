package com.yftech.btphone.app;

import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.jakewharton.rxbinding4.view.RxView;
import com.yftech.btphone.R;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.contract.ICallView;
import com.yftech.btphone.lib.base.view.MvpActivity;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.presenter.PhonePresenter;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.btphone.utils.IntentUtils;
import com.yftech.btphone.view.KeyboardNumView;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;

/* loaded from: /home/user/work/dex/classes.dex */
public class CallActivity extends MvpActivity<PhonePresenter> implements ICallView {
    private static final int ACTIVE_CENTER = 1;
    private static final int ACTIVE_LEFT = 0;
    private static final int ACTIVE_RIGHT = 2;
    public static final String COM_YFTECH_BTPHONE_CALLACTIVITY_CHANGE = "com.yftech.btphone.callactivity.change";
    private static final long DELAY_TIME_FINISH = 1000;
    public static final String KEY = "notifyClose";
    public static final String OPEN = "open";
    private static final int UNACTIVE_CENTER = 4;
    private static final int UNACTIVE_LEFT = 3;
    private static final int UNACTIVE_RIGHT = 5;
    private static final int WEIGHT_CENTER = 1;
    private static final int WEIGHT_LEFT = 0;
    private static final int WEIGHT_RIGHT = 2;
    private static AnimationDrawable mActiveAnimationDrawable;
    private static AnimationDrawable mWaitAnimationDrawable;

    @BindView(R.id.bottom_root)
    LinearLayout bottomRoot;

    @BindView(R.id.cb_answer)
    Button cbAnswer;

    @BindView(R.id.cb_hangup)
    Button cbHangup;

    @BindView(R.id.cb_ignore)
    Button cbIgnore;

    @BindView(R.id.cb_keyboard)
    CheckBox cbKeyboard;

    @BindView(R.id.cb_nute)
    Button cbMute;

    @BindView(R.id.cb_phone)
    Button cbPhone;

    @BindView(R.id.fl_extend)
    FrameLayout flExtend;

    @BindView(R.id.imageViewAnimal)
    ImageView imageViewAnimal;

    @BindView(R.id.imageView)
    ImageView imgBg;

    @BindView(R.id.img_exchange)
    ImageView imgExchange;

    @BindView(R.id.ll_detail)
    LinearLayout llDetail;

    @BindView(R.id.ll_keyboard_detail)
    LinearLayout llKeyboardDetail;

    @BindView(R.id.key_board)
    KeyboardNumView mKeyboardNumView;

    @BindView(R.id.people_root)
    LinearLayout peopleRoot;

    @BindView(R.id.people_root_ex)
    LinearLayout peopleRootEx;

    @BindView(R.id.tv_head)
    TextView tvHead;

    @BindView(R.id.tv_head_ex)
    TextView tvHeadEx;

    @BindView(R.id.tv_name)
    TextView tvName;

    @BindView(R.id.tv_name_ex)
    TextView tvNameEx;

    @BindView(R.id.tv_time)
    TextView tvTime;

    @BindView(R.id.tv_time_ex)
    TextView tvTimeEx;
    private final String TAG = "CallActivity";
    private final int MSG_UPDATE_CALL_TIME = 8192;
    private final int MSG_FINISH = 8193;
    private final int MSG_DELAY_NOTIFY_CLOSE = 8195;
    private Handler mHandler = new Handler() { // from class: com.yftech.btphone.app.CallActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Log.d("CallActivity", "handleMessage: " + message.what);
            if (8192 == message.what) {
                CallActivity.this.updateCallTime((PhoneCall) message.obj, message.arg1);
            } else if (8193 == message.what) {
                CallActivity.this.finish();
            } else if (8195 == message.what) {
                IntentUtils.notifyStartPhoneCallActivity(CallActivity.this.getApplicationContext());
            }
        }
    };
    private int mCurrentWeightType = 2;

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    protected int getViewLayout() {
        return R.layout.activity_income_call;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, com.yftech.btphone.lib.base.view.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout(-1, -1);
    }

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    protected void initView(Bundle bundle, Intent intent) {
        initKeyBoardView();
        initClickAfterAnswer();
        onBluetoothPhoneCallAudioStateChanged(CarBluetoothManager.getInstance().isPhoneCallAudioEnable());
        onBluetoothPhoneCallMicStateChanged(CarBluetoothManager.getInstance().isPhoneCallMicEnable());
        onBluetoothPhoneCallStateChanged(BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls());
    }

    private void initKeyBoardView() {
        this.mKeyboardNumView.setOnInputChangeListener(new KeyboardNumView.OnInputChangeListener() { // from class: com.yftech.btphone.app.CallActivity.1
            @Override // com.yftech.btphone.view.KeyboardNumView.OnInputChangeListener
            public void inputChanged(String str) {
            }

            @Override // com.yftech.btphone.view.KeyboardNumView.OnInputChangeListener
            public void addChar(String str) {
                Log.i("CallActivity", "mKeyboardNumView addChar: " + str);
                CarBluetoothManager.getInstance().sendBluetoothDTMF(str);
            }
        });
    }

    private void initClickAfterAnswer() {
        this.mKeyboardNumView.getEditText().setHint("");
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.cbAnswer).throttleFirst(DELAY_TIME_FINISH, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$WwVtRTxnCC7-hnH22htUS2gUs-s
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$0$CallActivity((Unit) obj);
            }
        }));
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.cbIgnore).throttleFirst(DELAY_TIME_FINISH, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$OhW9Nl3PccOC1EPB_3lGPiUsw5w
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$1$CallActivity((Unit) obj);
            }
        }));
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.cbHangup).throttleFirst(1500L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$0gAV2SQmdH3mI1Olc8-6Kg5T2Uw
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$2$CallActivity((Unit) obj);
            }
        }));
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.cbPhone).throttleFirst(DELAY_TIME_FINISH, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$gBLOnfeGGkNGLgACeshECbDu7EI
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$3$CallActivity((Unit) obj);
            }
        }));
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.cbMute).throttleFirst(DELAY_TIME_FINISH, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$vMiBseVTLNbdS90BFcpE066AuYo
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$4$CallActivity((Unit) obj);
            }
        }));
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.cbKeyboard).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$PyVgqU_giL7A8uRVsXz8JyxTL2I
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$5$CallActivity((Unit) obj);
            }
        }));
        ((PhonePresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.imgExchange).throttleFirst(DELAY_TIME_FINISH, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$CallActivity$WUDWysmcft20Gb1zEQ9oMQycWTU
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CallActivity.this.lambda$initClickAfterAnswer$6$CallActivity((Unit) obj);
            }
        }));
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$0$CallActivity(Unit unit) throws Throwable {
        Log.d("CallActivity", "initClickAfterAnswer: clicks(tvAnswer)");
        if (BluetoothApplication.getInstance().getDataProviderManager().hasMulPhoneCall()) {
            CarBluetoothManager.getInstance().acceptNewCallHoldOld();
        } else {
            CarBluetoothManager.getInstance().answer();
        }
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$1$CallActivity(Unit unit) throws Throwable {
        Log.d("CallActivity", "initClickAfterAnswer: clicks(tvIgnore)");
        CarBluetoothManager.getInstance().muteRinger();
        BluetoothApplication.getInstance().getPhoneCallWindowManager().showPhoneCallDialog();
        finish();
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$2$CallActivity(Unit unit) throws Throwable {
        Log.d("CallActivity", "initClickAfterAnswer: clicks(tvHungup)");
        BluetoothApplication.getInstance().hangup((PhoneCall) this.cbPhone.getTag());
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$3$CallActivity(Unit unit) throws Throwable {
        boolean isPhoneCallAudioEnable = CarBluetoothManager.getInstance().isPhoneCallAudioEnable();
        Log.d("CallActivity", "clicks cbPhone: ,audioEnable:" + isPhoneCallAudioEnable);
        CarBluetoothManager.getInstance().setPhoneCallAudioEnable(isPhoneCallAudioEnable ^ true);
        this.cbPhone.setEnabled(false);
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$4$CallActivity(Unit unit) throws Throwable {
        CarBluetoothManager.getInstance().setPhoneCallMicEnable(!CarBluetoothManager.getInstance().isPhoneCallMicEnable());
        this.cbMute.setEnabled(false);
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$5$CallActivity(Unit unit) throws Throwable {
        updateKeyboard(this.cbKeyboard.isChecked());
    }

    public /* synthetic */ void lambda$initClickAfterAnswer$6$CallActivity(Unit unit) throws Throwable {
        Log.d("CallActivity", "initClickAfterAnswer: clicks(imgExchange),mCurrentWeightType:" + this.mCurrentWeightType);
        if (BluetoothApplication.getInstance().getDataProviderManager().hasMulPhoneCall()) {
            if (2 == this.mCurrentWeightType) {
                this.mCurrentWeightType = 0;
            } else {
                this.mCurrentWeightType = 2;
            }
            if (BluetoothApplication.getInstance().getDataProviderManager().getStatePhoneCall(3) != null) {
                CarBluetoothManager.getInstance().switchPhoneCall();
            } else {
                logd("not find PHONE_CALL_STATE_HOLDING ");
                onBluetoothPhoneCallStateChanged(BluetoothApplication.getInstance().getDataProviderManager().getPhoneCalls());
            }
        }
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        BluetoothApplication.getInstance().getPhoneCallWindowManager().setShouldShowFull(false);
        CarBluetoothManager.getInstance().unmuteRinger();
        boolean booleanExtra = getIntent().getBooleanExtra(KEY, false);
        Log.i("CallActivity", "onResume,notifyClose:" + booleanExtra);
        this.mHandler.removeMessages(8195);
        if (booleanExtra) {
            this.mHandler.sendEmptyMessageDelayed(8195, 200L);
        }
        sendActivityStateBroadcast2SystemUi(true);
    }

    private void sendActivityStateBroadcast2SystemUi(boolean z) {
        Intent intent = new Intent(COM_YFTECH_BTPHONE_CALLACTIVITY_CHANGE);
        intent.putExtra(OPEN, z);
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        sendActivityStateBroadcast2SystemUi(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.mHandler.removeMessages(8195);
    }

    @Override // android.app.Activity
    public void finish() {
        Log.d("CallActivity", "finish: ");
        try {
            throw new Exception();
        } catch (Exception e) {
            e.printStackTrace();
            sendActivityStateBroadcast2SystemUi(false);
            super.finish();
        }
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, com.yftech.btphone.lib.base.view.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.mHandler.removeCallbacksAndMessages(null);
        if (this.imageViewAnimal.getDrawable() != null) {
            ((AnimationDrawable) this.imageViewAnimal.getDrawable()).stop();
        }
        super.onDestroy();
    }

    @Override // com.yftech.btphone.contract.ICallView
    public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
        this.mHandler.removeMessages(8193);
        if (list.isEmpty()) {
            logd("onBluetoothPhoneCallStateChanged, phoneCalls.isEmpty");
            finish();
            return;
        }
        PhoneCall phoneCall = list.get(0);
        if (1 == list.size()) {
            this.cbKeyboard.setChecked(false);
            this.peopleRootEx.setVisibility(8);
            this.mCurrentWeightType = 1;
            changeWeight(1, phoneCall.getCallState());
            updatePhoneCallDetail(phoneCall);
            return;
        }
        PhoneCall phoneCall2 = list.get(1);
        updateKeyboard(false);
        if (1 == this.mCurrentWeightType) {
            this.mCurrentWeightType = 2;
        }
        if (3 == phoneCall.getCallState() && 2 == this.mCurrentWeightType) {
            this.mCurrentWeightType = 0;
        } else if (3 == phoneCall2.getCallState() && this.mCurrentWeightType == 0) {
            this.mCurrentWeightType = 2;
        }
        changeWeight(this.mCurrentWeightType);
        int i = this.mCurrentWeightType;
        if (i == 0) {
            updatePhoneCallDetail(phoneCall2);
            updatePhoneCallExtend(phoneCall);
        } else if (2 == i) {
            updatePhoneCallDetail(phoneCall);
            updatePhoneCallExtend(phoneCall2);
        }
    }

    @Override // com.yftech.btphone.contract.ICallView
    public void onBluetoothPhoneCallAudioStateChanged(boolean z) {
        PhoneCall phoneCall = (PhoneCall) this.cbPhone.getTag();
        logd("onBluetoothPhoneCallAudioStateChanged:" + z);
        if (this.cbPhone.getVisibility() == 0) {
            if (phoneCall != null && 4 == phoneCall.getCallState()) {
                this.cbPhone.setEnabled(true);
            }
            this.cbPhone.setSelected(!z);
        } else {
            logd("onBluetoothPhoneCallAudioStateChanged, ignore");
        }
        if (!z) {
            this.cbMute.setEnabled(false);
            this.cbKeyboard.setChecked(false);
            updateKeyboard(false);
            this.cbKeyboard.setEnabled(false);
            return;
        }
        if (phoneCall == null || 4 != phoneCall.getCallState()) {
            return;
        }
        this.cbMute.setEnabled(true);
        this.cbKeyboard.setEnabled(true);
    }

    @Override // com.yftech.btphone.contract.ICallView
    public void onBluetoothPhoneCallMicStateChanged(boolean z) {
        logd("onBluetoothPhoneCallMicStateChanged:" + z);
        this.cbMute.setEnabled(true);
        this.cbMute.setSelected(z ^ true);
    }

    private void updateKeyboard(boolean z) {
        logd("updateKeyboard:" + z);
        if (z) {
            this.llKeyboardDetail.setVisibility(0);
            if (BluetoothApplication.getInstance().getDataProviderManager().hasMulPhoneCall()) {
                this.peopleRootEx.setVisibility(8);
            } else {
                changeWeight(this.mCurrentWeightType);
            }
            this.mKeyboardNumView.requestFocusEdit();
            if (1 == this.mCurrentWeightType) {
                this.mCurrentWeightType = 2;
                changeWeight(this.mCurrentWeightType);
                return;
            }
            return;
        }
        this.llKeyboardDetail.setVisibility(8);
        if (BluetoothApplication.getInstance().getDataProviderManager().hasMulPhoneCall()) {
            this.peopleRootEx.setVisibility(0);
        } else {
            this.mCurrentWeightType = 1;
            changeWeight(1);
        }
    }

    private void stopUpdateTime() {
        this.mHandler.removeMessages(8192);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCallTime(PhoneCall phoneCall, int i) {
        if (phoneCall == null) {
            logd("updateCallTime, phoneCall is null");
            return;
        }
        this.mHandler.removeMessages(8192);
        logd("updateCallTime, mCurrentWeightType:" + this.mCurrentWeightType + ",flag:" + i + ", phoneCall:" + phoneCall);
        if (4 != phoneCall.getCallState()) {
            return;
        }
        if (i == 0) {
            this.tvTimeEx.setText(CommonUtils.getCallingTime(phoneCall));
        } else {
            this.tvTime.setText(CommonUtils.getCallingTime(phoneCall));
        }
        Message obtainMessage = this.mHandler.obtainMessage(8192);
        obtainMessage.obj = phoneCall;
        obtainMessage.arg1 = i;
        this.mHandler.sendMessageDelayed(obtainMessage, DELAY_TIME_FINISH);
    }

    private void removeMessageFinish() {
        this.mHandler.removeMessages(8193);
    }

    private void sendMessageFinish() {
        removeMessageFinish();
        this.mHandler.sendEmptyMessageDelayed(8193, DELAY_TIME_FINISH);
        SearchActivity searchActivity = (SearchActivity) AppManager.getAppManager().getActivity(SearchActivity.class);
        if (searchActivity != null) {
            searchActivity.checkShouldClose();
        }
    }

    private void updatePhoneCallDetail(PhoneCall phoneCall) {
        logd("updatePhoneCallDetail:" + phoneCall);
        String displayName = phoneCall.getDisplayName();
        if (TextUtils.isEmpty(displayName)) {
            displayName = CommonUtils.getNumberWithSplit(phoneCall.getCallNumber());
            this.tvName.setTextDirection(3);
        } else {
            this.tvName.setTextDirection(5);
        }
        this.tvName.setText(displayName);
        String firstText = CommonUtils.getFirstText(displayName);
        if (!TextUtils.isEmpty(firstText)) {
            this.tvHead.setText(firstText);
            this.tvHead.setVisibility(0);
            this.tvHead.setEnabled(false);
        } else {
            this.tvHead.setText("");
            this.tvHead.setEnabled(true);
        }
        this.tvHead.setBackgroundResource(R.drawable.ic_head2);
        ContactBean findContacts = BluetoothApplication.getInstance().getDataProviderManager().findContacts(phoneCall);
        if (findContacts != null) {
            CommonUtils.setBackground(this.tvHead, findContacts.getPhoto());
        }
        stopUpdateTime();
        removeMessageFinish();
        this.cbPhone.setTag(phoneCall);
        int callState = phoneCall.getCallState();
        if (callState == 1) {
            this.tvTime.setText(getString(R.string.income_call_dial_tip));
            this.cbHangup.setVisibility(0);
            this.cbHangup.setEnabled(true);
            this.cbAnswer.setVisibility(8);
            this.cbMute.setVisibility(0);
            this.cbMute.setEnabled(false);
            this.cbPhone.setVisibility(0);
            this.cbPhone.setEnabled(false);
            this.cbKeyboard.setVisibility(0);
            this.cbKeyboard.setEnabled(false);
            this.cbKeyboard.setChecked(false);
            this.cbIgnore.setVisibility(8);
            return;
        }
        if (callState == 2) {
            this.tvTime.setText(getString(R.string.income_call_income));
            this.cbHangup.setVisibility(0);
            this.cbHangup.setEnabled(true);
            this.cbAnswer.setVisibility(0);
            this.cbMute.setVisibility(8);
            this.cbMute.setEnabled(false);
            this.cbPhone.setVisibility(8);
            this.cbPhone.setEnabled(false);
            this.cbKeyboard.setVisibility(8);
            this.cbKeyboard.setEnabled(false);
            this.cbKeyboard.setChecked(false);
            this.cbIgnore.setVisibility(0);
            return;
        }
        if (callState == 3) {
            this.cbIgnore.setVisibility(8);
            this.cbAnswer.setVisibility(8);
            return;
        }
        if (callState == 4) {
            this.cbHangup.setVisibility(0);
            this.cbHangup.setEnabled(true);
            this.cbAnswer.setVisibility(8);
            this.cbMute.setVisibility(0);
            this.cbMute.setEnabled(true);
            this.cbPhone.setVisibility(0);
            this.cbPhone.setEnabled(true);
            this.cbKeyboard.setVisibility(0);
            this.cbKeyboard.setEnabled(true);
            this.cbKeyboard.setChecked(false);
            this.cbIgnore.setVisibility(8);
            onBluetoothPhoneCallMicStateChanged(CarBluetoothManager.getInstance().isPhoneCallMicEnable());
            onBluetoothPhoneCallAudioStateChanged(CarBluetoothManager.getInstance().isPhoneCallAudioEnable());
            updateCallTime(phoneCall, 1);
            return;
        }
        if (callState != 7) {
            return;
        }
        this.cbHangup.setVisibility(0);
        this.cbHangup.setEnabled(false);
        this.cbAnswer.setVisibility(8);
        this.cbMute.setVisibility(0);
        this.cbMute.setEnabled(false);
        this.cbPhone.setVisibility(0);
        this.cbPhone.setEnabled(false);
        this.cbKeyboard.setVisibility(0);
        this.cbKeyboard.setChecked(false);
        this.cbKeyboard.setEnabled(false);
        this.cbIgnore.setVisibility(8);
        this.tvTime.setText(getString(R.string.answer_over));
        sendMessageFinish();
    }

    private void updatePhoneCallExtend(PhoneCall phoneCall) {
        logd("updatePhoneCallExtend:" + phoneCall);
        this.flExtend.setVisibility(0);
        this.peopleRootEx.setVisibility(0);
        this.flExtend.bringChildToFront(this.llKeyboardDetail);
        String displayName = phoneCall.getDisplayName();
        if (TextUtils.isEmpty(displayName)) {
            displayName = phoneCall.getCallNumber();
        }
        this.tvNameEx.setText(displayName);
        String firstText = CommonUtils.getFirstText(displayName);
        if (!TextUtils.isEmpty(firstText)) {
            this.tvHeadEx.setText(firstText);
            this.tvHeadEx.setEnabled(false);
        } else {
            this.tvHeadEx.setText("");
            this.tvHeadEx.setEnabled(true);
        }
        this.tvHeadEx.setBackgroundResource(R.drawable.ic_head2);
        ContactBean findContacts = BluetoothApplication.getInstance().getDataProviderManager().findContacts(phoneCall);
        if (findContacts != null) {
            CommonUtils.setBackground(this.tvHeadEx, findContacts.getPhoto());
        }
        this.imgExchange.setVisibility(0);
        this.tvTimeEx.setText(getString(R.string.income_call_waitting));
        int callState = phoneCall.getCallState();
        if (callState == 1) {
            this.tvTimeEx.setText(getString(R.string.income_call_dial_tip));
            return;
        }
        if (callState == 2) {
            this.tvTimeEx.setText(getString(R.string.income_call_income));
            return;
        }
        if (callState == 3) {
            this.tvTimeEx.setText(getString(R.string.income_call_waitting));
        } else if (callState == 4) {
            updateCallTime(phoneCall, 0);
        } else {
            if (callState != 7) {
                return;
            }
            this.tvTimeEx.setText(getString(R.string.answer_over));
        }
    }

    private void changeWeight(int i) {
        logd("changeWeight:" + i);
        changeWeight(i, -1);
    }

    private void changeWeight(int i, int i2) {
        if (i == 0) {
            this.flExtend.setVisibility(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.llDetail.getLayoutParams();
            layoutParams.gravity = 19;
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 175;
            this.llDetail.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.flExtend.getLayoutParams();
            layoutParams2.gravity = 21;
            this.flExtend.setLayoutParams(layoutParams2);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.peopleRootEx.getLayoutParams();
            layoutParams3.gravity = 19;
            layoutParams3.topMargin = 30;
            this.peopleRootEx.setLayoutParams(layoutParams3);
            updateBackground(0);
            updateCallingAnimal(0);
            return;
        }
        if (i == 1) {
            if (this.cbKeyboard.isEnabled() && this.cbKeyboard.isChecked()) {
                this.flExtend.setVisibility(0);
            } else {
                this.flExtend.setVisibility(8);
            }
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.llDetail.getLayoutParams();
            layoutParams4.gravity = 17;
            layoutParams4.rightMargin = 0;
            layoutParams4.leftMargin = 0;
            this.llDetail.setLayoutParams(layoutParams4);
            if (i2 == -1) {
                updateBackground(1);
                updateCallingAnimal(1);
                return;
            } else {
                updateBackground(i2 == 4 ? 1 : 4);
                updateCallingAnimal(i2 == 4 ? 1 : 4);
                return;
            }
        }
        if (i != 2) {
            return;
        }
        this.flExtend.setVisibility(0);
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.llDetail.getLayoutParams();
        layoutParams5.gravity = 21;
        layoutParams5.rightMargin = 145;
        layoutParams5.leftMargin = 0;
        this.llDetail.setLayoutParams(layoutParams5);
        FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) this.flExtend.getLayoutParams();
        layoutParams6.gravity = 19;
        this.flExtend.setLayoutParams(layoutParams6);
        FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) this.peopleRootEx.getLayoutParams();
        layoutParams7.gravity = 21;
        layoutParams7.topMargin = 30;
        this.peopleRootEx.setLayoutParams(layoutParams7);
        updateBackground(2);
        updateCallingAnimal(2);
    }

    private void updateBackground(int i) {
        int i2 = R.mipmap.bg_phone_call_right;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                i2 = R.mipmap.call_unactive_mid;
                            }
                        }
                    }
                }
                this.imgBg.setBackgroundResource(i2);
            }
            i2 = 2131492865;
            this.imgBg.setBackgroundResource(i2);
        }
        i2 = 2131492864;
        this.imgBg.setBackgroundResource(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateCallingAnimal(int i) {
        if (this.imageViewAnimal.getDrawable() != null) {
            ((AnimationDrawable) this.imageViewAnimal.getDrawable()).stop();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.imageViewAnimal.getLayoutParams();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                layoutParams.gravity = 81;
                                this.imageViewAnimal.setLayoutParams(layoutParams);
                                if (i <= 2) {
                                    if (mWaitAnimationDrawable == null) {
                                        mWaitAnimationDrawable = (AnimationDrawable) getDrawable(R.drawable.bt_calling_wait);
                                    }
                                    this.imageViewAnimal.setImageDrawable(mWaitAnimationDrawable);
                                    mWaitAnimationDrawable.start();
                                    return;
                                }
                                if (mActiveAnimationDrawable == null) {
                                    mActiveAnimationDrawable = (AnimationDrawable) getDrawable(R.drawable.bt_calling_active);
                                }
                                this.imageViewAnimal.setImageDrawable(mActiveAnimationDrawable);
                                mActiveAnimationDrawable.start();
                                return;
                            }
                        }
                    }
                }
                layoutParams.gravity = 85;
                this.imageViewAnimal.setLayoutParams(layoutParams);
                if (i <= 2) {
                }
            }
            layoutParams.gravity = 81;
            this.imageViewAnimal.setLayoutParams(layoutParams);
            if (i <= 2) {
            }
        }
        layoutParams.gravity = 83;
        this.imageViewAnimal.setLayoutParams(layoutParams);
        if (i <= 2) {
        }
    }
}
