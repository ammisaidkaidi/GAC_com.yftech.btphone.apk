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
import com.github.promeg.pinyinhelper.Pinyin;
import com.yftech.btphone.R;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchNumAdapter extends BaseQuickAdapter<Contacts, NormalViewHolder> implements Filterable {
    private static final String TAG = "SearchNumAdapter";
    private Context context;
    private List<Contacts> mNeighbourFriendItemTotalList;
    private String searchKey;

    public void setTotalList(List<Contacts> list) {
        this.mNeighbourFriendItemTotalList.clear();
        if (list != null && !list.isEmpty()) {
            this.mNeighbourFriendItemTotalList.addAll(list);
        }
        setList(this.mNeighbourFriendItemTotalList);
    }

    public SearchNumAdapter(Context context) {
        super(R.layout.item_calllog);
        this.mNeighbourFriendItemTotalList = new ArrayList();
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(NormalViewHolder normalViewHolder, Contacts contacts) {
        String name = contacts.getName();
        if (name == null) {
            name = "";
        }
        if (!TextUtils.isEmpty(name) && name.length() > 7) {
            name = name.substring(0, 7) + "...";
        }
        normalViewHolder.setText(R.id.tv_name, name);
        String substring = !TextUtils.isEmpty(name) ? name.substring(0, 1) : "";
        if (CommonUtils.isLetterOrChinese(substring)) {
            normalViewHolder.setVisible(R.id.tv_head, true);
            normalViewHolder.setEnabled(R.id.ll_item, false);
            normalViewHolder.setText(R.id.tv_head, substring);
        } else {
            normalViewHolder.setText(R.id.tv_head, "");
            normalViewHolder.setEnabled(R.id.ll_item, true);
            normalViewHolder.setVisible(R.id.tv_head, false);
        }
        String number = contacts.getNumber();
        String numberWithSplit = CommonUtils.getNumberWithSplit(number);
        if (!TextUtils.isEmpty(this.searchKey)) {
            String keyWithSplit = CommonUtils.getKeyWithSplit(number, this.searchKey);
            int indexOf = numberWithSplit.indexOf(keyWithSplit);
            int length = keyWithSplit.length() + indexOf;
            if (indexOf != -1) {
                SpannableString spannableString = new SpannableString(numberWithSplit);
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this.context, R.color.yellowLight)), indexOf, length, 33);
                normalViewHolder.setText(R.id.tv_time, spannableString);
                return;
            }
            normalViewHolder.setText(R.id.tv_time, numberWithSplit);
            return;
        }
        normalViewHolder.setText(R.id.tv_time, numberWithSplit);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.yftech.btphone.adapter.SearchNumAdapter.1
            private Filter.FilterResults filterResults = new Filter.FilterResults();

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                SearchNumAdapter.this.searchKey = charSequence.toString().trim().toLowerCase();
                Log.i(SearchNumAdapter.TAG, "searchKey = " + SearchNumAdapter.this.searchKey);
                List arrayList = new ArrayList();
                if (TextUtils.isEmpty(SearchNumAdapter.this.searchKey)) {
                    arrayList = SearchNumAdapter.this.mNeighbourFriendItemTotalList;
                } else {
                    for (Contacts contacts : SearchNumAdapter.this.mNeighbourFriendItemTotalList) {
                        if (contacts.getNumber().trim().replace(" ", "").contains(SearchNumAdapter.this.searchKey)) {
                            arrayList.add(contacts);
                        }
                    }
                    try {
                        SearchNumAdapter.this.filterEx(SearchNumAdapter.this.searchKey, arrayList);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                Log.i(SearchNumAdapter.TAG, "searchKey result size= " + arrayList.size());
                Filter.FilterResults filterResults = this.filterResults;
                filterResults.values = arrayList;
                return filterResults;
            }

            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                SearchNumAdapter.this.setList((List) filterResults.values);
                SearchNumAdapter.this.notifyDataSetChanged();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterEx(String str, List<Contacts> list) {
        for (Contacts contacts : this.mNeighbourFriendItemTotalList) {
            if (!filterEx(str, list, contacts, contacts.getPinYin())) {
                try {
                    String name = contacts.getName();
                    if (!TextUtils.isEmpty(name)) {
                        StringBuffer stringBuffer = new StringBuffer("");
                        for (int i = 0; i < name.length(); i++) {
                            char charAt = name.charAt(i);
                            if (Pinyin.isChinese(charAt)) {
                                stringBuffer.append(Pinyin.toPinyin(charAt).substring(0, 1));
                            } else {
                                stringBuffer.append(charAt);
                            }
                        }
                        filterEx(str, list, contacts, stringBuffer.toString());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private boolean filterEx(String str, List<Contacts> list, Contacts contacts, String str2) {
        String numberFromLetter = getNumberFromLetter(str2);
        if (TextUtils.isEmpty(numberFromLetter) || !numberFromLetter.contains(str) || list.contains(contacts)) {
            return false;
        }
        list.add(contacts);
        System.err.println("filterEx:" + contacts + "" + str2);
        return true;
    }

    private String getNumberFromLetter(String str) {
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.toLowerCase().charAt(i);
            if (charAt >= 'a' && charAt <= 'c') {
                stringBuffer.append("2");
            } else if (charAt >= 'd' && charAt <= 'f') {
                stringBuffer.append("3");
            } else if (charAt >= 'g' && charAt <= 'i') {
                stringBuffer.append("4");
            } else if (charAt >= 'j' && charAt <= 'l') {
                stringBuffer.append("5");
            } else if (charAt >= 'm' && charAt <= 'o') {
                stringBuffer.append("6");
            } else if (charAt >= 'p' && charAt <= 's') {
                stringBuffer.append("7");
            } else if (charAt >= 't' && charAt <= 'v') {
                stringBuffer.append("8");
            } else if (charAt >= 'w' && charAt <= 'z') {
                stringBuffer.append("9");
            } else if (charAt >= '0' && charAt <= '9') {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static boolean isNumeric(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static boolean check(String str) {
        char charAt = str.charAt(0);
        if (charAt < 'a' || charAt > 'z') {
            return charAt >= 'A' && charAt <= 'Z';
        }
        return true;
    }

    private boolean isContains(String str, String str2) {
        int i = 0;
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i >= str.length()) {
                return true;
            }
            int i3 = i + 1;
            String substring = str.substring(i, i3);
            int i4 = i2;
            while (true) {
                if (i4 >= str2.length()) {
                    z = false;
                    break;
                }
                int i5 = i4 + 1;
                if (substring.equals(str2.substring(i4, i5))) {
                    i2 = i4;
                    break;
                }
                i4 = i5;
            }
            if (!z) {
                return false;
            }
            i = i3;
        }
    }
}
