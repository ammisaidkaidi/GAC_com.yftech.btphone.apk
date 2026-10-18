.class public Lcom/yftech/btphone/view/Page;
.super Landroid/widget/FrameLayout;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/yftech/btphone/lib/base/presenter/IPresenter;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/view/Page;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/btphone/view/Page;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/yftech/btphone/view/Page;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "onAttachedToWindow"

    .line 45
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/Page;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    .line 39
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/Page;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-string v0, "onDetachedFromWindow"

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/Page;->logd(Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/yftech/btphone/view/Page;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    return-void
.end method
