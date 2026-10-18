.class public Lcom/yftech/btphone/view/DialFrameLayout;
.super Lcom/yftech/btphone/view/Page;
.source "DialFrameLayout.java"


# static fields
.field private static final MAX_SHOW_COUNT:I = 0x1e

.field public static final TYPE_CALLLOG:I = 0x1

.field public static final TYPE_CONTACTS:I


# instance fields
.field imgCall:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fc
    .end annotation
.end field

.field private isCanScroll:Z

.field keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080109
    .end annotation
.end field

.field llKeyBoard:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011b
    .end annotation
.end field

.field llLoading:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011d
    .end annotation
.end field

.field llSyncLoading:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080121
    .end annotation
.end field

.field llSyncRightnow:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080122
    .end annotation
.end field

.field private mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

.field private mFilterListener:Landroid/widget/Filter$FilterListener;

.field private mHeadView:Landroid/view/View;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080184
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018d
    .end annotation
.end field

.field private searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

.field tvGetNow:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020e
    .end annotation
.end field

.field tvProgress:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080219
    .end annotation
.end field

.field tvRogressTip:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021b
    .end annotation
.end field

.field tvSyncMessage:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021f
    .end annotation
.end field

.field tvTip:Lcom/yftech/btphone/view/FontTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080223
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 58
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/Page;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->isCanScroll:Z

    .line 268
    new-instance v0, Lcom/yftech/btphone/view/DialFrameLayout$5;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/DialFrameLayout$5;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;)V

    iput-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mFilterListener:Landroid/widget/Filter$FilterListener;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08018d

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080109

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/KeyboardNumView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    const v1, 0x7f08011b

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    const v1, 0x7f0800fc

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->imgCall:Landroid/widget/ImageView;

    const v1, 0x7f080223

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/FontTextView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08011d

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    const v1, 0x7f08021f

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/FontTextView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvSyncMessage:Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08020e

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/FontTextView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvGetNow:Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080122

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    const v1, 0x7f08021b

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/FontTextView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvRogressTip:Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080219

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/view/FontTextView;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvProgress:Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080121

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    const v1, 0x7f080184

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 75
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    new-instance v1, Lcom/yftech/btphone/view/DialFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/view/DialFrameLayout$1;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/KeyboardNumView;->setOnInputChangeListener(Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;)V

    .line 85
    new-instance v0, Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/adapter/CallLogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    .line 86
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    new-instance v1, Lcom/yftech/btphone/view/-$$Lambda$DialFrameLayout$6nPA4oTzSGCZ3UUCTBGGqpm-5uU;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/view/-$$Lambda$DialFrameLayout$6nPA4oTzSGCZ3UUCTBGGqpm-5uU;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/adapter/CallLogAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 101
    new-instance v0, Lcom/yftech/btphone/view/DialFrameLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout$2;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 109
    new-instance v2, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;

    invoke-direct {v2, p1, v1}, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0xc

    .line 110
    invoke-virtual {v2, v3}, Lcom/yftech/btphone/lib/view/MyDividerItemDecoration;->setHorizontalSpace(I)V

    .line 111
    iget-object v3, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 112
    iget-object v2, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0036

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mHeadView:Landroid/view/View;

    .line 116
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Lcom/yftech/btphone/adapter/CallLogAdapter;->setHeaderView(Landroid/view/View;II)I

    .line 119
    new-instance p1, Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/btphone/adapter/SearchNumAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    .line 120
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    new-instance v0, Lcom/yftech/btphone/view/-$$Lambda$DialFrameLayout$-0o3s-G_Yntb71GJDgVS2bo9mbE;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/view/-$$Lambda$DialFrameLayout$-0o3s-G_Yntb71GJDgVS2bo9mbE;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;)V

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/view/DialFrameLayout;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->handleKeyboardInputChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/view/DialFrameLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->isCanScroll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/btphone/view/DialFrameLayout;)Lcom/yftech/btphone/adapter/SearchNumAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/btphone/view/DialFrameLayout;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showRecycleView()V

    return-void
.end method

