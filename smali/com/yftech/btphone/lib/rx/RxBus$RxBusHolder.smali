.class Lcom/yftech/btphone/lib/rx/RxBus$RxBusHolder;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/rx/RxBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RxBusHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/yftech/btphone/lib/rx/RxBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/yftech/btphone/lib/rx/RxBus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/btphone/lib/rx/RxBus;-><init>(Lcom/yftech/btphone/lib/rx/RxBus$1;)V

    sput-object v0, Lcom/yftech/btphone/lib/rx/RxBus$RxBusHolder;->INSTANCE:Lcom/yftech/btphone/lib/rx/RxBus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/yftech/btphone/lib/rx/RxBus;
    .locals 1

    .line 27
    sget-object v0, Lcom/yftech/btphone/lib/rx/RxBus$RxBusHolder;->INSTANCE:Lcom/yftech/btphone/lib/rx/RxBus;

    return-object v0
.end method
