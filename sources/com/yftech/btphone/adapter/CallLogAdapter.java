package com.yftech.btphone.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.yftech.btphone.R;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.bean.CallLogBean;
import com.yftech.btphone.utils.CommonUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class CallLogAdapter extends BaseQuickAdapter<CallLogBean, NormalViewHolder> {
    private final int color;
    int maxLen;

    public CallLogAdapter(Context context) {
        super(R.layout.item_calllog);
        this.maxLen = 14;
        this.color = context.getColor(R.color.yellowLight);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(NormalViewHolder normalViewHolder, CallLogBean callLogBean) {
        if (callLogBean.getCallType() == 3) {
            normalViewHolder.setTextColor(R.id.tv_time, this.color);
            normalViewHolder.setTextColor(R.id.tv_name, this.color);
            normalViewHolder.setTextColor(R.id.tv_times, this.color);
        } else {
            normalViewHolder.setTextColor(R.id.tv_time, -1);
            normalViewHolder.setTextColor(R.id.tv_name, -1);
            normalViewHolder.setTextColor(R.id.tv_times, -1);
        }
        if (!TextUtils.isEmpty(callLogBean.getLetter())) {
            normalViewHolder.setVisible(R.id.tv_head, true);
            normalViewHolder.setEnabled(R.id.ll_item, false);
            normalViewHolder.setText(R.id.tv_head, CommonUtils.getFirstText(callLogBean.getName()));
        } else {
            normalViewHolder.setEnabled(R.id.ll_item, true);
            normalViewHolder.setVisible(R.id.tv_head, false);
        }
        byte[] photo = callLogBean.getPhoto();
        if (photo != null && photo.length > 0) {
            Log.i("TAG", "convert: getPhoto getPhoto getPhoto");
            CommonUtils.setBackground(normalViewHolder.getView(R.id.tv_head), photo);
            normalViewHolder.setText(R.id.tv_head, "");
            normalViewHolder.setVisible(R.id.tv_head, true);
        } else {
            normalViewHolder.setBackgroundColor(R.id.tv_head, 0);
        }
        normalViewHolder.setText(R.id.tv_time, BluetoothApplication.getInstance().getDataProviderManager().formatData(callLogBean.getTime()));
        normalViewHolder.setText(R.id.tv_name, callLogBean.getDisplayName().trim());
        if (callLogBean.getCallTimes() > 1) {
            normalViewHolder.setText(R.id.tv_times, "(" + callLogBean.getCallTimes() + ")");
            return;
        }
        normalViewHolder.setText(R.id.tv_times, "");
    }
}
