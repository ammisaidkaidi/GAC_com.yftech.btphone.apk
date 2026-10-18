package com.yftech.btphone.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.badge.BadgeDrawable;
import com.yftech.btphone.R;
import com.yftech.btphone.proxy.TBoxViewManager;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.car.screen.CarScreenManager;
import io.reactivex.rxjava3.disposables.CompositeDisposable;

/* loaded from: /home/user/work/dex/classes.dex */
public class EcallDialog extends Dialog {
    private static final int FINISH_TIMEOUT = 1000;
    private static final int MSG_DELAY_FINISH = 1;
    private static final int MSG_UPDATE_TIME = 2;
    private final boolean SHOW_DIALOG;
    private String TAG;
    private CompositeDisposable compositeDisposable;
    private final AudioManager.OnAudioFocusChangeListener ecallAudioFocusListener;
    private AnimationDrawable mActiveAnimationDrawable;
    private AudioFocusRequest mAudioFocusRequestPhone;
    private AudioManager mAudioManager;
    private Handler mHandler;
    private View mRootView;
    private long mStartTime;
    private AnimationDrawable mWaitAnimationDrawable;

    public void updateHangupEnabled(boolean z) {
    }

    public EcallDialog(Context context) {
        super(context, R.style.dialog_window);
        this.TAG = "EcallDialog";
        this.mStartTime = 0L;
        this.mAudioFocusRequestPhone = null;
        this.SHOW_DIALOG = false;
        this.mHandler = new Handler() { // from class: com.yftech.btphone.app.EcallDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (1 == message.what) {
                    EcallDialog.this.onEndEcall();
                } else if (2 == message.what) {
                    EcallDialog.this.updateTime();
                }
            }
        };
        this.ecallAudioFocusListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.btphone.app.EcallDialog.2
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                Log.i(EcallDialog.this.TAG, "onAudioFocusChange,focusChange:" + i);
                if (i == -3 || i == -2 || i != -1) {
                }
            }
        };
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        getWindow().setType(Config.TYPE_ECALL);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getWindow().addFlags(8);
        super.onCreate(bundle);
        Log.i(this.TAG, "onCreate: ");
        setContentView(R.layout.activity_be_call);
        initEvent();
        setCanceledOnTouchOutside(false);
    }

    private void initEvent() {
        if (this.compositeDisposable != null) {
            return;
        }
        this.compositeDisposable = new CompositeDisposable();
        this.mRootView = LayoutInflater.from(getContext()).inflate(R.layout.activity_be_call, (ViewGroup) null);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Log.i(this.TAG, "show");
        Window window = getWindow();
        window.setDimAmount(0.0f);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.flags = 2050;
        attributes.gravity = BadgeDrawable.TOP_START;
        attributes.y = 72;
        window.setAttributes(attributes);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Log.i(this.TAG, "dismiss: ");
        release();
        super.dismiss();
    }

    public void release() {
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
            this.compositeDisposable = null;
        }
        this.mStartTime = 0L;
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public View getRootView() {
        return this.mRootView;
    }

    public void showView(Context context) {
        initEvent();
        showWindowView(context);
    }

    public void closeView(Context context) {
        release();
        hideWindowView();
    }

    public boolean isViewShow() {
        if (getRootView() != null) {
            return getRootView().isShown();
        }
        return false;
    }

    public void onOutgoing(Context context) {
        try {
            this.mStartTime = 0L;
            removeMessageUpdateTime();
            removeMessageFinish();
            TBoxViewManager.getInstance().checkAudio(1);
            requestPhoneAudioFocus();
            showView(context);
            updateState(0, context.getString(R.string.income_call_dial_tip));
            updateTimeVisible(false);
            updateHangupEnabled(true);
            startAnimal(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onEcallActive(Context context) {
        try {
            removeMessageFinish();
            TBoxViewManager.getInstance().checkAudio(1);
            requestPhoneAudioFocus();
            showView(context);
            updateState(8, context.getString(R.string.income_call_dial_tip));
            updateTimeVisible(true);
            updateHangupEnabled(true);
            updateTime();
            startAnimal(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onEcallOver(Context context) {
        try {
            this.mStartTime = 0L;
            removeMessageUpdateTime();
            if (isViewShow()) {
                stopActiveAnimal();
                updateState(0, context.getString(R.string.answer_over));
                updateTimeVisible(false);
                updateHangupEnabled(false);
                sendMessageFinish();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onEcallOther(Context context) {
        try {
            this.mStartTime = 0L;
            removeMessageUpdateTime();
            if (this.mHandler.hasMessages(1)) {
                return;
            }
            onEndEcall();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEndEcall() {
        try {
            Log.i(this.TAG, "onEndEcall: ");
            stopAnimal();
            CarScreenManager.getInstance().closeScreenBrightness(0);
            closeView(BluetoothApplication.getInstance());
            abandonPhoneAudioFocus();
            TBoxViewManager.getInstance().checkAudio(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateTime() {
        try {
            String secToTime = CommonUtils.secToTime(this.mStartTime);
            Log.i(this.TAG, "updateTime: " + secToTime);
            ((TextView) this.mRootView.findViewById(R.id.becall_tv_time)).setText(secToTime);
            if (this.mHandler.hasMessages(2)) {
                return;
            }
            this.mStartTime++;
            sendMessageUpdateTime();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateState(int i, String str) {
        ((TextView) this.mRootView.findViewById(R.id.becall_tv_tip)).setVisibility(i);
        ((TextView) this.mRootView.findViewById(R.id.becall_tv_tip)).setText(str);
    }

    public void updateTimeVisible(boolean z) {
        this.mRootView.findViewById(R.id.becall_tv_time).setVisibility(z ? 0 : 8);
    }

    private void startAnimal(boolean z) {
        try {
            if (getRootView() == null) {
                Log.i(this.TAG, "startAnimal: rootView is null");
                return;
            }
            ImageView imageView = (ImageView) getRootView().findViewById(R.id.imageViewAnimal);
            if (imageView == null) {
                Log.i(this.TAG, "startAnimal: imageViewAnimal is null");
                return;
            }
            if (!z) {
                if (this.mWaitAnimationDrawable == null) {
                    this.mWaitAnimationDrawable = (AnimationDrawable) getRootView().getResources().getDrawable(R.drawable.bt_calling_wait);
                }
                imageView.setImageDrawable(this.mWaitAnimationDrawable);
                if (this.mWaitAnimationDrawable.isRunning()) {
                    return;
                }
                this.mWaitAnimationDrawable.start();
                return;
            }
            if (this.mActiveAnimationDrawable == null) {
                this.mActiveAnimationDrawable = (AnimationDrawable) getRootView().getResources().getDrawable(R.drawable.bt_calling_active);
            }
            imageView.setImageDrawable(this.mActiveAnimationDrawable);
            if (this.mActiveAnimationDrawable.isRunning()) {
                return;
            }
            this.mActiveAnimationDrawable.start();
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
    }

    private void stopAnimal() {
        stopWaitAnimal();
        stopActiveAnimal();
    }

    private void stopWaitAnimal() {
        AnimationDrawable animationDrawable = this.mWaitAnimationDrawable;
        if (animationDrawable != null) {
            if (animationDrawable.isRunning()) {
                this.mWaitAnimationDrawable.stop();
            }
            this.mWaitAnimationDrawable = null;
        }
    }

    private void stopActiveAnimal() {
        AnimationDrawable animationDrawable = this.mActiveAnimationDrawable;
        if (animationDrawable != null) {
            if (animationDrawable.isRunning()) {
                this.mActiveAnimationDrawable.stop();
            }
            this.mActiveAnimationDrawable = null;
        }
    }

    public void sendMessageUpdateTime() {
        removeMessageUpdateTime();
        this.mHandler.sendEmptyMessageDelayed(2, 1000L);
    }

    public void removeMessageUpdateTime() {
        this.mHandler.removeMessages(2);
    }

    private void sendMessageFinish() {
        removeMessageFinish();
        this.mHandler.sendEmptyMessageDelayed(1, 1000L);
    }

    private void removeMessageFinish() {
        this.mHandler.removeMessages(1);
    }

    public void abandonPhoneAudioFocus() {
        Log.i(this.TAG, "abandonPhoneAudioFocus");
        AudioFocusRequest audioFocusRequest = this.mAudioFocusRequestPhone;
        if (audioFocusRequest != null) {
            this.mAudioManager.abandonAudioFocusRequest(audioFocusRequest);
            this.mAudioFocusRequestPhone = null;
        }
    }

    public int requestPhoneAudioFocus() {
        if (this.mAudioFocusRequestPhone == null) {
            this.mAudioFocusRequestPhone = new AudioFocusRequest.Builder(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(30).setLegacyStreamType(23).setContentType(2).build()).setOnAudioFocusChangeListener(this.ecallAudioFocusListener).build();
            int requestAudioFocus = this.mAudioManager.requestAudioFocus(this.mAudioFocusRequestPhone);
            Log.i(this.TAG, "requestPhoneAudioFocus:" + requestAudioFocus);
            return 0;
        }
        Log.i(this.TAG, "requestPhoneAudioFocus already");
        return 0;
    }

    private void showWindowView(Context context) {
        Log.i(this.TAG, "show: ");
        TBoxViewManager.getInstance().setMuteForEcall(true);
        addCallView(context, getRootView());
        CarScreenManager.getInstance().openScreenBrightness(0);
    }

    private void hideWindowView() {
        Log.i(this.TAG, "hide: ");
        TBoxViewManager.getInstance().setMuteForEcall(false);
        if (getRootView() == null) {
            return;
        }
        removeCallView(BluetoothApplication.getInstance(), getRootView());
    }

    public boolean addCallView(Context context, View view) {
        Log.i(this.TAG, "addCallView:" + view);
        return addCallView(context, view, createWindowManagerLayoutParams(Config.TYPE_ECALL, 48, -1, -1));
    }

    public boolean addCallView(Context context, View view, WindowManager.LayoutParams layoutParams) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null && !view.isShown()) {
            windowManager.addView(view, layoutParams);
            return true;
        }
        if (windowManager == null) {
            return false;
        }
        windowManager.updateViewLayout(view, layoutParams);
        return false;
    }

    public WindowManager.LayoutParams createWindowManagerLayoutParams(int i, int i2, int i3, int i4) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(2038, 524288);
        layoutParams.type = i;
        layoutParams.flags |= 8521512;
        layoutParams.format = 1;
        layoutParams.gravity = i2;
        layoutParams.width = i3;
        layoutParams.height = i4;
        return layoutParams;
    }

    public boolean removeCallView(Context context, View view) {
        WindowManager windowManager;
        if (view == null || (windowManager = (WindowManager) context.getSystemService("window")) == null || view == null || !view.isShown()) {
            return false;
        }
        Log.i(this.TAG, "removeCallView:" + view);
        windowManager.removeView(view);
        return true;
    }
}
