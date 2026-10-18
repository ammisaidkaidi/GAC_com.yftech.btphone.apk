.class public Lcom/yftech/btphone/view/ContactsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ContactsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yftech/btphone/view/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/yftech/btphone/view/ContactsFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lcom/yftech/btphone/view/ContactsFragment_ViewBinding;-><init>(Lcom/yftech/btphone/view/ContactsFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/btphone/view/ContactsFragment;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment_ViewBinding;->target:Lcom/yftech/btphone/view/ContactsFragment;

    .line 28
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080218

    const-string v2, "field \'tvPopular\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    .line 29
    const-class v0, Lcom/yftech/btphone/view/SideIndexBar;

    const v1, 0x7f0801b5

    const-string v2, "field \'sideBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/SideIndexBar;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    .line 30
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f080215

    const-string v2, "field \'tvPersonHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    .line 31
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08018b

    const-string v2, "field \'recyclerViewPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08018a

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f08018e

    const-string v2, "field \'relaContacts\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->relaContacts:Landroid/widget/FrameLayout;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08018f

    const-string v2, "field \'relaPerson\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    .line 35
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08020d

    const-string v2, "field \'tvEmptyTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/btphone/view/FontTextView;

    iput-object p2, p1, Lcom/yftech/btphone/view/ContactsFragment;->tvEmptyTip:Lcom/yftech/btphone/view/FontTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/yftech/btphone/view/ContactsFragment_ViewBinding;->target:Lcom/yftech/btphone/view/ContactsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/yftech/btphone/view/ContactsFragment_ViewBinding;->target:Lcom/yftech/btphone/view/ContactsFragment;

    .line 45
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    .line 46
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    .line 47
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->tvPersonHead:Lcom/yftech/btphone/view/FontTextView;

    .line 48
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerViewPhone:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->relaContacts:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->relaPerson:Landroid/widget/RelativeLayout;

    .line 52
    iput-object v1, v0, Lcom/yftech/btphone/view/ContactsFragment;->tvEmptyTip:Lcom/yftech/btphone/view/FontTextView;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
