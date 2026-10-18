.class public Lcom/yftech/btphone/app/CallActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CallActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/yftech/btphone/app/CallActivity;


# direct methods
.method public constructor <init>(Lcom/yftech/btphone/app/CallActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/yftech/btphone/app/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/app/CallActivity_ViewBinding;-><init>(Lcom/yftech/btphone/app/CallActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/btphone/app/CallActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yftech/btphone/app/CallActivity_ViewBinding;->target:Lcom/yftech/btphone/app/CallActivity;

    .line 32
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800fa

    const-string v2, "field \'imgBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->imgBg:Landroid/widget/ImageView;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800fb

    const-string v2, "field \'imageViewAnimal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08020f

    const-string v2, "field \'tvHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080213

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->tvName:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080220

    const-string v2, "field \'tvTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->tvTime:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08017e

    const-string v2, "field \'peopleRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->peopleRoot:Landroid/widget/LinearLayout;

    .line 38
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f080070

    const-string v2, "field \'cbHangup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    .line 39
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f08006f

    const-string v2, "field \'cbAnswer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    .line 40
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f080073

    const-string v2, "field \'cbMute\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    .line 41
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f080074

    const-string v2, "field \'cbPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    .line 42
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f080072

    const-string v2, "field \'cbKeyboard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    .line 43
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f080071

    const-string v2, "field \'cbIgnore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    .line 44
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080065

    const-string v2, "field \'bottomRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->bottomRoot:Landroid/widget/LinearLayout;

    .line 45
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080119

    const-string v2, "field \'llDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    .line 46
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0800da

    const-string v2, "field \'flExtend\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    .line 47
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08011c

    const-string v2, "field \'llKeyboardDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->llKeyboardDetail:Landroid/widget/LinearLayout;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080210

    const-string v2, "field \'tvHeadEx\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080214

    const-string v2, "field \'tvNameEx\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->tvNameEx:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080221

    const-string v2, "field \'tvTimeEx\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800fd

    const-string v2, "field \'imgExchange\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->imgExchange:Landroid/widget/ImageView;

    .line 52
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08017f

    const-string v2, "field \'peopleRootEx\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    .line 53
    const-class v0, Lcom/yftech/btphone/view/KeyboardNumView;

    const v1, 0x7f080109

    const-string v2, "field \'mKeyboardNumView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/btphone/view/KeyboardNumView;

    iput-object p2, p1, Lcom/yftech/btphone/app/CallActivity;->mKeyboardNumView:Lcom/yftech/btphone/view/KeyboardNumView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity_ViewBinding;->target:Lcom/yftech/btphone/app/CallActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/yftech/btphone/app/CallActivity_ViewBinding;->target:Lcom/yftech/btphone/app/CallActivity;

    .line 63
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->imgBg:Landroid/widget/ImageView;

    .line 64
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    .line 65
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->tvName:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->tvTime:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->peopleRoot:Landroid/widget/LinearLayout;

    .line 69
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    .line 70
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    .line 71
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    .line 72
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    .line 73
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    .line 74
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    .line 75
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->bottomRoot:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    .line 78
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->llKeyboardDetail:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->tvNameEx:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->imgExchange:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, v0, Lcom/yftech/btphone/app/CallActivity;->mKeyboardNumView:Lcom/yftech/btphone/view/KeyboardNumView;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
