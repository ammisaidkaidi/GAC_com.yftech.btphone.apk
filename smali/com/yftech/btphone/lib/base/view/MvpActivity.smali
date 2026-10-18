.class public abstract Lcom/yftech/btphone/lib/base/view/MvpActivity;
.super Lcom/yftech/btphone/lib/base/view/BaseActivity;
.source "MvpActivity.java"

# interfaces
.implements Lcom/yftech/btphone/lib/base/view/IView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/yftech/btphone/lib/base/presenter/IPresenter;",
        ">",
        "Lcom/yftech/btphone/lib/base/view/BaseActivity;",
        "Lcom/yftech/btphone/lib/base/view/IView;"
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
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;-><init>()V

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

    .line 59
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    return-object v0
.end method

.method public initPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 46
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    .line 49
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    invoke-interface {v0, p0}, Lcom/yftech/btphone/lib/base/presenter/IPresenter;->attachView(Lcom/yftech/btphone/lib/base/view/IView;)V

    .line 50
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->initPresenter()Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    .line 23
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    .line 25
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    .line 36
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->logd(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/MvpActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    .line 40
    :cond_0
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->onResume()V

    const-string v0, "onResume"

    .line 31
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->logd(Ljava/lang/String;)V

    return-void
.end method
