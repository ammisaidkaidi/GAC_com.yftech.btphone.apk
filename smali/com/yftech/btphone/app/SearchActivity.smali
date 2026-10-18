.class public Lcom/yftech/btphone/app/SearchActivity;
.super Lcom/yftech/btphone/lib/base/view/MvpActivity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/yftech/btphone/contract/ISearchView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/btphone/lib/base/view/MvpActivity<",
        "Lcom/yftech/btphone/presenter/SearchPresenter;",
        ">;",
        "Lcom/yftech/btphone/contract/ISearchView;"
    }
.end annotation


# instance fields
.field private contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

.field editText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ca
    .end annotation
.end field

.field private isFinishWhenStop:Z

.field ivClear:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080106
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018c
    .end annotation
.end field

.field private searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

.field tvCannel:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/yftech/btphone/app/SearchActivity;->isFinishWhenStop:Z

    .line 301
    new-instance v0, Lcom/yftech/btphone/app/SearchActivity$5;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/SearchActivity$5;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/SearchActivity;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/app/SearchActivity;)Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/btphone/app/SearchActivity;->searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/btphone/app/SearchActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/SearchActivity;->setInsertionDisabled(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/btphone/app/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/SearchActivity;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private registerButtonReceiver()V
    .locals 2

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.systemui.btn.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/yftech/btphone/app/SearchActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/btphone/app/SearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setInsertionDisabled(Landroid/widget/EditText;)V
    .locals 5

    .line 254
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android.widget.Editor"

    .line 259
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mInsertionControllerEnabled"

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 262
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "mSelectionControllerEnabled"

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkShouldClose()V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/yftech/btphone/app/SearchActivity;->isFinishWhenStop:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->finish()V

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/yftech/btphone/app/SearchActivity;->isFinishWhenStop:Z

    :cond_0
    return-void
.end method

.method public closeContactsDetailDialog()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/ContactsDetailDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/ContactsDetailDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public disableCopyAndPaste(Landroid/widget/EditText;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    :try_start_0
    new-instance v0, Lcom/yftech/btphone/app/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/SearchActivity$2;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 214
    new-instance v0, Lcom/yftech/btphone/app/SearchActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/yftech/btphone/app/SearchActivity$3;-><init>(Lcom/yftech/btphone/app/SearchActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    new-instance v0, Lcom/yftech/btphone/app/SearchActivity$4;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/SearchActivity$4;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->finish()V

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0, v0}, Lcom/yftech/btphone/app/SearchActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getViewLayout()I
    .locals 1

    const v0, 0x7f0b001f

    return v0
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "hideKeyboard: "

    .line 275
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/SearchActivity;->logd(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3

    .line 65
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 67
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    new-instance p1, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;

    invoke-direct {p1, p0, p2}, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const/16 p2, 0x19

    .line 69
    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;->setHorizontalSpace(I)V

    .line 70
    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 71
    new-instance p1, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-direct {p1, p0}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    .line 72
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity;->searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p2

    iget-object p2, p2, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->setTotalList(Ljava/util/List;)V

    .line 75
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p2

    iget-object p2, p2, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->setNormalData(Ljava/util/List;)V

    .line 76
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    new-instance p2, Lcom/yftech/btphone/app/SearchActivity$1;

    invoke-direct {p2, p0}, Lcom/yftech/btphone/app/SearchActivity$1;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->searchFuzzyAdapter:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    new-instance p2, Lcom/yftech/btphone/app/-$$Lambda$SearchActivity$XrgL9uV8rygodRxtcq7dzZvhavU;

    invoke-direct {p2, p0}, Lcom/yftech/btphone/app/-$$Lambda$SearchActivity$XrgL9uV8rygodRxtcq7dzZvhavU;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast p1, Lcom/yftech/btphone/presenter/SearchPresenter;

    invoke-virtual {p1}, Lcom/yftech/btphone/presenter/SearchPresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity;->tvCannel:Lcom/yftech/btphone/view/FontTextView;

    invoke-static {p2}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 101
    invoke-virtual {p2, v1, v2, v0}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/yftech/btphone/app/-$$Lambda$SearchActivity$mGrqmCNLSHNQdpmXQs8UsNWJH50;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/-$$Lambda$SearchActivity$mGrqmCNLSHNQdpmXQs8UsNWJH50;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    .line 102
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast p1, Lcom/yftech/btphone/presenter/SearchPresenter;

    invoke-virtual {p1}, Lcom/yftech/btphone/presenter/SearchPresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity;->ivClear:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-virtual {p2, v1, v2, v0}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/yftech/btphone/app/-$$Lambda$SearchActivity$k5TKEA8CDZ1O7whqyuo0VpyflxY;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/-$$Lambda$SearchActivity$k5TKEA8CDZ1O7whqyuo0VpyflxY;-><init>(Lcom/yftech/btphone/app/SearchActivity;)V

    .line 106
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 110
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/SearchActivity;->disableCopyAndPaste(Landroid/widget/EditText;)V

    .line 112
    invoke-direct {p0}, Lcom/yftech/btphone/app/SearchActivity;->registerButtonReceiver()V

    .line 114
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public synthetic lambda$initView$0$SearchActivity(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    .line 97
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/SearchActivity;->showContactsDetailDialog(Lcom/yftech/btphone/bean/ContactBean;)V

    return-void
.end method

.method public synthetic lambda$initView$1$SearchActivity(Lkotlin/Unit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initView$2$SearchActivity(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    const/4 p1, 0x2

    if-eq p1, p2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/SearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->reset()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onResume()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/yftech/btphone/app/SearchActivity;->isFinishWhenStop:Z

    .line 126
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 128
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/SearchActivity;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onStop()V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, isFinishWhenStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/btphone/app/SearchActivity;->isFinishWhenStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/SearchActivity;->logd(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->checkShouldClose()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/SearchActivity;->hideKeyboard(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0}, Lcom/yftech/btphone/app/SearchActivity;->closeContactsDetailDialog()V

    return-void
.end method

.method public setFinishWhenStop(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/yftech/btphone/app/SearchActivity;->isFinishWhenStop:Z

    return-void
.end method

.method public showContactsDetailDialog(Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/ContactsDetailDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/ContactsDetailDialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity;->contactsDetailDialog:Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->updateContacts(Lcom/yftech/btphone/bean/ContactBean;)V

    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "showKeyboard: "

    .line 283
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/SearchActivity;->logd(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
