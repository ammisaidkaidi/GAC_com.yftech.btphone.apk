.class public Lcom/yftech/btphone/view/DialFrameLayout_ViewBinding;
.super Ljava/lang/Object;
.source "DialFrameLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yftech/btphone/view/DialFrameLayout;


# direct methods
.method public constructor <init>(Lcom/yftech/btphone/view/DialFrameLayout;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lcom/yftech/btphone/view/DialFrameLayout_ViewBinding;-><init>(Lcom/yftech/btphone/view/DialFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/btphone/view/DialFrameLayout;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout_ViewBinding;->target:Lcom/yftech/btphone/view/DialFrameLayout;

    .line 29
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08011b

    const-string v2, "field \'llKeyBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    .line 30
    const-class v0, Lcom/yftech/btphone/view/KeyboardNumView;

    const v1, 0x7f080109

    const-string v2, "field \'keyBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/KeyboardNumView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800fc

    const-string v2, "field \'imgCall\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->imgCall:Landroid/widget/ImageView;

    .line 32
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08018d

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080223

    const-string v2, "field \'tvTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    .line 34
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08011d

    const-string v2, "field \'llLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    .line 35
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08021f

    const-string v2, "field \'tvSyncMessage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->tvSyncMessage:Lcom/yftech/btphone/view/FontTextView;

    .line 36
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08020e

    const-string v2, "field \'tvGetNow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->tvGetNow:Lcom/yftech/btphone/view/FontTextView;

    .line 37
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080122

    const-string v2, "field \'llSyncRightnow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    .line 38
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08021b

    const-string v2, "field \'tvRogressTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->tvRogressTip:Lcom/yftech/btphone/view/FontTextView;

    .line 39
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080219

    const-string v2, "field \'tvProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->tvProgress:Lcom/yftech/btphone/view/FontTextView;

    .line 40
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f080184

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/yftech/btphone/view/DialFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080121

    const-string v2, "field \'llSyncLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout_ViewBinding;->target:Lcom/yftech/btphone/view/DialFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout_ViewBinding;->target:Lcom/yftech/btphone/view/DialFrameLayout;

    .line 51
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->llKeyBoard:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    .line 53
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->imgCall:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->tvTip:Lcom/yftech/btphone/view/FontTextView;

    .line 56
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->llLoading:Landroid/widget/LinearLayout;

    .line 57
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->tvSyncMessage:Lcom/yftech/btphone/view/FontTextView;

    .line 58
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->tvGetNow:Lcom/yftech/btphone/view/FontTextView;

    .line 59
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncRightnow:Landroid/widget/LinearLayout;

    .line 60
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->tvRogressTip:Lcom/yftech/btphone/view/FontTextView;

    .line 61
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->tvProgress:Lcom/yftech/btphone/view/FontTextView;

    .line 62
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 63
    iput-object v1, v0, Lcom/yftech/btphone/view/DialFrameLayout;->llSyncLoading:Landroid/widget/LinearLayout;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