.method private handleKeyboardInputChanged(Ljava/lang/String;)V
    .locals 6

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleKeyboardInputChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mFilterListener:Landroid/widget/Filter$FilterListener;

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 229
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/btphone/adapter/CallLogAdapter;

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const-string p1, "handleKeyboardInputChanged searchAdapter: "

    .line 232
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    .line 234
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleKeyboardInputChanged searchAdapter count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/btphone/adapter/SearchNumAdapter;

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleKeyboardInputChanged mCallLogAdapter count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/CallLogAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {p1}, Lcom/yftech/btphone/adapter/CallLogAdapter;->getItemCount()I

    move-result p1

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/CallLogAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-nez p1, :cond_7

    .line 245
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->showMessage(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getContactsDownloadState()I

    move-result p1

    .line 248
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getCallLogDownloadState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v3

    :goto_2
    const/4 v5, 0x7

    if-eq v0, v2, :cond_5

    if-ne v0, v3, :cond_6

    :cond_5
    move v1, v3

    .line 254
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeyboardInputChanged, contactsDownloadState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",callLogDownloadState:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 259
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->showIdl(Ljava/lang/String;)V

    goto :goto_3

    .line 262
    :cond_7
    invoke-direct {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showRecycleView()V

    :cond_8
    :goto_3
    return-void
.end method

.method private setBackgroundRes(I)V
    .locals 1

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/presenter/MainPresenter;->setBackgroundIcon(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showRecycleView()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mHeadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const v0, 0x7f0c0007

    .line 327
    invoke-direct {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->setBackgroundRes(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DialFrameLayout(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {p1}, Lcom/yftech/btphone/adapter/CallLogAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/bean/CallLogBean;

    .line 88
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/proxy/DataProvider;->findContactsBean(Lcom/yftech/btphone/bean/CallLogBean;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object p2

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchAdapter.setOnItemClickListener, findContactsBean: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {p1, p2, v0}, Lcom/yftech/btphone/presenter/MainPresenter;->findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/CallLogBean;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/app/BluetoothApplication;->dial(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$new$1$DialFrameLayout(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 122
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/proxy/DataProvider;->findContactsBean(Lcom/yftech/car/bluetooth/model/Contacts;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object p2

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchAdapter.setOnItemClickListener, findContactsBean: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {p1, p2, v0}, Lcom/yftech/btphone/presenter/MainPresenter;->findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/app/BluetoothApplication;->dial(Ljava/lang/String;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/yftech/btphone/view/Page;->onAttachedToWindow()V

    .line 169
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/yftech/btphone/view/KeyboardNumView;->requestFocusEdit()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/CallLogAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 8

    .line 175
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getContactsDownloadState()I

    move-result v0

    .line 176
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getCallLogDownloadState()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    const/4 v6, 0x7

    if-ne v0, v6, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eq v1, v2, :cond_4

    if-ne v1, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v4

    :goto_4
    if-ne v1, v6, :cond_5

    move v3, v4

    .line 182
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresh, contactsDownloadState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",callLogDownloadState:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 188
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->showIdl(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v3, :cond_8

    .line 191
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showLoading()V

    .line 193
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestContactsList()Z

    .line 195
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestCallLogList()Z

    goto :goto_5

    .line 197
    :cond_7
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->updateContacts(Ljava/util/List;)V

    .line 198
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallLogBeanList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->updateList(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    .line 202
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->updateContacts(Ljava/util/List;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 206
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallLogBeanList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->updateList(Ljava/util/List;)V

    goto :goto_5

    .line 208
    :cond_a
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showLoading()V

    :goto_5
    return-void
.end method

.method public setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V
    .locals 4

    .line 139
    invoke-super {p0, p1}, Lcom/yftech/btphone/view/Page;->setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V

    .line 141
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/yftech/btphone/presenter/MainPresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvGetNow:Lcom/yftech/btphone/view/FontTextView;

    new-instance v1, Lcom/yftech/btphone/view/DialFrameLayout$3;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/view/DialFrameLayout$3;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addSubscribeViewClickSpaceTime(Landroid/view/View;JLcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V

    .line 157
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/yftech/btphone/presenter/MainPresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->imgCall:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/btphone/view/DialFrameLayout$4;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/view/DialFrameLayout$4;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addSubscribeViewClickSpaceTime(Landroid/view/View;JLcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V

    return-void
.end method

.method public showIdl(Ljava/lang/String;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvSyncMessage:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0c0007

    .line 340
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->setBackgroundRes(I)V

    return-void
.end method

.method public showLoading()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const v0, 0x7f0c0008

    .line 386
    invoke-direct {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->setBackgroundRes(I)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0c0007

    .line 352
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->setBackgroundRes(I)V

    return-void
.end method

.method public updateContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->searchAdapter:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->setTotalList(Ljava/util/List;)V

    return-void
.end method

.method public updateDownloadProgress(III)V
    .locals 3

    const v0, 0x7f0c0008

    .line 356
    invoke-direct {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->setBackgroundRes(I)V

    .line 358
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvProgress:Lcom/yftech/btphone/view/FontTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvRogressTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvProgress:Lcom/yftech/btphone/view/FontTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->tvRogressTip:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f004a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 375
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public updateDownloadState(IIII)V
    .locals 7

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDownloadState, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x7

    const v3, 0x7f0f002c

    const/4 v4, 0x3

    const/16 v5, 0x64

    if-nez p1, :cond_5

    if-ne v5, p2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->showIdl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v4, p2, :cond_1

    .line 290
    invoke-virtual {p0, p1, p3, p4}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadProgress(III)V

    goto :goto_0

    :cond_1
    if-ne v2, p2, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showLoading()V

    goto :goto_0

    :cond_3
    if-ne v0, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    if-ne v6, p1, :cond_9

    if-ne v5, p2, :cond_6

    .line 302
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->showIdl(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne v4, p2, :cond_7

    .line 304
    invoke-virtual {p0, p1, p3, p4}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadProgress(III)V

    goto :goto_0

    :cond_7
    if-ne v2, p2, :cond_8

    goto :goto_0

    :cond_8
    if-ne v1, p2, :cond_9

    .line 308
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showLoading()V

    .line 309
    iget-object p2, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p3}, Lcom/yftech/btphone/adapter/CallLogAdapter;->setList(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 310
    invoke-virtual {p0, p1, p2, p2}, Lcom/yftech/btphone/view/DialFrameLayout;->updateDownloadProgress(III)V

    :cond_9
    :goto_0
    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showRecycleView()V

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/bean/CallLogBean;

    .line 397
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f004d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->showMessage(Ljava/lang/String;)V

    .line 406
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->mCallLogAdapter:Lcom/yftech/btphone/adapter/CallLogAdapter;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/adapter/CallLogAdapter;->setList(Ljava/util/Collection;)V

    .line 407
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/KeyboardNumView;->getRealValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->handleKeyboardInputChanged(Ljava/lang/String;)V

    return-void
.end method

.method public updatePbapState(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 416
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f002c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->showIdl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 420
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 421
    invoke-virtual {p1}, Lcom/yftech/btphone/lib/bean/Device;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/yftech/btphone/view/DialFrameLayout;->showLoading()V

    :cond_1
    :goto_0
    return-void
.end method
