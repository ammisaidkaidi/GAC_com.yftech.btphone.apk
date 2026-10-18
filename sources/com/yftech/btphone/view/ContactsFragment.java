package com.yftech.btphone.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.yftech.btphone.R;
import com.yftech.btphone.adapter.ContactAdapter;
import com.yftech.btphone.adapter.PhoneAdapter;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.lib.base.presenter.IPresenter;
import com.yftech.btphone.lib.view.MyDividerItemDecoration;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.btphone.view.SideIndexBar;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContactsFragment extends Page {
    private ContactAdapter contactAdapter;
    private RecyclerView headRecyclerview;
    private boolean isLastClickFavorItem;
    private FrameLayout mFrameHead;
    private int mLastClickPosition;
    private LinearLayoutManager mLinearLayoutManager;
    private PhoneAdapter phoneAdapter;

    @BindView(R.id.recycler_constact)
    RecyclerView recyclerView;

    @BindView(R.id.recycler_phone)
    RecyclerView recyclerViewPhone;

    @BindView(R.id.rela_contacts)
    FrameLayout relaContacts;

    @BindView(R.id.rela_person)
    RelativeLayout relaPerson;

    @BindView(R.id.side_bar)
    SideIndexBar sideBar;
    private ContactAdapter topContactAdapter;

    @BindView(R.id.tv_empty_tip)
    FontTextView tvEmptyTip;

    @BindView(R.id.tv_person_head)
    FontTextView tvPersonHead;

    @BindView(R.id.tv_popular)
    FontTextView tvPopular;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$new$3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    public ContactsFragment(Context context) {
        super(context);
        this.isLastClickFavorItem = false;
        this.mLastClickPosition = -1;
        View inflate = LayoutInflater.from(context).inflate(R.layout.fragment_contacts, this);
        this.relaPerson = (RelativeLayout) inflate.findViewById(R.id.rela_person);
        this.tvPopular = (FontTextView) inflate.findViewById(R.id.tv_popular);
        this.sideBar = (SideIndexBar) inflate.findViewById(R.id.side_bar);
        this.mFrameHead = (FrameLayout) findViewById(R.id.fragment_head);
        this.tvPersonHead = (FontTextView) inflate.findViewById(R.id.tv_person_head);
        this.recyclerViewPhone = (RecyclerView) inflate.findViewById(R.id.recycler_phone);
        this.recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler_constact);
        this.relaContacts = (FrameLayout) inflate.findViewById(R.id.rela_contacts);
        this.tvEmptyTip = (FontTextView) inflate.findViewById(R.id.tv_empty_tip);
        this.relaPerson.setVisibility(8);
        this.sideBar.setOrientation(0);
        this.sideBar.setPadding(25, 0, 25, 20);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        this.mLinearLayoutManager = new LinearLayoutManager(getContext());
        this.mLinearLayoutManager.setOrientation(0);
        this.headRecyclerview = new RecyclerView(getContext());
        MyDividerItemDecoration myDividerItemDecoration = new MyDividerItemDecoration(context, 0);
        myDividerItemDecoration.setHorizontalSpace(12);
        this.headRecyclerview.addItemDecoration(myDividerItemDecoration);
        this.headRecyclerview.setLayoutManager(linearLayoutManager);
        this.topContactAdapter = new ContactAdapter();
        this.topContactAdapter.setType(0);
        this.headRecyclerview.setAdapter(this.topContactAdapter);
        this.recyclerView.addItemDecoration(myDividerItemDecoration);
        this.recyclerView.setLayoutManager(this.mLinearLayoutManager);
        this.contactAdapter = new ContactAdapter();
        this.contactAdapter.setType(1);
        this.contactAdapter.addHeaderView(this.headRecyclerview, 0, 0);
        this.recyclerView.setAdapter(this.contactAdapter);
        this.recyclerViewPhone.setLayoutManager(new LinearLayoutManager(getContext()));
        this.phoneAdapter = new PhoneAdapter();
        this.recyclerViewPhone.setAdapter(this.phoneAdapter);
        this.phoneAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$ContactsFragment$dM9dCmJUZIvQjiHIR0SNaDVUpQY
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactsFragment.this.lambda$new$0$ContactsFragment(baseQuickAdapter, view, i);
            }
        });
        this.relaPerson.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$ContactsFragment$yD6QrWXGyrtoIIVm52H-BJCYf3A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactsFragment.this.lambda$new$1$ContactsFragment(view);
            }
        });
        initScroll();
        this.contactAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$ContactsFragment$OrYnKqQoAKGgtNGL7Qu3r4GPmbU
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactsFragment.this.lambda$new$2$ContactsFragment(baseQuickAdapter, view, i);
            }
        });
        this.contactAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.yftech.btphone.view.ContactsFragment.1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactsFragment.this.logd("contactAdapter OnItemChildClickListener:" + i);
                ContactsFragment.this.initPersonCard((ContactBean) baseQuickAdapter.getData().get(i));
                ContactsFragment.this.isLastClickFavorItem = false;
                ContactsFragment contactsFragment = ContactsFragment.this;
                contactsFragment.mLastClickPosition = i + contactsFragment.topContactAdapter.getHeaderLayoutCount();
                ContactsFragment.this.logd("mLastClickPosition:" + ContactsFragment.this.mLastClickPosition);
            }
        });
        this.topContactAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$ContactsFragment$40qsy-StmaCuzkiSC2JVNIp4GCk
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactsFragment.lambda$new$3(baseQuickAdapter, view, i);
            }
        });
        this.topContactAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.yftech.btphone.view.-$$Lambda$ContactsFragment$81V0NIT6GhvcpieiH6qp3chmyCk
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactsFragment.this.lambda$new$4$ContactsFragment(baseQuickAdapter, view, i);
            }
        });
        this.tvPopular.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.btphone.view.ContactsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactsFragment.this.logd("click tvPopular");
                ContactsFragment.this.choosePopular();
            }
        });
        returnContactBook();
        returnLetterList();
        returnTopContact();
    }

    public /* synthetic */ void lambda$new$0$ContactsFragment(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        logd("phoneAdapter click:" + i);
        BluetoothApplication.getInstance().dial((String) baseQuickAdapter.getData().get(i));
        this.relaPerson.setVisibility(8);
        this.relaContacts.setVisibility(0);
    }

    public /* synthetic */ void lambda$new$1$ContactsFragment(View view) {
        logd("relaPerson click");
        this.relaPerson.setVisibility(8);
        this.relaContacts.setVisibility(0);
    }

    public /* synthetic */ void lambda$new$2$ContactsFragment(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        logd("contactAdapter setOnItemClickListener:" + i);
    }

    public /* synthetic */ void lambda$new$4$ContactsFragment(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        logd("topContactAdapter click:" + i);
        initPersonCard((ContactBean) baseQuickAdapter.getData().get(i));
        this.mLastClickPosition = i;
        this.isLastClickFavorItem = true;
        logd("mLastClickPosition:" + this.mLastClickPosition);
    }

    @Override // com.yftech.btphone.view.Page
    public void setPresenter(IPresenter iPresenter) {
        super.setPresenter(iPresenter);
    }

    private void initScroll() {
        this.sideBar.setOnIndexChangedListener(new SideIndexBar.OnIndexTouchedChangedListener() { // from class: com.yftech.btphone.view.-$$Lambda$ContactsFragment$vkvVKD5NX096QBh0tUNZUPWEdz4
            @Override // com.yftech.btphone.view.SideIndexBar.OnIndexTouchedChangedListener
            public final void onIndexChanged(String str, int i) {
                ContactsFragment.this.lambda$initScroll$5$ContactsFragment(str, i);
            }
        });
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.btphone.view.ContactsFragment.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (i != 0) {
                    int findFirstVisibleItemPosition = ContactsFragment.this.mLinearLayoutManager.findFirstVisibleItemPosition();
                    if (findFirstVisibleItemPosition > 0) {
                        int i3 = findFirstVisibleItemPosition - 1;
                        ContactsFragment.this.contactAdapter.getData().get(i3).getLetterIndex();
                        int index = ContactsFragment.this.sideBar.getIndex(ContactsFragment.this.contactAdapter.getData().get(i3).getLetter());
                        if (index != ContactsFragment.this.sideBar.getCurrentIndex()) {
                            ContactsFragment.this.sideBar.setCurrentIndex(index);
                            ContactsFragment.this.tvPopular.setBackground(null);
                            return;
                        }
                        return;
                    }
                    if (ContactsFragment.this.sideBar.getCurrentIndex() != -1) {
                        ContactsFragment.this.sideBar.setCurrentIndex(-1);
                    }
                }
            }
        });
    }

    public /* synthetic */ void lambda$initScroll$5$ContactsFragment(String str, int i) {
        this.tvPopular.setBackground(null);
        if (this.contactAdapter.getItemCount() - this.contactAdapter.getHeaderLayoutCount() == 0) {
            return;
        }
        logd("initScroll,index: " + str + ",position:" + i);
        int positionForSection = this.contactAdapter.getPositionForSection(str.toUpperCase().charAt(0));
        if (positionForSection != -1) {
            this.mLinearLayoutManager.scrollToPositionWithOffset(positionForSection, 0);
        }
    }

    public void findContactBean(ContactBean contactBean, boolean z) {
        int itemPosition = this.contactAdapter.getItemPosition(contactBean) + this.contactAdapter.getHeaderLayoutCount();
        logd("findContactBean: " + itemPosition + ",showCard:" + z);
        this.mLinearLayoutManager.scrollToPositionWithOffset(itemPosition, 0);
        if (z) {
            initPersonCard(contactBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initPersonCard(ContactBean contactBean) {
        logd("initPersonCard: " + contactBean);
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
        this.relaPerson.setVisibility(0);
    }

    public void returnTopContact() {
        this.topContactAdapter.setList(BluetoothApplication.getInstance().getDataProviderManager().mTopContactBeanList);
        logd("returnTopContact, mLastClickPosition :" + this.mLastClickPosition + ",isLastClickFavorItem:" + this.isLastClickFavorItem);
        int i = this.mLastClickPosition;
        if (-1 != i) {
            if (this.isLastClickFavorItem) {
                this.mLinearLayoutManager.scrollToPositionWithOffset(0, 0);
            } else {
                this.mLinearLayoutManager.scrollToPositionWithOffset(i, 0);
            }
            this.mLastClickPosition = -1;
        }
    }

    public void returnContactBook() {
        List<ContactBean> list = BluetoothApplication.getInstance().getDataProviderManager().mContactBeanList;
        logd("size:" + list.size());
        this.contactAdapter.setList(list);
        if (!list.isEmpty()) {
            this.tvEmptyTip.setVisibility(4);
            this.tvPopular.setTextColor(-1);
            this.tvPopular.setEnabled(true);
            choosePopular();
            return;
        }
        this.tvPopular.setEnabled(false);
        this.tvPopular.setBackground(null);
        this.tvPopular.setTextColor(-7829368);
        this.tvEmptyTip.setVisibility(0);
    }

    public void returnLetterList() {
        this.sideBar.setIndexItems(BluetoothApplication.getInstance().getDataProviderManager().mLetters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void choosePopular() {
        this.sideBar.setCurrentIndex(-1);
        this.mLinearLayoutManager.scrollToPositionWithOffset(0, 0);
        this.tvPopular.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.shape_yellow_light));
    }
}
