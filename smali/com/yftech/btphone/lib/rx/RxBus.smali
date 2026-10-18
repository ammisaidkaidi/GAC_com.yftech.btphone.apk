.class public Lcom/yftech/btphone/lib/rx/RxBus;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/lib/rx/RxBus$RxBusHolder;
    }
.end annotation


# instance fields
.field private final bus:Lio/reactivex/rxjava3/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/FlowableProcessor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lio/reactivex/rxjava3/processors/PublishProcessor;->create()Lio/reactivex/rxjava3/processors/PublishProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;->toSerialized()Lio/reactivex/rxjava3/processors/FlowableProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/rx/RxBus;->bus:Lio/reactivex/rxjava3/processors/FlowableProcessor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/btphone/lib/rx/RxBus$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/yftech/btphone/lib/rx/RxBus;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/yftech/btphone/lib/rx/RxBus;
    .locals 1

    .line 24
    invoke-static {}, Lcom/yftech/btphone/lib/rx/RxBus$RxBusHolder;->access$000()Lcom/yftech/btphone/lib/rx/RxBus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Object;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/RxBus;->bus:Lio/reactivex/rxjava3/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public toFlowable(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/RxBus;->bus:Lio/reactivex/rxjava3/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/FlowableProcessor;->ofType(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method
