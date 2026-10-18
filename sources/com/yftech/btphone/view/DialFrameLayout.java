package com.yftech.btphone.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.yftech.btphone.R;
import com.yftech.btphone.adapter.CallLogAdapter;
import com.yftech.btphone.adapter.SearchNumAdapter;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.bean.CallLogBean;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.lib.base.presenter.IPresenter;
import com.yftech.btphone.lib.bean.Device;
import com.yftech.btphone.lib.rx.CompositeDisposableMgr;
import com.yftech.btphone.lib.view.MyDividerItemDecoration;
import com.yftech.btphone.presenter.MainPresenter;
import com.yftech.btphone.view.KeyboardNumView;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.Contacts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class DialFrameLayout extends Page {
    private static final int MAX_SHOW_COUNT = 30;
    public static final int TYPE_CALLLOG = 1;
    public static final int TYPE_CONTACTS = 0;

    @BindView(R.id.img_call)
    ImageView imgCall;
    private boolean isCanScroll;

    @BindView(R.id.key_board)
    KeyboardNumView keyBoard;

    @BindView(R.id.ll_keyboard)
    LinearLayout llKeyBoard;

    @BindView(R.id.ll_loading)
    LinearLayout llLoading;

    @BindView(R.id.ll_sync_loading)
    LinearLayout llSyncLoading;

    @BindView(R.id.ll_sync_rightnow)
    LinearLayout llSyncRightnow;
    private CallLogAdapter mCallLogAdapter;
    private Filter.FilterListener mFilterListener;
    private View mHeadView;

    @BindView(R.id.progressBar)
    ProgressBar progressBar;

    @BindView(R.id.recycler_view)
    RecyclerView recyclerView;
    private SearchNumAdapter searchAdapter;

    @BindView(R.id.tv_get_now)
    FontTextView tvGetNow;

    @BindView(R.id.tv_progress)
    FontTextView tvProgress;

    @BindView(R.id.tv_rogress_tip)
    FontTextView tvRogressTip;

    @BindView(R.id.tv_sync_message)
    FontTextView tvSyncMessage;

    @BindView(R.id.tv_tip)
    FontTextView tvTip;

    public DialFrameLayout(Context context) {
        super(context);
        this.isCanScroll = true;
        this.mFilterListener = new Filter.FilterListener() { // from class: com.yftech.btphone.view.DialFrameLayout.5
            @Override // android.widget.Filter.FilterListener
            public void onFilterComplete(int i) {
                DialFrameLayout.this.logd("onFilterComplete: " + i);
                if (DialFrameLayout.this.searchAdapter.getItemCount() != 0) {
                    DialFrameLayout.this.showRecycleView();
                } else {
                    DialFrameLayout dialFrameLayout = DialFrameLayout.this;
                    dialFrameLayout.showMessage(dialFrameLayout.getResources().getString(R.string.main_nothing));
                }
            }
        };
        View inflate = LayoutInflater.from(context).inflate(R.layout.fragment_dial, this);
        this.recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler_view);
        this.keyBoard = (KeyboardNumView) inflate.findViewById(R.id.key_board);
        this.llKeyBoard = (LinearLayout) inflate.findViewById(R.id.ll_keyboard);
        this.imgCall = (ImageView) inflate.findViewById(R.id.img_call);
        this.tvTip = (FontTextView) inflate.findViewById(R.id.tv_tip);
        this.llLoading = (LinearLayout) inflate.findViewById(R.id.ll_loading);
        this.tvSyncMessage = (FontTextView) inflate.findViewById(R.id.tv_sync_message);
        this.tvGetNow = (FontTextView) inflate.findViewById(R.id.tv_get_now);
        this.llSyncRightnow = (LinearLayout) inflate.findViewById(R.id.ll_sync_rightnow);
        this.tvRogressTip = (FontTextView) inflate.findViewById(R.id.tv_rogress_tip);
        this.tvProgress = (FontTextView) inflate.findViewById(R.id.tv_progress);
        this.llSyncLoading = (LinearLayout) inflate.findViewById(R.id.ll_sync_loading);
        this.progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        this.keyBoard.setOnInputChangeListener(new KeyboardNumView.OnInputChangeListener() { // from class: com.yftech.btphone.view.DialFrameLayout.1
            @Override // com.yftech.btphone.view.KeyboardNumView.OnInputChangeListener
            public void addChar(String str) {
            }

            @Override // com.yftech.btphone.view.KeyboardNumView.OnInputChangeListener
            public void inputChanged(String str) {
                DialFrameLayout.this.handleKeyboardInputChanged(str);
            }
        });
        this.mCallLogAdapter = new CallLogAdapter(context);
        this.mCallLogAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$DialFrameLayout$6nPA4oTzSGCZ3UUCTBGGqpm-5uU
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DialFrameLayout.this.lambda$new$0$DialFrameLayout(baseQuickAdapter, view, i);
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: com.yftech.btphone.view.DialFrameLayout.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollHorizontally() {
                return DialFrameLayout.this.isCanScroll;
            }
        };
        linearLayoutManager.setOrientation(0);
        MyDividerItemDecoration myDividerItemDecoration = new MyDividerItemDecoration(context, 0);
        myDividerItemDecoration.setHorizontalSpace(12);
        this.recyclerView.addItemDecoration(myDividerItemDecoration);
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.recyclerView.setAdapter(this.mCallLogAdapter);
        this.mHeadView = LayoutInflater.from(context).inflate(R.layout.item_calllog_head, (ViewGroup) null);
        this.mCallLogAdapter.setHeaderView(this.mHeadView, 0, 0);
        this.searchAdapter = new SearchNumAdapter(getContext());
        this.searchAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$DialFrameLayout$-0o3s-G_Yntb71GJDgVS2bo9mbE
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DialFrameLayout.this.lambda$new$1$DialFrameLayout(baseQuickAdapter, view, i);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$DialFrameLayout(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        CallLogBean callLogBean = this.mCallLogAdapter.getData().get(i);
        ContactBean findContactsBean = BluetoothApplication.getInstance().getDataProviderManager().findContactsBean(callLogBean);
        logd("searchAdapter.setOnItemClickListener, findContactsBean: " + findContactsBean);
        if (findContactsBean != null && findContactsBean.getMobile() != null && findContactsBean.getMobile().size() > 1) {
            try {
                ((MainPresenter) getPresenter()).findContactBean(findContactsBean, true);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        BluetoothApplication.getInstance().dial(callLogBean.getNumber());
    }

    public /* synthetic */ void lambda$new$1$DialFrameLayout(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Contacts contacts = this.searchAdapter.getData().get(i);
        ContactBean findContactsBean = BluetoothApplication.getInstance().getDataProviderManager().findContactsBean(contacts);
        logd("searchAdapter.setOnItemClickListener, findContactsBean: " + findContactsBean);
        if (findContactsBean != null && findContactsBean.getMobile() != null && findContactsBean.getMobile().size() > 1) {
            try {
                ((MainPresenter) getPresenter()).findContactBean(findContactsBean, true);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        BluetoothApplication.getInstance().dial(contacts.getNumber());
    }

    @Override // com.yftech.btphone.view.Page
    public void setPresenter(IPresenter iPresenter) {
        super.setPresenter(iPresenter);
        ((MainPresenter) getPresenter()).getCompositeDisposableMgr().addSubscribeViewClickSpaceTime(this.tvGetNow, 1000L, new CompositeDisposableMgr.Callback() { // from class: com.yftech.btphone.view.DialFrameLayout.3
            @Override // com.yftech.btphone.lib.rx.CompositeDisposableMgr.Callback
            public void start() {
                int deviceConnectState;
                DialFrameLayout.this.showLoading();
                Device connectDevice = BluetoothApplication.getInstance().getDataProviderManager().getConnectDevice();
                if (connectDevice != null && connectDevice.isHfpConnected() && ((deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(connectDevice.getDevice(), 17)) == 0 || 3 == deviceConnectState)) {
                    CarBluetoothManager.getInstance().requestConnect(connectDevice.getDevice(), 17);
                } else {
                    CarBluetoothManager.getInstance().requestDownloadContacts();
                    BluetoothApplication.getInstance().getWindowManager().setNeedShowDownloadTip(true);
                }
            }
        });
        ((MainPresenter) getPresenter()).getCompositeDisposableMgr().addSubscribeViewClickSpaceTime(this.imgCall, 1000L, new CompositeDisposableMgr.Callback() { // from class: com.yftech.btphone.view.DialFrameLayout.4
            @Override // com.yftech.btphone.lib.rx.CompositeDisposableMgr.Callback
            public void start() {
                BluetoothApplication.getInstance().dial(DialFrameLayout.this.keyBoard.getRealValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.btphone.view.Page, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        KeyboardNumView keyboardNumView = this.keyBoard;
        if (keyboardNumView != null) {
            keyboardNumView.requestFocusEdit();
        }
    }

    public void refresh() {
        int contactsDownloadState = CarBluetoothManager.getInstance().getContactsDownloadState();
        int callLogDownloadState = CarBluetoothManager.getInstance().getCallLogDownloadState();
        boolean z = contactsDownloadState == 100 || contactsDownloadState == 1;
        boolean z2 = contactsDownloadState == 7;
        boolean z3 = callLogDownloadState == 100 || callLogDownloadState == 1;
        boolean z4 = callLogDownloadState == 7;
        logd("refresh, contactsDownloadState:" + contactsDownloadState + ",callLogDownloadState:" + callLogDownloadState);
        if (z && z3) {
            showIdl(getContext().getString(R.string.main_address_book_tip));
            return;
        }
        if (!z2 || !z4) {
            if (z2) {
                updateContacts(BluetoothApplication.getInstance().getDataProviderManager().getContacts());
            }
            if (z3) {
                updateList(BluetoothApplication.getInstance().getCallLogBeanList());
                return;
            } else {
                showLoading();
                return;
            }
        }
        showLoading();
        if (BluetoothApplication.getInstance().getDataProviderManager().getContacts().isEmpty()) {
            CarBluetoothManager.getInstance().requestContactsList();
            CarBluetoothManager.getInstance().requestCallLogList();
        } else {
            updateContacts(BluetoothApplication.getInstance().getDataProviderManager().getContacts());
            updateList(BluetoothApplication.getInstance().getCallLogBeanList());
        }
    }

    public void onTimeChanged() {
        CallLogAdapter callLogAdapter = this.mCallLogAdapter;
        if (callLogAdapter != null) {
            callLogAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleKeyboardInputChanged(String str) {
        logd("handleKeyboardInputChanged: " + str);
        if (str.length() > 0) {
            this.searchAdapter.getFilter().filter(str, this.mFilterListener);
            if (this.recyclerView.getAdapter() instanceof CallLogAdapter) {
                this.recyclerView.setAdapter(this.searchAdapter);
            } else {
                logd("handleKeyboardInputChanged searchAdapter: ");
            }
            logd("handleKeyboardInputChanged searchAdapter count: " + this.searchAdapter.getItemCount());
            return;
        }
        if (this.recyclerView.getAdapter() instanceof SearchNumAdapter) {
            this.recyclerView.setAdapter(this.mCallLogAdapter);
        }
        logd("handleKeyboardInputChanged mCallLogAdapter count: " + this.mCallLogAdapter.getItemCount());
        if (this.mCallLogAdapter.getItemCount() - this.mCallLogAdapter.getHeaderLayoutCount() == 0) {
            showMessage(getResources().getString(R.string.main_calllog_null));
            int contactsDownloadState = CarBluetoothManager.getInstance().getContactsDownloadState();
            int callLogDownloadState = CarBluetoothManager.getInstance().getCallLogDownloadState();
            boolean z = contactsDownloadState == 100 || contactsDownloadState == 1;
            boolean z2 = callLogDownloadState == 100 || callLogDownloadState == 1;
            logd("handleKeyboardInputChanged, contactsDownloadState:" + contactsDownloadState + ",callLogDownloadState:" + callLogDownloadState);
            if (z && z2) {
                showIdl(getContext().getString(R.string.main_address_book_tip));
                return;
            }
            return;
        }
        showRecycleView();
    }

    public void updateDownloadState(int i, int i2, int i3, int i4) {
        logd("updateDownloadState, type:" + i + ",state:" + i2 + ",position:" + i3 + ",total:" + i4);
        if (i == 0) {
            if (100 == i2) {
                showIdl(getResources().getString(R.string.download_failed));
                return;
            }
            if (3 == i2) {
                updateDownloadProgress(i, i3, i4);
                return;
            }
            if (7 == i2) {
                return;
            }
            if (2 == i2) {
                showLoading();
                return;
            } else if (5 == i2) {
                return;
            } else {
                return;
            }
        }
        if (1 == i) {
            if (100 == i2) {
                showIdl(getResources().getString(R.string.download_failed));
                return;
            }
            if (3 == i2) {
                updateDownloadProgress(i, i3, i4);
            } else if (7 != i2 && 2 == i2) {
                showLoading();
                this.mCallLogAdapter.setList(new ArrayList());
                updateDownloadProgress(i, 0, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRecycleView() {
        this.mHeadView.setVisibility(0);
        this.llSyncRightnow.setVisibility(8);
        this.llSyncLoading.setVisibility(8);
        this.llLoading.setVisibility(8);
        this.tvTip.setVisibility(8);
        this.recyclerView.setVisibility(0);
        setBackgroundRes(R.mipmap.btp_bg_left);
    }

    public void showIdl(String str) {
        this.llKeyBoard.setVisibility(0);
        this.llSyncRightnow.setVisibility(0);
        this.llSyncLoading.setVisibility(8);
        this.llLoading.setVisibility(8);
        this.tvTip.setVisibility(8);
        this.recyclerView.setVisibility(8);
        this.tvSyncMessage.setText(str);
        setBackgroundRes(R.mipmap.btp_bg_left);
    }

    public void showMessage(String str) {
        this.llKeyBoard.setVisibility(0);
        this.llSyncRightnow.setVisibility(8);
        this.llSyncLoading.setVisibility(8);
        this.llLoading.setVisibility(8);
        this.tvTip.setVisibility(0);
        this.recyclerView.setVisibility(8);
        this.tvTip.setText(str);
        setBackgroundRes(R.mipmap.btp_bg_left);
    }

    public void updateDownloadProgress(int i, int i2, int i3) {
        setBackgroundRes(R.mipmap.btp_bg_right);
        this.llKeyBoard.setVisibility(0);
        this.llSyncRightnow.setVisibility(8);
        this.llSyncLoading.setVisibility(0);
        this.llLoading.setVisibility(8);
        this.tvTip.setVisibility(8);
        this.recyclerView.setVisibility(8);
        if (i == 0) {
            this.tvProgress.setText(i2 + "/" + i3);
            this.tvRogressTip.setText(getContext().getResources().getString(R.string.main_addressbook_sync));
        } else {
            this.tvProgress.setText("");
            this.tvRogressTip.setText(getContext().getResources().getString(R.string.main_calllog_sync));
        }
        this.progressBar.setVisibility(0);
        this.progressBar.setMax(i3);
        this.progressBar.setProgress(i2);
    }

    public void showLoading() {
        this.llKeyBoard.setVisibility(0);
        this.llSyncRightnow.setVisibility(8);
        this.llSyncLoading.setVisibility(8);
        this.llLoading.setVisibility(0);
        this.tvTip.setVisibility(8);
        this.recyclerView.setVisibility(8);
        setBackgroundRes(R.mipmap.btp_bg_right);
    }

    public void updateList(List<CallLogBean> list) {
        logd("updateList:" + list.size());
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            showRecycleView();
            Iterator<CallLogBean> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
                if (arrayList.size() >= 30) {
                    break;
                }
            }
        } else {
            showMessage(getResources().getString(R.string.main_nothing));
        }
        this.mCallLogAdapter.setList(arrayList);
        handleKeyboardInputChanged(this.keyBoard.getRealValue());
    }

    public void updateContacts(List<Contacts> list) {
        this.searchAdapter.setTotalList(list);
    }

    public void updatePbapState(int i) {
        Device connectDevice;
        if (i == 0) {
            if (BluetoothApplication.getInstance().getDataProviderManager().mContactBeanList.isEmpty()) {
                showIdl(getContext().getString(R.string.download_failed));
            }
        } else if (1 == i && (connectDevice = BluetoothApplication.getInstance().getDataProviderManager().getConnectDevice()) != null && connectDevice.isHfpConnected()) {
            showLoading();
        }
    }

    private void setBackgroundRes(int i) {
        try {
            ((MainPresenter) getPresenter()).setBackgroundIcon(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
