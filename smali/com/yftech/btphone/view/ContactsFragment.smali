.class public Lcom/yftech/btphone/view/ContactsFragment;
.super Lcom/yftech/btphone/view/Page;
.source "ContactsFragment.java"


# instance fields
.field private contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

.field private headRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

.field private isLastClickFavorItem:Z

.field private mFrameHead:Landroid/widget/FrameLayout;

.field private mLastClickPosition:I

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018a
    .end annotation
.end field

.field recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018b
    .end annotation
.end field

.field relaContacts:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018e
    .end annotation
.end field

.field relaPerson:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018f
    .end annotation
.end field

.field sideBar:Lcom/yftech/btphone/view/SideIndexBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b5
    .end annotation
.end field

.field private topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

.field tvEmptyTip:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020d
    .end annotation
.end field

.field tvPersonHead:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080215
    .end annotation
.end field

.field tvPopular:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080218
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 66
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/Page;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->isLastClickFavorItem:Z

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08018f

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    const v2, 0x7f080218

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/view/FontTextView;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const v2, 0x7f0801b5

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/view/SideIndexBar;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    const v2, 0x7f0800e2

    .line 72
    invoke-virtual {p0, v2}, Lcom/yftech/btphone/view/ContactsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->mFrameHead:Landroid/widget/FrameLayout;

    const v2, 0x7f080215

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/view/FontTextView;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    const v2, 0x7f08018b

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f08018a

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f08018e

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaContacts:Landroid/widget/FrameLayout;

    const v2, 0x7f08020d

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/FontTextView;

    iput-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvEmptyTip:Lcom/yftech/btphone/view/FontTextView;

    .line 79
    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/view/SideIndexBar;->setOrientation(I)V

    .line 81
    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    const/16 v2, 0x19

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v0, v2, v3}, Lcom/yftech/btphone/view/SideIndexBar;->setPadding(IIII)V

    .line 84
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 87
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 88
    iget-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 91
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->headRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    new-instance v2, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;

    invoke-direct {v2, p1, v0}, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0xc

    .line 93
    invoke-virtual {v2, p1}, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;->setHorizontalSpace(I)V

    .line 94
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->headRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 95
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->headRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance p1, Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-direct {p1}, Lcom/yftech/btphone/adapter/ContactAdapter;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    .line 97
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->setType(I)V

    .line 98
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->headRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 101
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    new-instance p1, Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-direct {p1}, Lcom/yftech/btphone/adapter/ContactAdapter;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    .line 103
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/yftech/btphone/adapter/ContactAdapter;->setType(I)V

    .line 104
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->headRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v0, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->addHeaderView(Landroid/view/View;II)I

    .line 105
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    new-instance p1, Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-direct {p1}, Lcom/yftech/btphone/adapter/PhoneAdapter;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    .line 110
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    new-instance v0, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$dM9dCmJUZIvQjiHIR0SNaDVUpQY;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$dM9dCmJUZIvQjiHIR0SNaDVUpQY;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/PhoneAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$yD6QrWXGyrtoIIVm52H-BJCYf3A;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$yD6QrWXGyrtoIIVm52H-BJCYf3A;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-direct {p0}, Lcom/yftech/btphone/view/ContactsFragment;->initScroll()V

    .line 133
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    new-instance v0, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$OrYnKqQoAKGgtNGL7Qu3r4GPmbU;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$OrYnKqQoAKGgtNGL7Qu3r4GPmbU;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    new-instance v0, Lcom/yftech/btphone/view/ContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/ContactsFragment$1;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    sget-object v0, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$40qsy-StmaCuzkiSC2JVNIp4GCk;->INSTANCE:Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$40qsy-StmaCuzkiSC2JVNIp4GCk;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 152
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    new-instance v0, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$81V0NIT6GhvcpieiH6qp3chmyCk;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$81V0NIT6GhvcpieiH6qp3chmyCk;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    new-instance v0, Lcom/yftech/btphone/view/ContactsFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/ContactsFragment$2;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->returnContactBook()V

    .line 169
    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->returnLetterList()V

    .line 170
    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->returnTopContact()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/view/ContactsFragment;Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/ContactsFragment;->initPersonCard(Lcom/yftech/btphone/bean/ContactBean;)V

    return-void
