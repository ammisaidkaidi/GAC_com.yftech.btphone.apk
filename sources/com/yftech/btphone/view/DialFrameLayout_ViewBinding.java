package com.yftech.btphone.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.yftech.btphone.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class DialFrameLayout_ViewBinding implements Unbinder {
    private DialFrameLayout target;

    public DialFrameLayout_ViewBinding(DialFrameLayout dialFrameLayout) {
        this(dialFrameLayout, dialFrameLayout);
    }

    public DialFrameLayout_ViewBinding(DialFrameLayout dialFrameLayout, View view) {
        this.target = dialFrameLayout;
        dialFrameLayout.llKeyBoard = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_keyboard, "field 'llKeyBoard'", LinearLayout.class);
        dialFrameLayout.keyBoard = (KeyboardNumView) Utils.findRequiredViewAsType(view, R.id.key_board, "field 'keyBoard'", KeyboardNumView.class);
        dialFrameLayout.imgCall = (ImageView) Utils.findRequiredViewAsType(view, R.id.img_call, "field 'imgCall'", ImageView.class);
        dialFrameLayout.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        dialFrameLayout.tvTip = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_tip, "field 'tvTip'", FontTextView.class);
        dialFrameLayout.llLoading = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_loading, "field 'llLoading'", LinearLayout.class);
        dialFrameLayout.tvSyncMessage = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_sync_message, "field 'tvSyncMessage'", FontTextView.class);
        dialFrameLayout.tvGetNow = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_get_now, "field 'tvGetNow'", FontTextView.class);
        dialFrameLayout.llSyncRightnow = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_sync_rightnow, "field 'llSyncRightnow'", LinearLayout.class);
        dialFrameLayout.tvRogressTip = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_rogress_tip, "field 'tvRogressTip'", FontTextView.class);
        dialFrameLayout.tvProgress = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_progress, "field 'tvProgress'", FontTextView.class);
        dialFrameLayout.progressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'progressBar'", ProgressBar.class);
        dialFrameLayout.llSyncLoading = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_sync_loading, "field 'llSyncLoading'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        DialFrameLayout dialFrameLayout = this.target;
        if (dialFrameLayout == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        dialFrameLayout.llKeyBoard = null;
        dialFrameLayout.keyBoard = null;
        dialFrameLayout.imgCall = null;
        dialFrameLayout.recyclerView = null;
        dialFrameLayout.tvTip = null;
        dialFrameLayout.llLoading = null;
        dialFrameLayout.tvSyncMessage = null;
        dialFrameLayout.tvGetNow = null;
        dialFrameLayout.llSyncRightnow = null;
        dialFrameLayout.tvRogressTip = null;
        dialFrameLayout.tvProgress = null;
        dialFrameLayout.progressBar = null;
        dialFrameLayout.llSyncLoading = null;
    }
}
