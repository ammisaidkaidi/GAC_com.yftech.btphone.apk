package com.yftech.btphone.app;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.yftech.btphone.R;
import com.yftech.btphone.view.FontTextView;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchActivity_ViewBinding implements Unbinder {
    private SearchActivity target;

    public SearchActivity_ViewBinding(SearchActivity searchActivity) {
        this(searchActivity, searchActivity.getWindow().getDecorView());
    }

    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        this.target = searchActivity;
        searchActivity.editText = (EditText) Utils.findRequiredViewAsType(view, R.id.edit_search, "field 'editText'", EditText.class);
        searchActivity.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_search, "field 'recyclerView'", RecyclerView.class);
        searchActivity.tvCannel = (FontTextView) Utils.findRequiredViewAsType(view, R.id.tv_search_cannel, "field 'tvCannel'", FontTextView.class);
        searchActivity.ivClear = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_clear, "field 'ivClear'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SearchActivity searchActivity = this.target;
        if (searchActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        searchActivity.editText = null;
        searchActivity.recyclerView = null;
        searchActivity.tvCannel = null;
        searchActivity.ivClear = null;
    }
}
