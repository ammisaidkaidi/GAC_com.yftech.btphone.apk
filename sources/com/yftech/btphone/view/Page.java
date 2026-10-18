package com.yftech.btphone.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import com.yftech.btphone.lib.base.presenter.IPresenter;

/* loaded from: /home/user/work/dex/classes.dex */
public class Page<P extends IPresenter> extends FrameLayout {
    protected P mPresenter;

    public Page(Context context) {
        this(context, null);
    }

    public Page(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public Page(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setPresenter(P p) {
        this.mPresenter = p;
    }

    public P getPresenter() {
        return this.mPresenter;
    }

    public void onDestroy() {
        logd("onDestroy");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        logd("onAttachedToWindow");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        logd("onDetachedFromWindow");
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void logd(String str) {
        Log.d(getClass().getSimpleName(), str);
    }

    protected void loge(String str) {
        Log.e(getClass().getSimpleName(), str);
    }
}
