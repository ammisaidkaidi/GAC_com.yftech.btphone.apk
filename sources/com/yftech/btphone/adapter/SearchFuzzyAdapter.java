package com.yftech.btphone.adapter;

import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.yftech.btphone.R;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.utils.CommonUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchFuzzyAdapter extends BaseQuickAdapter<ContactBean, NormalViewHolder> implements Filterable {
    private static final String TAG = "SearchFuzzyAdapter";
    private final Context context;
    private List<ContactBean> mNeighbourFriendItemTotalList;
    private List<ContactBean> mNormalList;
    private List<ContactBean> mSearchNeighbourFriendItemList;
    private String searchKey;

    public void setTotalList(List<ContactBean> list) {
        this.mNeighbourFriendItemTotalList = list;
    }

    public void setNormalData(List<ContactBean> list) {
        this.mNormalList = list;
        setList(list);
    }

    public SearchFuzzyAdapter(Context context) {
        super(R.layout.item_search);
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(NormalViewHolder normalViewHolder, ContactBean contactBean) {
        if (!TextUtils.isEmpty(this.searchKey) && CommonUtils.isLetterOrChinese(this.searchKey)) {
            String userName = contactBean.getUserName();
            int indexOf = userName.indexOf(this.searchKey);
            if (indexOf == -1) {
                userName = contactBean.getUserName() + "（" + contactBean.getPinyinName() + "）";
                indexOf = userName.indexOf(this.searchKey);
            }
            int length = this.searchKey.length() + indexOf;
            Log.i(TAG, "开始index= " + indexOf + " 结束index = " + length);
            if (indexOf != -1) {
                SpannableString spannableString = new SpannableString(userName);
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this.context, R.color.yellowLight)), indexOf, length, 33);
                normalViewHolder.setText(R.id.tv_search_name, spannableString);
                return;
            }
            normalViewHolder.setText(R.id.tv_search_name, contactBean.getUserName());
            return;
        }
        normalViewHolder.setText(R.id.tv_search_name, contactBean.getUserName());
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.yftech.btphone.adapter.SearchFuzzyAdapter.1
            private Filter.FilterResults filterResults;

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                SearchFuzzyAdapter.this.searchKey = charSequence.toString().trim().toLowerCase();
                if (this.filterResults == null) {
                    this.filterResults = new Filter.FilterResults();
                }
                if (SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList != null) {
                    SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList.clear();
                } else {
                    SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList = new ArrayList();
                }
                Log.d(SearchFuzzyAdapter.TAG, "performFiltering, searchKey:" + SearchFuzzyAdapter.this.searchKey);
                if (TextUtils.isEmpty(SearchFuzzyAdapter.this.searchKey)) {
                    SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList.addAll(SearchFuzzyAdapter.this.mNormalList);
                    this.filterResults.values = SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList;
                    return this.filterResults;
                }
                for (ContactBean contactBean : SearchFuzzyAdapter.this.mNeighbourFriendItemTotalList) {
                    String lowerCase = Arrays.toString(contactBean.getMobile().toArray()).trim().replace(" ", "").toLowerCase();
                    String lowerCase2 = contactBean.getUserName().trim().replace(" ", "").toLowerCase();
                    String lowerCase3 = contactBean.getPinyinName().toLowerCase();
                    if (lowerCase2.contains(SearchFuzzyAdapter.this.searchKey) || lowerCase3.contains(SearchFuzzyAdapter.this.searchKey) || lowerCase.contains(SearchFuzzyAdapter.this.searchKey)) {
                        SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList.add(contactBean);
                    }
                }
                this.filterResults.values = SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList;
                Log.i(SearchFuzzyAdapter.TAG, Arrays.toString(SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList.toArray()));
                return this.filterResults;
            }

            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                SearchFuzzyAdapter.this.mSearchNeighbourFriendItemList = (List) filterResults.values;
                SearchFuzzyAdapter searchFuzzyAdapter = SearchFuzzyAdapter.this;
                searchFuzzyAdapter.setList(searchFuzzyAdapter.mSearchNeighbourFriendItemList);
            }
        };
    }
}
