.class public Lcom/yftech/btphone/app/MainActivity;
.super Lcom/yftech/btphone/lib/base/view/MvpActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/yftech/btphone/contract/IMainView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/btphone/lib/base/view/MvpActivity<",
        "Lcom/yftech/btphone/presenter/MainPresenter;",
        ">;",
        "Lcom/yftech/btphone/contract/IMainView;"
    }
.end annotation


# instance fields
.field fragmentGroup:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e1
    .end annotation
.end field

.field private mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

.field private mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

.field private mShowType:I

.field root:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080195
    .end annotation
.end field

.field tabContacts:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d8
    .end annotation
.end field

.field tabDial:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d9
    .end annotation
.end field

.field tabGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801da
    .end annotation
.end field

.field tabSearch:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801db
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;-><init>()V

    .line 43
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->NONE:I

    iput v0, p0, Lcom/yftech/btphone/app/MainActivity;->mShowType:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/app/MainActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/yftech/btphone/app/MainActivity;->mShowType:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/btphone/app/MainActivity;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/yftech/btphone/app/MainActivity;->mShowType:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/btphone/app/MainActivity;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->showTypeView(I)V

    return-void
.end method

.method private isEnabled()Z
    .locals 4

    .line 239
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result v0

    .line 240
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/proxy/DataProvider;->getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled: state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    const/16 v2, 0xc

    if-ne v2, v0, :cond_1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1}, Lcom/yftech/btphone/lib/bean/Device;->isHfpConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method

.method private parseEnterType(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "parseEnterType: intent is null"

    .line 177
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "HIM.ACTION.TYPE"

    .line 182
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseEnterType, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    const-string v1, "com.yftech.intent.action.bluetooth.ui.contacts"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    sget p1, Lcom/yftech/btphone/app/Config$TabType;->CONTACTS:I

    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->showType(I)V

    .line 186
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    const-class v0, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    return-void

    :cond_1
    const-string v1, "com.yftech.intent.action.bluetooth.ui.dial"

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    sget p1, Lcom/yftech/btphone/app/Config$TabType;->DIAL:I

    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->showType(I)V

    .line 190
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    const-class v0, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    return-void

    .line 194
    :cond_2
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->NONE:I

    const-string v1, "enter"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseEnterType,enter,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    .line 196
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->NONE:I

    if-ne v0, p1, :cond_5

    .line 197
    iget p1, p0, Lcom/yftech/btphone/app/MainActivity;->mShowType:I

    sget v0, Lcom/yftech/btphone/app/Config$TabType;->NONE:I

    if-eq p1, v0, :cond_4

    .line 198
    sget p1, Lcom/yftech/btphone/app/Config$TabType;->SEARCH:I

    iget v0, p0, Lcom/yftech/btphone/app/MainActivity;->mShowType:I

    if-eq p1, v0, :cond_3

    .line 199
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    const-class v0, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    :cond_3
    return-void

    .line 203
    :cond_4
    sget p1, Lcom/yftech/btphone/app/Config$TabType;->DIAL:I

    .line 205
    :cond_5
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->showType(I)V

    return-void
.end method

.method private showType(I)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    .line 211
    iput p1, p0, Lcom/yftech/btphone/app/MainActivity;->mShowType:I

    .line 213
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->DIAL:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabDial:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_0
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->CONTACTS:I

    if-ne v0, p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabContacts:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 217
    :cond_1
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->SEARCH:I

    if-ne v0, p1, :cond_2

    .line 218
    invoke-static {p0}, Lcom/yftech/btphone/utils/IntentUtils;->startSearchActivity(Landroid/content/Context;)V

    .line 219
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showTypeView(I)V
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTypeView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->fragmentGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 227
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->DIAL:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sourcehan-sans"

    if-ne v0, p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabDial:Landroid/widget/RadioButton;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabContacts:Landroid/widget/RadioButton;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->fragmentGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 231
    :cond_0
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->CONTACTS:I

    if-ne v0, p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabContacts:Landroid/widget/RadioButton;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabDial:Landroid/widget/RadioButton;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->fragmentGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findContactBean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    if-eqz v0, :cond_0

    .line 254
    sget v0, Lcom/yftech/btphone/app/Config$TabType;->CONTACTS:I

    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/MainActivity;->showType(I)V

    .line 255
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/btphone/view/ContactsFragment;->findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->finish()V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v0}, Lcom/yftech/btphone/app/MainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getViewLayout()I
    .locals 1

    const v0, 0x7f0b001e

    return v0
.end method

.method protected initView(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->tabGroup:Landroid/widget/RadioGroup;

    new-instance p2, Lcom/yftech/btphone/app/MainActivity$1;

    invoke-direct {p2, p0}, Lcom/yftech/btphone/app/MainActivity$1;-><init>(Lcom/yftech/btphone/app/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 72
    new-instance p1, Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-direct {p1, p0}, Lcom/yftech/btphone/view/DialFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    .line 73
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/DialFrameLayout;->setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V

    .line 75
    new-instance p1, Lcom/yftech/btphone/view/ContactsFragment;

    invoke-direct {p1, p0}, Lcom/yftech/btphone/view/ContactsFragment;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    .line 76
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/ContactsFragment;->setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V

    .line 78
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->parseEnterType(Landroid/content/Intent;)V

    .line 80
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/DialFrameLayout;->refresh()V

    return-void
.end method

.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadState(IIII)V

    return-void
.end method

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadState(IIII)V

    return-void
.end method

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallLogBeanList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->updateList(Ljava/util/List;)V

    .line 156
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/ContactsFragment;->returnTopContact()V

    return-void
.end method

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadState(IIII)V

    return-void
.end method

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadState(IIII)V

    return-void
.end method

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->updateContacts(Ljava/util/List;)V

    .line 129
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/ContactsFragment;->returnLetterList()V

    .line 130
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mContactsPage:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/ContactsFragment;->returnContactBook()V

    return-void
.end method

.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    const/4 p1, 0x2

    if-eq p1, p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/DialFrameLayout;->updatePbapState(I)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801db
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801db

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onClick tab_search"

    .line 168
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->logd(Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lcom/yftech/btphone/utils/IntentUtils;->startSearchActivity(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/MainActivity;->parseEnterType(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/yftech/btphone/app/MainActivity;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->isExistValidPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->isPhoneCallDialogShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->showPhoneCallActivity()V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainActivity;->onTimeChanged()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 282
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onStop()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .line 273
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    .line 274
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/DataProvider;->updateSimpleDateFormat(Z)V

    .line 275
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->mDialPage:Lcom/yftech/btphone/view/DialFrameLayout;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/yftech/btphone/view/DialFrameLayout;->onTimeChanged()V

    :cond_0
    return-void
.end method

.method public setBackgroundIcon(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
