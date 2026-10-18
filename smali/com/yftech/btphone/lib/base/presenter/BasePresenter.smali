.class public Lcom/yftech/btphone/lib/base/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/base/presenter/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/yftech/btphone/lib/base/view/IView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yftech/btphone/lib/base/presenter/IPresenter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

.field protected mV:Lcom/yftech/btphone/lib/base/view/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->TAG:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachView(Lcom/yftech/btphone/lib/base/view/IView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "attachView"

    .line 30
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->log(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mV:Lcom/yftech/btphone/lib/base/view/IView;

    return-void
.end method

.method public detachView()V
    .locals 2

    const-string v0, "detachView"

    .line 57
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->log(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->viewReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 61
    iput-object v1, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->viewReference:Ljava/lang/ref/WeakReference;

    .line 64
    :cond_0
    iput-object v1, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mV:Lcom/yftech/btphone/lib/base/view/IView;

    .line 66
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->release()V

    .line 69
    :cond_1
    iput-object v1, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    return-void
.end method

.method public getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    return-object v0
.end method

.method public getView()Lcom/yftech/btphone/lib/base/view/IView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mV:Lcom/yftech/btphone/lib/base/view/IView;

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " View is not attached to Presenter "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isViewAttached()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->mV:Lcom/yftech/btphone/lib/base/view/IView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    .line 86
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->detachView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    .line 80
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->log(Ljava/lang/String;)V

    return-void
.end method
