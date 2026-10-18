package com.yftech.btphone.view;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.yftech.btphone.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContactsFragment_ViewBinding implements Unbinder {
    private ContactsFragment target;

    public ContactsFragment_ViewBinding(ContactsFragment contactsFragment) {
        this(contactsFragment, contactsFragment);
    }

    public ContactsFragment_ViewBinding(ContactsFragment contactsFragment, View view) {
        this.target = contactsFragment;
        contactsFragment.tvPopular = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_popular, "field 'tvPopular'", FontTextView.class);
        contactsFragment.sideBar = (SideIndexBar) Utils.findRequiredViewAsType(view, R.id.side_bar, "field 'sideBar'", SideIndexBar.class);
        contactsFragment.tvPersonHead = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_person_head, "field 'tvPersonHead'", FontTextView.class);
        contactsFragment.recyclerViewPhone = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_phone, "field 'recyclerViewPhone'", RecyclerView.class);
        contactsFragment.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_constact, "field 'recyclerView'", RecyclerView.class);
        contactsFragment.relaContacts = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.rela_contacts, "field 'relaContacts'", FrameLayout.class);
        contactsFragment.relaPerson = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.rela_person, "field 'relaPerson'", RelativeLayout.class);
        contactsFragment.tvEmptyTip = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_tip, "field 'tvEmptyTip'", FontTextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ContactsFragment contactsFragment = this.target;
        if (contactsFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        contactsFragment.tvPopular = null;
        contactsFragment.sideBar = null;
        contactsFragment.tvPersonHead = null;
        contactsFragment.recyclerViewPhone = null;
        contactsFragment.recyclerView = null;
        contactsFragment.relaContacts = null;
        contactsFragment.relaPerson = null;
        contactsFragment.tvEmptyTip = null;
    }
}
