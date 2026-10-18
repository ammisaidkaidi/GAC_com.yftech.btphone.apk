package com.yftech.btphone.adapter;

import android.view.View;
import android.widget.SectionIndexer;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.yftech.btphone.R;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.utils.CommonUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContactAdapter extends BaseQuickAdapter<ContactBean, NormalViewHolder> implements SectionIndexer {
    public static final int TPYE_CONTACTS = 1;
    public static final int TPYE_FAV = 0;
    private int mType;

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return new Object[0];
    }

    public ContactAdapter() {
        super(R.layout.item_contacts);
        this.mType = 1;
    }

    public void setType(int i) {
        this.mType = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(NormalViewHolder normalViewHolder, ContactBean contactBean) {
        final int adapterPosition = normalViewHolder.getAdapterPosition();
        normalViewHolder.setVisible(R.id.tv_time, false);
        if (CommonUtils.isLetterOrChinese(contactBean.getLetter())) {
            normalViewHolder.setVisible(R.id.tv_head, true);
            normalViewHolder.setEnabled(R.id.ll_item, false);
            normalViewHolder.setText(R.id.tv_head, CommonUtils.getFirstText(contactBean.getUserName()));
        } else {
            normalViewHolder.setEnabled(R.id.ll_item, true);
            normalViewHolder.setVisible(R.id.tv_head, false);
        }
        byte[] photo = contactBean.getPhoto();
        CommonUtils.setBackground(normalViewHolder.getView(R.id.tv_head), photo);
        if (photo != null) {
            normalViewHolder.setText(R.id.tv_head, "");
            normalViewHolder.setVisible(R.id.tv_head, true);
        } else {
            normalViewHolder.setBackgroundColor(R.id.tv_head, 0);
        }
        normalViewHolder.setText(R.id.tv_name, contactBean.getUserName());
        normalViewHolder.getView(R.id.fl_item).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.adapter.ContactAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactAdapter contactAdapter = ContactAdapter.this;
                contactAdapter.setOnItemChildClick(view, adapterPosition - contactAdapter.getHeaderLayoutCount());
            }
        });
        if (1 != this.mType) {
            if (adapterPosition == 0) {
                normalViewHolder.setVisible(R.id.tv_letter, true);
                normalViewHolder.setText(R.id.tv_letter, BluetoothApplication.getInstance().getResources().getString(R.string.used));
                return;
            } else {
                normalViewHolder.getView(R.id.tv_letter).setVisibility(8);
                return;
            }
        }
        normalViewHolder.setText(R.id.tv_letter, contactBean.getLetter());
        if (adapterPosition > getHeaderLayoutCount()) {
            if (getData().get((adapterPosition - 1) - getHeaderLayoutCount()).getLetter().equals(contactBean.getLetter())) {
                normalViewHolder.getView(R.id.tv_letter).setVisibility(8);
                return;
            } else {
                normalViewHolder.setVisible(R.id.tv_letter, true);
                return;
            }
        }
        normalViewHolder.setVisible(R.id.tv_letter, true);
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        for (int i2 = 0; i2 < getItemCount() - getHeaderLayoutCount(); i2++) {
            try {
                if (getData().get(i2).getLetter().toUpperCase().charAt(0) == i) {
                    return i2 + getHeaderLayoutCount();
                }
            } catch (Exception e) {
                e.printStackTrace();
                return -1;
            }
        }
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return getData().get(i).getLetter().charAt(0);
    }
}
