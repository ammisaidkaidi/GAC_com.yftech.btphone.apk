package com.yftech.btphone.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.yftech.btphone.lib.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class SwitchButton extends View implements View.OnClickListener {
    private String TAG;
    private Bitmap bg_off;
    private Bitmap bg_on;
    private OnChangedListener listener;
    private long mLastTimeClick;
    private long mSpaceTimeClick;
    private boolean nowStatus;
    private Bitmap slipper_btn_no;
    private Bitmap slipper_btn_off;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnChangedListener {
        default void OnChanged(SwitchButton switchButton, boolean z) {
        }

        default void click(SwitchButton switchButton) {
        }

        default void slidingSwitchState(int i) {
        }
    }

    public SwitchButton(Context context) {
        this(context, null);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "SwitchButton";
        this.nowStatus = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 500L;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MySwitch, i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_on);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_off);
        Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_slipper_on);
        BitmapDrawable bitmapDrawable = (BitmapDrawable) obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_slipper_off);
        this.bg_on = ((BitmapDrawable) drawable).getBitmap();
        this.bg_off = ((BitmapDrawable) drawable2).getBitmap();
        this.slipper_btn_no = ((BitmapDrawable) drawable3).getBitmap();
        this.slipper_btn_off = bitmapDrawable.getBitmap();
        obtainStyledAttributes.recycle();
        init();
    }

    public void init() {
        setOnClickListener(this);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setClickable(z);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Matrix matrix = new Matrix();
        Paint paint = new Paint();
        if (!this.nowStatus) {
            canvas.drawBitmap(this.bg_off, matrix, paint);
        } else {
            canvas.drawBitmap(this.bg_on, matrix, paint);
        }
        float width = this.nowStatus ? this.bg_on.getWidth() - this.slipper_btn_no.getWidth() : 0.0f;
        if (width < 0.0f) {
            width = 0.0f;
        } else if (width > this.bg_on.getWidth() - this.slipper_btn_no.getWidth()) {
            width = this.bg_on.getWidth() - this.slipper_btn_no.getWidth();
        }
        if (width < this.bg_on.getWidth() / 2) {
            canvas.drawBitmap(this.slipper_btn_no, width, 0.0f, paint);
        } else {
            canvas.drawBitmap(this.slipper_btn_off, width, 0.0f, paint);
        }
    }

    public void setOnChangedListener(OnChangedListener onChangedListener) {
        this.listener = onChangedListener;
    }

    public void setChecked(boolean z) {
        this.nowStatus = z;
        invalidate();
    }

    public boolean isChecked() {
        return this.nowStatus;
    }

    public void setSpaceTimeClick(long j) {
        this.mSpaceTimeClick = j;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Log.d(this.TAG, "onClick");
        if (!isEnabled()) {
            Log.d(getClass().getSimpleName(), "onTouch: isEnabled false");
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.mLastTimeClick < this.mSpaceTimeClick) {
            Log.d(this.TAG, "onClick quickly");
            return;
        }
        this.mLastTimeClick = elapsedRealtime;
        OnChangedListener onChangedListener = this.listener;
        if (onChangedListener != null) {
            onChangedListener.OnChanged(this, !this.nowStatus);
        }
    }
}
