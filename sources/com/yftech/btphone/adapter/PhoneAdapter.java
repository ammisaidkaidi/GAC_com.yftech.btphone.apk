package com.yftech.btphone.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.yftech.btphone.R;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.utils.CommonUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhoneAdapter extends BaseQuickAdapter<String, NormalViewHolder> {
    ContactBean mContactBean;

    public PhoneAdapter() {
        super(R.layout.item_phone);
    }

    public void setContactBean(ContactBean contactBean) {
        this.mContactBean = contactBean;
    }

    public ContactBean getContactBean() {
        return this.mContactBean;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(NormalViewHolder normalViewHolder, String str) {
        normalViewHolder.setText(R.id.tv_phone_title, this.mContactBean.getUserName());
        normalViewHolder.setText(R.id.tv_phone, CommonUtils.getNumberWithSplit(str));
    }
}