.end method

.method static synthetic access$102(Lcom/yftech/btphone/view/ContactsFragment;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->isLastClickFavorItem:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/btphone/view/ContactsFragment;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/btphone/view/ContactsFragment;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/btphone/view/ContactsFragment;)Lcom/yftech/btphone/adapter/ContactAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/btphone/view/ContactsFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/yftech/btphone/view/ContactsFragment;->choosePopular()V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/btphone/view/ContactsFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/btphone/view/ContactsFragment;)Lcom/yftech/btphone/adapter/ContactAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    return-object p0
.end method

.method private choosePopular()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/SideIndexBar;->setCurrentIndex(I)V

    .line 302
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 303
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700bf

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initPersonCard(Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPersonCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/adapter/PhoneAdapter;->setContactBean(Lcom/yftech/btphone/bean/ContactBean;)V

    .line 239
    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v2, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mFrameHead:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mFrameHead:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->phoneAdapter:Lcom/yftech/btphone/adapter/PhoneAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/adapter/PhoneAdapter;->setList(Ljava/util/Collection;)V

    .line 260
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initScroll()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    new-instance v1, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$vkvVKD5NX096QBh0tUNZUPWEdz4;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/view/-$$Lambda$ContactsFragment$vkvVKD5NX096QBh0tUNZUPWEdz4;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/SideIndexBar;->setOnIndexChangedListener(Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;)V

    .line 192
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/btphone/view/ContactsFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/view/ContactsFragment$3;-><init>(Lcom/yftech/btphone/view/ContactsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/adapter/ContactAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {v1}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findContactBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",showCard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    if-eqz p2, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/ContactsFragment;->initPersonCard(Lcom/yftech/btphone/bean/ContactBean;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initScroll$5$ContactsFragment(Ljava/lang/String;I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {v1}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScroll,index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/adapter/ContactAdapter;->getPositionForSection(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 189
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$ContactsFragment(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phoneAdapter click:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/app/BluetoothApplication;->dial(Ljava/lang/String;)Z

    .line 118
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaContacts:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$1$ContactsFragment(Landroid/view/View;)V
    .locals 1

    const-string p1, "relaPerson click"

    .line 124
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->relaContacts:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$2$ContactsFragment(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "contactAdapter setOnItemClickListener:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$4$ContactsFragment(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "topContactAdapter click:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/ContactsFragment;->initPersonCard(Lcom/yftech/btphone/bean/ContactBean;)V

    .line 155
    iput p3, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/yftech/btphone/view/ContactsFragment;->isLastClickFavorItem:Z

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLastClickPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public returnContactBook()V
    .locals 3

    .line 278
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->contactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->setList(Ljava/util/Collection;)V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvEmptyTip:Lcom/yftech/btphone/view/FontTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setTextColor(I)V

    .line 285
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 286
    invoke-direct {p0}, Lcom/yftech/btphone/view/ContactsFragment;->choosePopular()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->tvEmptyTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public returnLetterList()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/yftech/btphone/proxy/DataProvider;->mLetters:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/SideIndexBar;->setIndexItems(Ljava/util/List;)V

    return-void
.end method

.method public returnTopContact()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->topContactAdapter:Lcom/yftech/btphone/adapter/ContactAdapter;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/adapter/ContactAdapter;->setList(Ljava/util/Collection;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "returnTopContact, mLastClickPosition :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isLastClickFavorItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->isLastClickFavorItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 268
    iget-boolean v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->isLastClickFavorItem:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 273
    :goto_0
    iput v1, p0, Lcom/yftech/btphone/view/ContactsFragment;->mLastClickPosition:I

    :cond_1
    return-void
.end method

.method public setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lcom/yftech/btphone/view/Page;->setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V

    return-void
.end method
