.class public Lcom/yftech/btphone/app/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yftech/btphone/app/MainActivity;

.field private view7f0801db:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yftech/btphone/app/MainActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/yftech/btphone/app/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/app/MainActivity_ViewBinding;-><init>(Lcom/yftech/btphone/app/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/btphone/app/MainActivity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding;->target:Lcom/yftech/btphone/app/MainActivity;

    .line 33
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0801d9

    const-string v2, "field \'tabDial\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/yftech/btphone/app/MainActivity;->tabDial:Landroid/widget/RadioButton;

    .line 34
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0801d8

    const-string v2, "field \'tabContacts\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/yftech/btphone/app/MainActivity;->tabContacts:Landroid/widget/RadioButton;

    .line 35
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0801da

    const-string v2, "field \'tabGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/yftech/btphone/app/MainActivity;->tabGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0801db

    const-string v1, "field \'tabSearch\' and method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'tabSearch\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/yftech/btphone/app/MainActivity;->tabSearch:Landroid/widget/ImageButton;

    .line 38
    iput-object v1, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding;->view7f0801db:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/yftech/btphone/app/MainActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/btphone/app/MainActivity_ViewBinding$1;-><init>(Lcom/yftech/btphone/app/MainActivity_ViewBinding;Lcom/yftech/btphone/app/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0800e1

    const-string v2, "field \'fragmentGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/MainActivity;->fragmentGroup:Landroid/widget/FrameLayout;

    .line 46
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f080195

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/yftech/btphone/app/MainActivity;->root:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding;->target:Lcom/yftech/btphone/app/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding;->target:Lcom/yftech/btphone/app/MainActivity;

    .line 56
    iput-object v1, v0, Lcom/yftech/btphone/app/MainActivity;->tabDial:Landroid/widget/RadioButton;

    .line 57
    iput-object v1, v0, Lcom/yftech/btphone/app/MainActivity;->tabContacts:Landroid/widget/RadioButton;

    .line 58
    iput-object v1, v0, Lcom/yftech/btphone/app/MainActivity;->tabGroup:Landroid/widget/RadioGroup;

    .line 59
    iput-object v1, v0, Lcom/yftech/btphone/app/MainActivity;->tabSearch:Landroid/widget/ImageButton;

    .line 60
    iput-object v1, v0, Lcom/yftech/btphone/app/MainActivity;->fragmentGroup:Landroid/widget/FrameLayout;

    .line 61
    iput-object v1, v0, Lcom/yftech/btphone/app/MainActivity;->root:Landroid/widget/FrameLayout;

    .line 63
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding;->view7f0801db:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding;->view7f0801db:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
