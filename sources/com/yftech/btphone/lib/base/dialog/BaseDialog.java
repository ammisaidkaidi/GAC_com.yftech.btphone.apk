package com.yftech.btphone.lib.base.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.MotionEvent;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseDialog extends Dialog {
    private final int MSG_SHOW_TIMEOUT;
    private final int MSG_SHOW_UPDATE;
    private String TAG;
    private int count;
    private boolean isCanceledOnTouchOutside;
    protected Handler mHandler;
    private Object mObject;
    private int mType;

    protected abstract int getWindowType();

    protected void updateAttributes(Dialog dialog) {
    }

    public void updateCount(int i) {
    }

    static /* synthetic */ int access$004(BaseDialog baseDialog) {
        int i = baseDialog.count + 1;
        baseDialog.count = i;
        return i;
    }

    public BaseDialog(Context context, int i) {
        super(context, i);
        this.TAG = "BaseDialog";
        this.MSG_SHOW_TIMEOUT = 0;
        this.MSG_SHOW_UPDATE = 1;
        this.count = 0;
        this.isCanceledOnTouchOutside = false;
        this.mHandler = new Handler() { // from class: com.yftech.btphone.lib.base.dialog.BaseDialog.1
            @Override // android.os.Handler
            public void dispatchMessage(Message message) {
                super.dispatchMessage(message);
                if (message.what == 0) {
                    BaseDialog.this.onTimeout();
                } else if (message.what == 1) {
                    BaseDialog.this.mHandler.sendEmptyMessageDelayed(1, 1000L);
                    BaseDialog baseDialog = BaseDialog.this;
                    baseDialog.updateCount(BaseDialog.access$004(baseDialog));
                }
            }
        };
        setCanceledOnTouchOutside(false);
        getWindow().setType(getWindowType());
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        updateAttributes(this);
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        this.isCanceledOnTouchOutside = z;
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Log.d(this.TAG, "onTouchEvent: " + motionEvent + ",isCanceledOnTouchOutside:" + this.isCanceledOnTouchOutside);
        if (motionEvent.getAction() == 4 && this.isCanceledOnTouchOutside) {
            dismiss();
        }
        return super.onTouchEvent(motionEvent);
    }

    public int getType() {
        return this.mType;
    }

    public void setType(int i) {
        this.mType = i;
    }

    public Object getObject() {
        return this.mObject;
    }

    public void setObject(Object obj) {
        this.mObject = obj;
    }

    @Override // android.app.Dialog
    public void show() {
        Log.d(this.TAG, "show,type: " + this.mType);
        try {
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void show(int i) {
        this.count = 0;
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(0);
        this.mHandler.sendEmptyMessageDelayed(0, i);
        this.mHandler.sendEmptyMessageDelayed(1, 1000L);
        show();
    }

    public void onTimeout() {
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        Log.d(this.TAG, "cancel: ");
        this.mHandler.removeCallbacksAndMessages(null);
        this.count = 0;
        super.cancel();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Log.d(this.TAG, "dismiss: ");
        this.mHandler.removeCallbacksAndMessages(null);
        this.count = 0;
        super.dismiss();
    }
}
