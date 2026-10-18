package com.yftech.btphone.view;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.yftech.btphone.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class KeyboardNumView extends LinearLayout implements View.OnClickListener, View.OnLongClickListener {
    private static final String[][] NUMBER_KEY = {new String[]{"1", "2", "3", "*"}, new String[]{"4", "5", "6", "#"}, new String[]{"7", "8", "9", "0"}};
    private final String ZERO;
    private boolean clickable;
    private int dividerValue;
    protected EditText editText;
    private ImageView imgDel;
    private int inputHeight;
    private int keyHeight;
    private float keyTextSize;
    private long lastClickTime;
    private final String mKeyDel;
    private int maginValue;
    OnInputChangeListener onInputChangeListener;
    private StringBuilder realValue;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnInputChangeListener {
        void addChar(String str);

        void inputChanged(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$drawEdittextDeleteImg$0(View view, MotionEvent motionEvent) {
        return true;
    }

    public KeyboardNumView(Context context) {
        this(context, null);
    }

    public KeyboardNumView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyboardNumView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.keyHeight = 92;
        this.keyTextSize = 40.0f;
        this.mKeyDel = "del";
        this.ZERO = "0";
        this.realValue = new StringBuilder();
        this.clickable = true;
        initView(context);
    }

    private void initView(Context context) {
        initKeyCodeNormal(context);
    }

    private void initKeyCodeNormal(Context context) {
        removeAllViews();
        setOrientation(1);
        drawEdittextDeleteImg(context);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundResource(R.mipmap.btp_pic_keyboard);
        addView(linearLayout);
        for (int i = 0; i < NUMBER_KEY.length; i++) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i == 0) {
                layoutParams.topMargin = 7;
            } else {
                layoutParams.topMargin = 20;
            }
            linearLayout2.setLayoutParams(layoutParams);
            for (int i2 = 0; i2 < NUMBER_KEY[i].length; i2++) {
                int i3 = this.keyHeight;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i3, i3);
                if (i2 == 0) {
                    layoutParams2.leftMargin = 9;
                } else {
                    layoutParams2.leftMargin = 6;
                }
                Button button = new Button(context);
                button.setIncludeFontPadding(false);
                button.setLayoutParams(layoutParams2);
                button.setTextColor(-16711936);
                button.setTextSize(this.keyTextSize);
                button.setGravity(17);
                button.setBackgroundResource(R.drawable.ic_keyboard_btn_s);
                button.setTag(NUMBER_KEY[i][i2].substring(0, 1));
                button.setOnClickListener(this);
                button.setOnLongClickListener(this);
                linearLayout2.addView(button);
            }
            linearLayout.addView(linearLayout2);
        }
    }

    private void drawEdittextDeleteImg(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(20, 0, 20, 0);
        linearLayout.setBackgroundResource(R.mipmap.btp_bg_enterboard);
        this.editText = (EditText) LayoutInflater.from(context).inflate(R.layout.layout_edit, (ViewGroup) null).findViewById(R.id.edit);
        this.editText.setTextSize(36.0f);
        this.editText.setTextColor(-1);
        this.editText.setMaxLines(1);
        this.editText.setSingleLine();
        this.editText.setIncludeFontPadding(false);
        this.editText.setBackgroundColor(0);
        this.editText.setGravity(16);
        this.editText.setHint("");
        this.editText.setHintTextColor(Color.parseColor("#26ccddff"));
        this.editText.setCursorVisible(true);
        this.editText.setFocusable(true);
        this.editText.requestFocus();
        this.editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.btphone.view.-$$Lambda$KeyboardNumView$U_1-0V0QIEpo9_62dVqyfrmvVEQ
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return KeyboardNumView.lambda$drawEdittextDeleteImg$0(view, motionEvent);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        layoutParams.weight = 1.0f;
        this.editText.setLayoutParams(layoutParams);
        this.imgDel = new ImageView(context);
        this.imgDel.setBackgroundResource(R.drawable.ic_keyboard_del_s);
        this.imgDel.setTag("del");
        this.imgDel.setVisibility(0);
        this.imgDel.setOnClickListener(this);
        this.imgDel.setOnLongClickListener(this);
        linearLayout.addView(this.editText);
        linearLayout.addView(this.imgDel);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = 10;
        addView(linearLayout, layoutParams2);
    }

    public EditText getEditText() {
        return this.editText;
    }

    public void requestFocusEx() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.requestFocus();
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        this.clickable = z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.clickable) {
            String str = (String) view.getTag();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if ("del".equals(str)) {
                delete();
            } else {
                addChar(str);
            }
        }
    }

    public boolean isFastClick() {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = currentTimeMillis - this.lastClickTime >= ((long) ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        this.lastClickTime = currentTimeMillis;
        return z;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        String obj = view.getTag().toString();
        if ("del".equals(obj)) {
            deleteAll();
            return true;
        }
        if (!"0".equals(obj)) {
            return true;
        }
        addChar("+");
        return true;
    }

    public void requestFocusEdit() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.requestFocus();
        }
    }

    private void delete() {
        int selectionStart;
        EditText editText = this.editText;
        if (editText != null && (selectionStart = editText.getSelectionStart()) > 0) {
            this.editText.getText().delete(selectionStart - 1, selectionStart);
        }
        updateRealValue();
        OnInputChangeListener onInputChangeListener = this.onInputChangeListener;
        if (onInputChangeListener != null) {
            onInputChangeListener.inputChanged(this.realValue.toString());
        }
    }

    private void updateRealValue() {
        EditText editText = this.editText;
        if (editText != null) {
            String obj = editText.getText().toString();
            this.realValue.setLength(0);
            this.realValue.append(obj);
        }
        if (this.realValue.length() > 0) {
            this.imgDel.setBackgroundResource(R.drawable.ic_delete);
        } else {
            this.imgDel.setBackgroundResource(R.mipmap.btp__icon_delete_dis);
        }
    }

    public void deleteAll() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setText("");
        }
        updateRealValue();
        OnInputChangeListener onInputChangeListener = this.onInputChangeListener;
        if (onInputChangeListener != null) {
            onInputChangeListener.inputChanged(this.realValue.toString());
        }
    }

    private void addChar(String str) {
        EditText editText = this.editText;
        if (editText != null) {
            this.editText.getText().insert(editText.getSelectionStart(), str);
        }
        updateRealValue();
        OnInputChangeListener onInputChangeListener = this.onInputChangeListener;
        if (onInputChangeListener != null) {
            onInputChangeListener.addChar(str);
            this.onInputChangeListener.inputChanged(this.realValue.toString());
        }
    }

    public String getRealValue() {
        return this.realValue.toString();
    }

    public void setOnInputChangeListener(OnInputChangeListener onInputChangeListener) {
        this.onInputChangeListener = onInputChangeListener;
    }
}
