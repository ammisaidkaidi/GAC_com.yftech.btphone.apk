package com.yftech.btphone.lib.view;

import android.R;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;

/* loaded from: /home/user/work/dex/classes.dex */
public class CToast {
    private static CToast mInstance;
    private Context mContext;
    private float mHorizontalMargin;
    private Typeface mTypeface;
    private float mVerticalMargin;
    private View mView;
    private WindowManager mWM;
    private int mX;
    private int mY;
    private final Handler mHandler = new Handler();
    private int mDuration = PathInterpolatorCompat.MAX_NUM_POINTS;
    private int mGravity = 49;
    private int mHeight = -2;
    private int mParamsType = 2;
    private final WindowManager.LayoutParams mParams = new WindowManager.LayoutParams();
    private int mTextSize = 28;
    private final Runnable mShow = new Runnable() { // from class: com.yftech.btphone.lib.view.CToast.1
        @Override // java.lang.Runnable
        public void run() {
            CToast.this.handleShow();
        }
    };
    private final Runnable mHide = new Runnable() { // from class: com.yftech.btphone.lib.view.CToast.2
        @Override // java.lang.Runnable
        public void run() {
            CToast.this.handleHide();
        }
    };

    public static CToast getInstance() {
        if (mInstance == null) {
            mInstance = new CToast();
        }
        return mInstance;
    }

    private CToast() {
    }

    public View getView() {
        return this.mView;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setMargin(float f, float f2) {
        this.mHorizontalMargin = f;
        this.mVerticalMargin = f2;
    }

    public float getHorizontalMargin() {
        return this.mHorizontalMargin;
    }

    public float getVerticalMargin() {
        return this.mVerticalMargin;
    }

    public void setGravity(int i, int i2, int i3) {
        this.mGravity = i;
        this.mX = i2;
        this.mY = i3;
    }

    public void setHeight(int i) {
        this.mHeight = i;
        initParams();
    }

    public int getGravity() {
        return this.mGravity;
    }

    public int getXOffset() {
        return this.mX;
    }

    public int getYOffset() {
        return this.mY;
    }

    public void setParamsType(int i) {
        this.mParamsType = i;
        initParams();
    }

    public void setTextSize(int i) {
        this.mTextSize = i;
        View view = this.mView;
        if (view == null || !(view instanceof TextView)) {
            return;
        }
        ((TextView) view).setTextSize(this.mTextSize);
    }

    public void setTypeface(Typeface typeface) {
        this.mTypeface = typeface;
        View view = this.mView;
        if (view == null || !(view instanceof TextView)) {
            return;
        }
        ((TextView) view).setTypeface(typeface);
    }

    public void show() {
        this.mHandler.removeCallbacks(this.mHide);
        this.mHandler.removeCallbacks(this.mShow);
        this.mHandler.post(this.mShow);
        int i = this.mDuration;
        if (i > 0) {
            this.mHandler.postDelayed(this.mHide, i);
        }
    }

    public void show(String str, int i) {
        show(0, str, i);
    }

    public void show(int i, String str, int i2) {
        View view = this.mView;
        if (view instanceof TextView) {
            ((TextView) view).setText(str);
            this.mView.setTag(Integer.valueOf(i));
        }
        setDuration(i2);
        show();
    }

    public CToast setBackground(int i) {
        View view = this.mView;
        if (view != null) {
            view.setBackgroundResource(i);
        }
        return this;
    }

    public void hide() {
        this.mHandler.removeCallbacks(this.mShow);
        this.mHandler.removeCallbacks(this.mHide);
        this.mHandler.post(this.mHide);
    }

    public void hide(int i) {
        try {
            if (this.mView == null || this.mView.getTag() == null || ((Integer) this.mView.getTag()).intValue() != i) {
                return;
            }
            hide();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void init(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setTextSize(this.mTextSize);
        textView.setGravity(17);
        textView.setTypeface(Typeface.create("sourcehan-sans", 0));
        this.mView = textView;
        this.mView.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.lib.view.CToast.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CToast.this.hide();
            }
        });
        this.mWM = (WindowManager) context.getApplicationContext().getSystemService("window");
        initParams();
    }

    public void initParams() {
        WindowManager.LayoutParams layoutParams = this.mParams;
        layoutParams.height = this.mHeight;
        layoutParams.width = -1;
        layoutParams.flags = 136;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation.Toast;
        layoutParams.type = 2005;
        layoutParams.type = this.mParamsType;
        layoutParams.setTitle("Toast");
        WindowManager.LayoutParams layoutParams2 = this.mParams;
        int i = this.mGravity;
        layoutParams2.gravity = i;
        if ((i & 7) == 7) {
            layoutParams2.horizontalWeight = 1.0f;
        }
        if ((this.mGravity & 112) == 112) {
            this.mParams.verticalWeight = 1.0f;
        }
        WindowManager.LayoutParams layoutParams3 = this.mParams;
        layoutParams3.x = this.mX;
        layoutParams3.y = this.mY;
        layoutParams3.verticalMargin = this.mVerticalMargin;
        layoutParams3.horizontalMargin = this.mHorizontalMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleShow() {
        if (this.mView.getParent() != null) {
            this.mWM.updateViewLayout(this.mView, this.mParams);
        } else {
            this.mWM.addView(this.mView, this.mParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHide() {
        View view = this.mView;
        if (view == null || view.getParent() == null) {
            return;
        }
        this.mWM.removeView(this.mView);
    }
}
