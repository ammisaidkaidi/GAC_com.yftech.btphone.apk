package com.yftech.btphone.app;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.jakewharton.rxbinding4.view.RxView;
import com.yftech.btphone.R;
import com.yftech.btphone.adapter.SearchFuzzyAdapter;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.contract.ISearchView;
import com.yftech.btphone.lib.base.view.MvpActivity;
import com.yftech.btphone.lib.view.MyDividerItemDecoration;
import com.yftech.btphone.presenter.SearchPresenter;
import com.yftech.btphone.utils.ButtonIntentCons;
import com.yftech.btphone.view.FontTextView;
import com.yftech.car.bluetooth.model.Contacts;
import io.reactivex.rxjava3.functions.Consumer;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchActivity extends MvpActivity<SearchPresenter> implements ISearchView {
    private ContactsDetailDialog contactsDetailDialog;

    @BindView(R.id.edit_search)
    EditText editText;

    @BindView(R.id.iv_clear)
    ImageView ivClear;

    @BindView(R.id.recycler_search)
    RecyclerView recyclerView;
    private SearchFuzzyAdapter searchFuzzyAdapter;

    @BindView(R.id.tv_search_cannel)
    FontTextView tvCannel;
    private boolean isFinishWhenStop = false;
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.yftech.btphone.app.SearchActivity.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SearchActivity.this.logd("onReceive: " + intent.getAction());
            if (1 == intent.getIntExtra(ButtonIntentCons.KEY, -1)) {
                SearchActivity.this.reset();
            }
        }
    };

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    protected int getViewLayout() {
        return R.layout.activity_search;
    }

    @Override // com.yftech.btphone.contract.ISearchView
    public void onBluetoothContactsListChanged(List<Contacts> list) {
    }

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    protected void initView(Bundle bundle, Intent intent) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.recyclerView.setLayoutManager(linearLayoutManager);
        MyDividerItemDecoration myDividerItemDecoration = new MyDividerItemDecoration(this, 0);
        myDividerItemDecoration.setHorizontalSpace(25);
        this.recyclerView.addItemDecoration(myDividerItemDecoration);
        this.searchFuzzyAdapter = new SearchFuzzyAdapter(this);
        this.recyclerView.setAdapter(this.searchFuzzyAdapter);
        this.searchFuzzyAdapter.setTotalList(BluetoothApplication.getInstance().getDataProviderManager().mContactBeanList);
        this.searchFuzzyAdapter.setNormalData(BluetoothApplication.getInstance().getDataProviderManager().mTopContactBeanList);
        this.editText.addTextChangedListener(new TextWatcher() { // from class: com.yftech.btphone.app.SearchActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchActivity.this.logd("onTextChanged:" + ((Object) charSequence));
                SearchActivity.this.searchFuzzyAdapter.getFilter().filter(charSequence);
                SearchActivity.this.ivClear.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
            }
        });
        this.searchFuzzyAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.app.-$$Lambda$SearchActivity$XrgL9uV8rygodRxtcq7dzZvhavU
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchActivity.this.lambda$initView$0$SearchActivity(baseQuickAdapter, view, i);
            }
        });
        ((SearchPresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.tvCannel).throttleFirst(500L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$SearchActivity$mGrqmCNLSHNQdpmXQs8UsNWJH50
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SearchActivity.this.lambda$initView$1$SearchActivity((Unit) obj);
            }
        }));
        ((SearchPresenter) this.mPresenter).getCompositeDisposableMgr().addRxBindingSubscribe(RxView.clicks(this.ivClear).throttleFirst(500L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.app.-$$Lambda$SearchActivity$k5TKEA8CDZ1O7whqyuo0VpyflxY
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SearchActivity.this.lambda$initView$2$SearchActivity((Unit) obj);
            }
        }));
        disableCopyAndPaste(this.editText);
        registerButtonReceiver();
        this.editText.requestFocus();
    }

    public /* synthetic */ void lambda$initView$0$SearchActivity(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        showContactsDetailDialog((ContactBean) baseQuickAdapter.getData().get(i));
    }

    public /* synthetic */ void lambda$initView$1$SearchActivity(Unit unit) throws Throwable {
        finish();
    }

    public /* synthetic */ void lambda$initView$2$SearchActivity(Unit unit) throws Throwable {
        this.editText.setText("");
    }

    private void registerButtonReceiver() {
        registerReceiver(this.mBroadcastReceiver, new IntentFilter(ButtonIntentCons.ACTION));
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.isFinishWhenStop = false;
        EditText editText = this.editText;
        if (editText != null) {
            editText.requestFocus();
            showKeyboard(this.editText);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        logd("onStop, isFinishWhenStop:" + this.isFinishWhenStop);
        checkShouldClose();
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, com.yftech.btphone.lib.base.view.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.mBroadcastReceiver);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.yftech.btphone.contract.ISearchView
    public void onBluetoothStateChanged(int i) {
        finish();
    }

    @Override // com.yftech.btphone.contract.ISearchView
    public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        if (2 != i) {
            finish();
        }
    }

    public void showContactsDetailDialog(ContactBean contactBean) {
        if (this.contactsDetailDialog == null) {
            this.contactsDetailDialog = new ContactsDetailDialog(this);
        }
        this.contactsDetailDialog.show();
        this.contactsDetailDialog.updateContacts(contactBean);
    }

    public void closeContactsDetailDialog() {
        ContactsDetailDialog contactsDetailDialog = this.contactsDetailDialog;
        if (contactsDetailDialog == null || !contactsDetailDialog.isShowing()) {
            return;
        }
        this.contactsDetailDialog.dismiss();
    }

    public void reset() {
        hideKeyboard(this.editText);
        closeContactsDetailDialog();
    }

    public void disableCopyAndPaste(final EditText editText) {
        if (editText == null) {
            return;
        }
        try {
            editText.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.btphone.app.SearchActivity.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    return true;
                }
            });
            editText.setLongClickable(false);
            editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.btphone.app.SearchActivity.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    SearchActivity.this.setInsertionDisabled(editText);
                    return false;
                }
            });
            editText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: com.yftech.btphone.app.SearchActivity.4
                @Override // android.view.ActionMode.Callback
                public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public void onDestroyActionMode(ActionMode actionMode) {
                }

                @Override // android.view.ActionMode.Callback
                public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInsertionDisabled(EditText editText) {
        try {
            Field declaredField = TextView.class.getDeclaredField("mEditor");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(editText);
            Class<?> cls = Class.forName("android.widget.Editor");
            Field declaredField2 = cls.getDeclaredField("mInsertionControllerEnabled");
            declaredField2.setAccessible(true);
            declaredField2.set(obj, false);
            Field declaredField3 = cls.getDeclaredField("mSelectionControllerEnabled");
            declaredField3.setAccessible(true);
            declaredField3.set(obj, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void hideKeyboard(View view) {
        logd("hideKeyboard: ");
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public void showKeyboard(View view) {
        logd("showKeyboard: ");
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(view, 0);
        }
    }

    public void setFinishWhenStop(boolean z) {
        this.isFinishWhenStop = z;
    }

    public void checkShouldClose() {
        if (this.isFinishWhenStop) {
            finish();
            this.isFinishWhenStop = false;
        }
    }
}
