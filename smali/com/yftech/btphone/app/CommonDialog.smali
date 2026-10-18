.class public Lcom/yftech/btphone/app/CommonDialog;
.super Landroid/app/Dialog;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/app/CommonDialog$Callback;
    }
.end annotation


# static fields
.field public static final TYPE_ONE:I = 0x0

.field public static final TYPE_TWO:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field public btnCentre:Landroid/widget/Button;

.field protected linear:Landroid/widget/LinearLayout;

.field protected linear1:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/yftech/btphone/app/CommonDialog$Callback;

.field protected mContext:Landroid/content/Context;

.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field protected tvMessage:Lcom/yftech/btphone/view/FontTextView;

.field public tvTitle:Lcom/yftech/btphone/view/FontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1002cd

    .line 45
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "CommonDialog"

    .line 31
    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x806

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 48
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->TAG:Ljava/lang/String;

    const-string v0, "CommonDialog: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0b0031

    .line 76
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->setContentView(I)V

    const v0, 0x7f08006a

    .line 78
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->btnCentre:Landroid/widget/Button;

    const v0, 0x7f080224

    .line 79
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->tvTitle:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f080212

    .line 80
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->tvMessage:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800e3

    .line 82
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f080113

    .line 83
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->linear:Landroid/widget/LinearLayout;

    const v0, 0x7f080114

    .line 84
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->linear1:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->btnCentre:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->mCallback:Lcom/yftech/btphone/app/CommonDialog$Callback;

    if-eqz v0, :cond_0

    const v0, 0x7f08006a

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->mCallback:Lcom/yftech/btphone/app/CommonDialog$Callback;

    invoke-interface {v0, p1, p0}, Lcom/yftech/btphone/app/CommonDialog$Callback;->onClickCentre(Landroid/view/View;Lcom/yftech/btphone/app/CommonDialog;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x10108

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 62
    invoke-direct {p0}, Lcom/yftech/btphone/app/CommonDialog;->initViews()V

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CommonDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setTypeStyle(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->linear1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->linear1:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->tvTitle:Lcom/yftech/btphone/view/FontTextView;

    const-string v2, "sourcehan-sans"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->btnCentre:Landroid/widget/Button;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->tvMessage:Lcom/yftech/btphone/view/FontTextView;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "show: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public update(ILjava/lang/String;Ljava/lang/String;Lcom/yftech/btphone/app/CommonDialog$Callback;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CommonDialog;->setTypeStyle(I)V

    .line 105
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->tvTitle:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->tvMessage:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p1, p3}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iput-object p4, p0, Lcom/yftech/btphone/app/CommonDialog;->mCallback:Lcom/yftech/btphone/app/CommonDialog$Callback;

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->tvTitle:Lcom/yftech/btphone/view/FontTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->tvTitle:Lcom/yftech/btphone/view/FontTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/FontTextView;->setVisibility(I)V

    :goto_0
    const/16 p1, 0x31b

    .line 118
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CommonDialog;->updateSize(I)V

    return-void
.end method

.method public updateSize(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/yftech/btphone/app/CommonDialog;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 125
    iget-object p1, p0, Lcom/yftech/btphone/app/CommonDialog;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
