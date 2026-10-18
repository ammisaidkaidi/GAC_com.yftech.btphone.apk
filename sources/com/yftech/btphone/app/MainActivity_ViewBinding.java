package com.yftech.btphone.app;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.yftech.btphone.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class MainActivity_ViewBinding implements Unbinder {
    private MainActivity target;
    private View view7f0801db;

    public MainActivity_ViewBinding(MainActivity mainActivity) {
        this(mainActivity, mainActivity.getWindow().getDecorView());
    }

    public MainActivity_ViewBinding(final MainActivity mainActivity, View view) {
        this.target = mainActivity;
        mainActivity.tabDial = (RadioButton) Utils.findRequiredViewAsType(view, R.id.tab_dial, "field 'tabDial'", RadioButton.class);
        mainActivity.tabContacts = (RadioButton) Utils.findRequiredViewAsType(view, R.id.tab_contacts, "field 'tabContacts'", RadioButton.class);
        mainActivity.tabGroup = (RadioGroup) Utils.findRequiredViewAsType(view, R.id.tab_group, "field 'tabGroup'", RadioGroup.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.tab_search, "field 'tabSearch' and method 'onClick'");
        mainActivity.tabSearch = (ImageButton) Utils.castView(findRequiredView, R.id.tab_search, "field 'tabSearch'", ImageButton.class);
        this.view7f0801db = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.yftech.btphone.app.MainActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                mainActivity.onClick(view2);
            }
        });
        mainActivity.fragmentGroup = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fragment_group, "field 'fragmentGroup'", FrameLayout.class);
        mainActivity.root = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.root, "field 'root'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        MainActivity mainActivity = this.target;
        if (mainActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        mainActivity.tabDial = null;
        mainActivity.tabContacts = null;
        mainActivity.tabGroup = null;
        mainActivity.tabSearch = null;
        mainActivity.fragmentGroup = null;
        mainActivity.root = null;
        this.view7f0801db.setOnClickListener(null);
        this.view7f0801db = null;
    }
}
