.class public Lcom/yftech/btphone/app/SearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yftech/btphone/app/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/yftech/btphone/app/SearchActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/yftech/btphone/app/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/app/SearchActivity_ViewBinding;-><init>(Lcom/yftech/btphone/app/SearchActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/btphone/app/SearchActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yftech/btphone/app/SearchActivity_ViewBinding;->target:Lcom/yftech/btphone/app/SearchActivity;

    .line 29
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0800ca

    const-string v2, "field \'editText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    .line 30
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08018c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/yftech/btphone/app/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const-class v0, Lcom/yftech/btphone/view/FontTextView;

    const v1, 0x7f08021c

    const-string v2, "field \'tvCannel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/SearchActivity;->tvCannel:Lcom/yftech/btphone/view/FontTextView;

    .line 32
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080106

    const-string v2, "field \'ivClear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/yftech/btphone/app/SearchActivity;->ivClear:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/yftech/btphone/app/SearchActivity_ViewBinding;->target:Lcom/yftech/btphone/app/SearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/yftech/btphone/app/SearchActivity_ViewBinding;->target:Lcom/yftech/btphone/app/SearchActivity;

    .line 42
    iput-object v1, v0, Lcom/yftech/btphone/app/SearchActivity;->editText:Landroid/widget/EditText;

    .line 43
    iput-object v1, v0, Lcom/yftech/btphone/app/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object v1, v0, Lcom/yftech/btphone/app/SearchActivity;->tvCannel:Lcom/yftech/btphone/view/FontTextView;

    .line 45
    iput-object v1, v0, Lcom/yftech/btphone/app/SearchActivity;->ivClear:Landroid/widget/ImageView;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
