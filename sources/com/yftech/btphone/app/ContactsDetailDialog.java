package com.yftech.btphone.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.yftech.btphone.R;
import com.yftech.btphone.adapter.PhoneAdapter;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.btphone.view.FontTextView;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContactsDetailDialog extends Dialog {
    private String TAG;
    private final Context context;
    private FrameLayout mFrameHead;
    private FrameLayout mLinearLayout;
    private PhoneAdapter phoneAdapter;
    private RecyclerView recyclerViewPhone;
    private FontTextView tvPersonHead;

    public ContactsDetailDialog(Context context) {
        super(context, R.style.dialog_window);
        this.TAG = "ContactsDetailDialog";
        this.context = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.item_constact_detail);
        this.mLinearLayout = (FrameLayout) findViewById(R.id.ll_person);
        this.tvPersonHead = (FontTextView) findViewById(R.id.tv_person_head);
        this.mFrameHead = (FrameLayout) findViewById(R.id.fragment_head);
        this.recyclerViewPhone = (RecyclerView) findViewById(R.id.recycler_phone);
        this.recyclerViewPhone.setLayoutManager(new LinearLayoutManager(this.context));
        this.phoneAdapter = new PhoneAdapter();
        this.recyclerViewPhone.setAdapter(this.phoneAdapter);
        this.phoneAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.app.-$$Lambda$ContactsDetailDialog$fys4iPebK9944QwHCZZFAsJAWYg
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactsDetailDialog.this.lambda$onCreate$0$ContactsDetailDialog(baseQuickAdapter, view, i);
            }
        });
        this.mLinearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.app.ContactsDetailDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(ContactsDetailDialog.this.TAG, "onClick: mLinearLayout");
                ContactsDetailDialog.this.dismiss();
            }
        });
    }

    public /* synthetic */ void lambda$onCreate$0$ContactsDetailDialog(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        click(this.phoneAdapter.getContactBean(), (String) baseQuickAdapter.getData().get(i));
    }

    private void click(ContactBean contactBean, String str) {
        BluetoothApplication.getInstance().dial(str);
        MainActivity mainActivity = (MainActivity) AppManager.getAppManager().getActivity(MainActivity.class);
        Log.i(this.TAG, "click, mainActivity: " + mainActivity);
        if (mainActivity != null) {
            mainActivity.findContactBean(contactBean, false);
        }
        SearchActivity searchActivity = (SearchActivity) AppManager.getAppManager().getActivity(SearchActivity.class);
        if (searchActivity != null) {
            searchActivity.setFinishWhenStop(true);
        }
    }

    public void updateContacts(ContactBean contactBean) {
        this.phoneAdapter.setContactBean(contactBean);
        String upperCase = String.valueOf(contactBean.getUserName().charAt(0)).toUpperCase();
        if (CommonUtils.isLetterOrChinese(upperCase)) {
            this.tvPersonHead.setText(upperCase);
            this.mFrameHead.setEnabled(false);
        } else {
            this.tvPersonHead.setText("");
            this.mFrameHead.setEnabled(true);
        }
        if (!CommonUtils.setBackground(this.tvPersonHead, contactBean.getPhoto())) {
            this.tvPersonHead.setBackground(null);
        }
        this.phoneAdapter.setList(contactBean.getMobile());
    }
}
