.class public Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;
.super Ljava/lang/Object;
.source "CompositeDisposableMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventBean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->type:I

    .line 149
    iput-object p2, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getT()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->type:I

    return v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public setT(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->t:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$EventBean;->type:I

    return-void
.end method
