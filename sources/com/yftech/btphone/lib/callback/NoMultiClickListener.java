package com.yftech.btphone.lib.callback;

import android.util.SparseArray;
import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class NoMultiClickListener implements View.OnClickListener {
    private int MIN_CLICK_DELAY_TIME;
    private SparseArray<Long> lastClickViewArray = new SparseArray<>();

    public abstract void onNoMultiClick(View view);

    public NoMultiClickListener(int i) {
        this.MIN_CLICK_DELAY_TIME = 1000;
        this.MIN_CLICK_DELAY_TIME = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastClickViewArray.get(view.getId(), -1L).longValue() > this.MIN_CLICK_DELAY_TIME) {
            this.lastClickViewArray.put(view.getId(), Long.valueOf(currentTimeMillis));
            onNoMultiClick(view);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        this.lastClickViewArray.clear();
    }
}
