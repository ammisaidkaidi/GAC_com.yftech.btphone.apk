package com.yftech.btphone.app;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import butterknife.BindView;
import butterknife.OnClick;
import com.yftech.btphone.R;
import com.yftech.btphone.app.Config;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.contract.IMainView;
import com.yftech.btphone.lib.base.view.MvpActivity;
import com.yftech.btphone.lib.bean.Device;
import com.yftech.btphone.lib.utils.AppManager;
import com.yftech.btphone.presenter.MainPresenter;
import com.yftech.btphone.utils.IntentUtils;
import com.yftech.btphone.view.ContactsFragment;
import com.yftech.btphone.view.DialFrameLayout;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MainActivity extends MvpActivity<MainPresenter> implements IMainView {

    @BindView(R.id.fragment_group)
    FrameLayout fragmentGroup;
    private ContactsFragment mContactsPage;
    private DialFrameLayout mDialPage;
    private int mShowType = Config.TabType.NONE;

    @BindView(R.id.root)
    FrameLayout root;

    @BindView(R.id.tab_contacts)
    RadioButton tabContacts;

    @BindView(R.id.tab_dial)
    RadioButton tabDial;

    @BindView(R.id.tab_group)
    RadioGroup tabGroup;

    @BindView(R.id.tab_search)
    ImageButton tabSearch;

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    protected int getViewLayout() {
        return R.layout.activity_main;
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, com.yftech.btphone.lib.base.view.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    protected void initView(Bundle bundle, Intent intent) {
        this.tabGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.yftech.btphone.app.MainActivity.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                MainActivity.this.logd("tabGroup onCheckedChanged");
                if (i == 2131231193) {
                    MainActivity.this.mShowType = Config.TabType.DIAL;
                } else if (i == 2131231192) {
                    MainActivity.this.mShowType = Config.TabType.CONTACTS;
                }
                MainActivity mainActivity = MainActivity.this;
                mainActivity.showTypeView(mainActivity.mShowType);
            }
        });
        this.mDialPage = new DialFrameLayout(this);
        this.mDialPage.setPresenter(getPresenter());
        this.mContactsPage = new ContactsFragment(this);
        this.mContactsPage.setPresenter(getPresenter());
        parseEnterType(getIntent());
        this.mDialPage.refresh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        parseEnterType(intent);
    }

    @Override // com.yftech.btphone.lib.base.view.MvpActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (isEnabled()) {
            if (BluetoothApplication.getInstance().getDataProviderManager().isExistValidPhone() && BluetoothApplication.getInstance().getDataProviderManager().isCallActive() && !BluetoothApplication.getInstance().getPhoneCallWindowManager().isPhoneCallDialogShow()) {
                BluetoothApplication.getInstance().getPhoneCallWindowManager().showPhoneCallActivity();
            }
            onTimeChanged();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothStateChanged(int i) {
        finish();
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        if (2 != i) {
            finish();
        }
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothContactsListChanged(List<Contacts> list) {
        this.mDialPage.updateContacts(list);
        this.mContactsPage.returnLetterList();
        this.mContactsPage.returnContactBook();
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothContactsDownloadStateChanged(int i) {
        this.mDialPage.updateDownloadState(0, i, 0, 0);
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothContactsDownloadPositionChanged(int i, int i2) {
        this.mDialPage.updateDownloadState(0, 3, i, i2);
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothCallLogDownloadPositionChanged(int i, int i2) {
        this.mDialPage.updateDownloadState(1, 3, i, i2);
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothCallLogDownloadStateChanged(int i) {
        this.mDialPage.updateDownloadState(1, i, 0, 0);
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothCallLogListChanged(List<CallLog> list) {
        this.mDialPage.updateList(BluetoothApplication.getInstance().getCallLogBeanList());
        this.mContactsPage.returnTopContact();
    }

    @Override // com.yftech.btphone.contract.IMainView
    public void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        this.mDialPage.updatePbapState(i);
    }

    @OnClick({R.id.tab_search})
    public void onClick(View view) {
        if (view.getId() != 2131231195) {
            return;
        }
        logd("onClick tab_search");
        IntentUtils.startSearchActivity(this);
    }

    private void parseEnterType(Intent intent) {
        if (intent == null) {
            logd("parseEnterType: intent is null");
            return;
        }
        String action = intent.getAction();
        logd("parseEnterType, action:" + action + ",type:" + intent.getIntExtra("HIM.ACTION.TYPE", 0));
        if ("com.yftech.intent.action.bluetooth.ui.contacts".equals(action)) {
            showType(Config.TabType.CONTACTS);
            AppManager.getAppManager().finishActivity(SearchActivity.class);
            return;
        }
        if ("com.yftech.intent.action.bluetooth.ui.dial".equals(action)) {
            showType(Config.TabType.DIAL);
            AppManager.getAppManager().finishActivity(SearchActivity.class);
            return;
        }
        int intExtra = intent.getIntExtra(Config.TYPE_KEY, Config.TabType.NONE);
        logd("parseEnterType,enter,type:" + intExtra);
        if (Config.TabType.NONE == intExtra) {
            if (this.mShowType != Config.TabType.NONE) {
                if (Config.TabType.SEARCH != this.mShowType) {
                    AppManager.getAppManager().finishActivity(SearchActivity.class);
                    return;
                }
                return;
            }
            intExtra = Config.TabType.DIAL;
        }
        showType(intExtra);
    }

    private void showType(int i) {
        logd("showType:" + i);
        this.mShowType = i;
        if (Config.TabType.DIAL == i) {
            this.tabDial.setChecked(true);
            return;
        }
        if (Config.TabType.CONTACTS == i) {
            this.tabContacts.setChecked(true);
        } else if (Config.TabType.SEARCH == i) {
            IntentUtils.startSearchActivity(this);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTypeView(int i) {
        logd("showTypeView:" + i);
        this.fragmentGroup.removeAllViews();
        if (Config.TabType.DIAL == i) {
            this.tabDial.setTypeface(Typeface.create("sourcehan-sans", 1));
            this.tabContacts.setTypeface(Typeface.create("sourcehan-sans", 0));
            this.fragmentGroup.addView(this.mDialPage);
        } else if (Config.TabType.CONTACTS == i) {
            this.tabContacts.setTypeface(Typeface.create("sourcehan-sans", 1));
            this.tabDial.setTypeface(Typeface.create("sourcehan-sans", 0));
            this.fragmentGroup.addView(this.mContactsPage);
        }
    }

    private boolean isEnabled() {
        int enableState = CarBluetoothManager.getInstance().getEnableState();
        Device connectDevice = BluetoothApplication.getInstance().getDataProviderManager().getConnectDevice();
        logd("isEnabled: state:" + enableState + ",device:" + connectDevice);
        if (12 == enableState && connectDevice != null && connectDevice.isHfpConnected()) {
            return true;
        }
        finish();
        return false;
    }

    public void findContactBean(ContactBean contactBean, boolean z) {
        logd("findContactBean: " + contactBean);
        if (this.mContactsPage != null) {
            showType(Config.TabType.CONTACTS);
            this.mContactsPage.findContactBean(contactBean, z);
        }
    }

    public void setBackgroundIcon(int i) {
        FrameLayout frameLayout = this.root;
        if (frameLayout != null) {
            frameLayout.setBackgroundResource(i);
        }
    }

    public void onTimeChanged() {
        BluetoothApplication.getInstance().getDataProviderManager().updateSimpleDateFormat(DateFormat.is24HourFormat(this));
        DialFrameLayout dialFrameLayout = this.mDialPage;
        if (dialFrameLayout != null) {
            dialFrameLayout.onTimeChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }
}
