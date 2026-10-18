.class public Lcom/yftech/btphone/app/ContactsDetailDialog;
.super Landroid/app/Dialog;
.source "ContactsDetailDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private mFrameHead:Landroid/widget/FrameLayout;

.field private mLinearLayout:Landroid/widget/FrameLayout;

.field private phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

.field private recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

.field private tvPersonHead:Lcom/yftech/btphone/view/FontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1002ce

    .line 39
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "ContactsDetailDialog"

    .line 29
    iput-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->TAG:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/ContactsDetailDialog;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private click(Lcom/yftech/btphone/bean/ContactBean;Ljava/lang/String;)V
    .locals 3

    .line 74
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yftech/btphone/app/BluetoothApplication;->dial(Ljava/lang/String;)Z

    .line 76
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p2

    const-class v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {p2, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/yftech/btphone/app/MainActivity;

    .line 77
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click, mainActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p2, p1, v0}, Lcom/yftech/btphone/app/MainActivity;->findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    const-class p2, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/app/SearchActivity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2}, Lcom/yftech/btphone/app/SearchActivity;->setFinishWhenStop(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ContactsDetailDialog(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {p2}, Lcom/yftech/btphone/adapter/PhoneAdapter;->getContactBean()Lcom/yftech/btphone/bean/ContactBean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->click(Lcom/yftech/btphone/bean/ContactBean;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0037

    .line 47
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->setContentView(I)V

    const p1, 0x7f08011e

    .line 49
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->mLinearLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f080215

    .line 50
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/view/FontTextView;

    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    const p1, 0x7f0800e2

    .line 51
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->mFrameHead:Landroid/widget/FrameLayout;

    const p1, 0x7f08018b

    .line 52
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    iget-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    new-instance p1, Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-direct {p1}, Lcom/yftech/btphone/adapter/PhoneAdapter;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    .line 56
    iget-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    new-instance v0, Lcom/yftech/btphone/app/-$$Lambda$ContactsDetailDialog$fys4iPebK9944QwHCZZFAsJAWYg;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/-$$Lambda$ContactsDetailDialog$fys4iPebK9944QwHCZZFAsJAWYg;-><init>(Lcom/yftech/btphone/app/ContactsDetailDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/PhoneAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->mLinearLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/yftech/btphone/app/ContactsDetailDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/ContactsDetailDialog$1;-><init>(Lcom/yftech/btphone/app/ContactsDetailDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateContacts(Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/adapter/PhoneAdapter;->setContactBean(Lcom/yftech/btphone/bean/ContactBean;)V

    .line 92
    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v2, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->mFrameHead:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->mFrameHead:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/yftech/btphone/app/ContactsDetailDialog;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/adapter/PhoneAdapter;->setList(Ljava/util/Collection;)V

    return-void
.end method
