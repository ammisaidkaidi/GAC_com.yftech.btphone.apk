.class public Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;
.super Ljava/lang/Object;
.source "CompositeDisposableMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;,
        Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;
    }
.end annotation


# instance fields
.field private compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addSubscribeDelayStart$3(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;->start()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$addSubscribeViewClickSpaceTime$2(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;Lkotlin/Unit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;->start()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getPeriodlDisposable$0(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;->onCallback()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$subscribeEvent$1(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->getType()I

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;->onCallback()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method protected addSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public addSubscribeDelayStart(JLcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V
    .locals 1

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 68
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 69
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$HdxGapPSSO0WyGAkM5hh-uDP4sg;

    invoke-direct {p2, p3}, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$HdxGapPSSO0WyGAkM5hh-uDP4sg;-><init>(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V

    .line 70
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public addSubscribeMainStart(JLcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V
    .locals 0

    return-void
.end method

.method public addSubscribeViewClickSpaceTime(Landroid/view/View;JLcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$BimrDLDQyn7fXkQrfsTf0tPFaM8;

    invoke-direct {p2, p4}, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$BimrDLDQyn7fXkQrfsTf0tPFaM8;-><init>(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V

    .line 58
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public getPeriodlDisposable(JLcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 24
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 25
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$A8-nL0uTojXaMmDlKV1X7HQGPY4;

    invoke-direct {p2, p3}, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$A8-nL0uTojXaMmDlKV1X7HQGPY4;-><init>(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V

    .line 26
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public removeRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->remove(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 97
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public subscribeEvent(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V
    .locals 2

    .line 44
    invoke-static {}, Lcom/yftech/btphone/lib/rx/RxBus;->getDefault()Lcom/yftech/btphone/lib/rx/RxBus;

    move-result-object v0

    const-class v1, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/RxBus;->toFlowable(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$hNyP7qXnSyu5_JfWIpsuzr7GLbw;

    invoke-direct {v1, p1}, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$hNyP7qXnSyu5_JfWIpsuzr7GLbw;-><init>(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V

    .line 45
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
