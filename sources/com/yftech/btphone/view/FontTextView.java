package com.yftech.btphone.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: /home/user/work/dex/classes.dex */
public class FontTextView extends AppCompatTextView {
    private String fontType;

    public FontTextView(Context context) {
        super(context);
    }

    public FontTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public FontTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setIncludeFontPadding(false);
    }
}
