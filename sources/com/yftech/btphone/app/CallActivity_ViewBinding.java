package com.yftech.btphone.app;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.yftech.btphone.R;
import com.yftech.btphone.view.KeyboardNumView;

/* loaded from: /home/user/work/dex/classes.dex */
public class CallActivity_ViewBinding implements Unbinder {
    private CallActivity target;

    public CallActivity_ViewBinding(CallActivity callActivity) {
        this(callActivity, callActivity.getWindow().getDecorView());
    }

    public CallActivity_ViewBinding(CallActivity callActivity, View view) {
        this.target = callActivity;
        callActivity.imgBg = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView, "field 'imgBg'", ImageView.class);
        callActivity.imageViewAnimal = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageViewAnimal, "field 'imageViewAnimal'", ImageView.class);
        callActivity.tvHead = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_head, "field 'tvHead'", TextView.class);
        callActivity.tvName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tvName'", TextView.class);
        callActivity.tvTime = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_time, "field 'tvTime'", TextView.class);
        callActivity.peopleRoot = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.people_root, "field 'peopleRoot'", LinearLayout.class);
        callActivity.cbHangup = (Button) Utils.findRequiredViewAsType(view, R.id.cb_hangup, "field 'cbHangup'", Button.class);
        callActivity.cbAnswer = (Button) Utils.findRequiredViewAsType(view, R.id.cb_answer, "field 'cbAnswer'", Button.class);
        callActivity.cbMute = (Button) Utils.findRequiredViewAsType(view, R.id.cb_nute, "field 'cbMute'", Button.class);
        callActivity.cbPhone = (Button) Utils.findRequiredViewAsType(view, R.id.cb_phone, "field 'cbPhone'", Button.class);
        callActivity.cbKeyboard = (CheckBox) Utils.findRequiredViewAsType(view, R.id.cb_keyboard, "field 'cbKeyboard'", CheckBox.class);
        callActivity.cbIgnore = (Button) Utils.findRequiredViewAsType(view, R.id.cb_ignore, "field 'cbIgnore'", Button.class);
        callActivity.bottomRoot = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.bottom_root, "field 'bottomRoot'", LinearLayout.class);
        callActivity.llDetail = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_detail, "field 'llDetail'", LinearLayout.class);
        callActivity.flExtend = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_extend, "field 'flExtend'", FrameLayout.class);
        callActivity.llKeyboardDetail = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_keyboard_detail, "field 'llKeyboardDetail'", LinearLayout.class);
        callActivity.tvHeadEx = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_head_ex, "field 'tvHeadEx'", TextView.class);
        callActivity.tvNameEx = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name_ex, "field 'tvNameEx'", TextView.class);
        callActivity.tvTimeEx = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_time_ex, "field 'tvTimeEx'", TextView.class);
        callActivity.imgExchange = (ImageView) Utils.findRequiredViewAsType(view, R.id.img_exchange, "field 'imgExchange'", ImageView.class);
        callActivity.peopleRootEx = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.people_root_ex, "field 'peopleRootEx'", LinearLayout.class);
        callActivity.mKeyboardNumView = (KeyboardNumView) Utils.findRequiredViewAsType(view, R.id.key_board, "field 'mKeyboardNumView'", KeyboardNumView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        CallActivity callActivity = this.target;
        if (callActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        callActivity.imgBg = null;
        callActivity.imageViewAnimal = null;
        callActivity.tvHead = null;
        callActivity.tvName = null;
        callActivity.tvTime = null;
        callActivity.peopleRoot = null;
        callActivity.cbHangup = null;
        callActivity.cbAnswer = null;
        callActivity.cbMute = null;
        callActivity.cbPhone = null;
        callActivity.cbKeyboard = null;
        callActivity.cbIgnore = null;
        callActivity.bottomRoot = null;
        callActivity.llDetail = null;
        callActivity.flExtend = null;
        callActivity.llKeyboardDetail = null;
        callActivity.tvHeadEx = null;
        callActivity.tvNameEx = null;
        callActivity.tvTimeEx = null;
        callActivity.imgExchange = null;
        callActivity.peopleRootEx = null;
        callActivity.mKeyboardNumView = null;
    }
}
