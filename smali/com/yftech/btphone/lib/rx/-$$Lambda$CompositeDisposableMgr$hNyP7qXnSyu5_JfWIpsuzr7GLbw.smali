.class public final synthetic Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$hNyP7qXnSyu5_JfWIpsuzr7GLbw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$hNyP7qXnSyu5_JfWIpsuzr7GLbw;->f$0:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/-$$Lambda$CompositeDisposableMgr$hNyP7qXnSyu5_JfWIpsuzr7GLbw;->f$0:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;

    check-cast p1, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;

    invoke-static {v0, p1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->lambda$subscribeEvent$1(Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;)V

    return-void
.end method
