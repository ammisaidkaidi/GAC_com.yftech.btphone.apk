package com.yftech.btphone.app;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.yftech.btphone.R;
import com.yftech.btphone.view.FontTextView;

/* loaded from: /home/user/work/dex/classes.dex */
public class CommonDialog extends Dialog implements View.OnClickListener {
    public static final int TYPE_ONE = 0;
    public static final int TYPE_TWO = 1;
    private String TAG;
    public Button btnCentre;
    protected LinearLayout linear;
    protected LinearLayout linear1;
    private Callback mCallback;
    protected Context mContext;
    protected FrameLayout mFrameLayout;
    protected FontTextView tvMessage;
    public FontTextView tvTitle;

    public CommonDialog(Context context) {
        super(context, R.style.dialog_tip);
        this.TAG = "CommonDialog";
        this.mContext = context;
        getWindow().setType(2054);
        Log.i(this.TAG, "CommonDialog: ");
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        Log.i(this.TAG, "onCreate: ");
        super.onCreate(bundle);
        getWindow().addFlags(65800);
        initViews();
        setCanceledOnTouchOutside(false);
        getWindow().setAttributes(getWindow().getAttributes());
    }

    private void initViews() {
        setContentView(R.layout.dialog_common);
        this.btnCentre = (Button) findViewById(R.id.btn_centre);
        this.tvTitle = (FontTextView) findViewById(R.id.tv_title);
        this.tvMessage = (FontTextView) findViewById(R.id.tv_message);
        this.mFrameLayout = (FrameLayout) findViewById(R.id.frame);
        this.linear = (LinearLayout) findViewById(2131230995);
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.btnCentre.setOnClickListener(this);
    }

    public void setTypeStyle(int i) {
        if (i == 0) {
            this.linear1.setVisibility(0);
        } else if (1 == i) {
            this.linear1.setVisibility(8);
        }
        this.tvTitle.setTypeface(Typeface.create("sourcehan-sans", 1));
        this.btnCentre.setTypeface(Typeface.create("sourcehan-sans", 0));
        this.tvMessage.setTypeface(Typeface.create("sourcehan-sans", 0));
    }

    public void update(int i, String str, String str2, Callback callback) {
        getWindow().setDimAmount(0.8f);
        setTypeStyle(i);
        this.tvTitle.setText(str);
        this.tvMessage.setText(str2);
        this.mCallback = callback;
        if (TextUtils.isEmpty(str)) {
            this.tvTitle.setVisibility(8);
        } else {
            this.tvTitle.setVisibility(0);
        }
        updateSize(795);
    }

    public void updateSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.linear.getLayoutParams();
        layoutParams.width = i;
        this.linear.setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mCallback == null || 2131230826 != view.getId()) {
            return;
        }
        this.mCallback.onClickCentre(view, this);
    }

    @Override // android.app.Dialog
    public void show() {
        Log.i(this.TAG, "show: ");
        super.show();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Callback {
        default void onClickRight(View view, CommonDialog commonDialog) {
            commonDialog.dismiss();
        }

        default void onClickLeft(View view, CommonDialog commonDialog) {
            commonDialog.dismiss();
        }

        default void onClickCentre(View view, CommonDialog commonDialog) {
            commonDialog.dismiss();
        }
    }
}
