.class public final synthetic Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;

    invoke-direct {v0}, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;-><init>()V

    sput-object v0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;->INSTANCE:Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    invoke-static {p1}, Lcom/yftech/btphone/proxy/DataProvider;->lambda$l4tfyaPMZGeRti6-ntqExydIKMM(Lcom/yftech/btphone/bean/ContactBean;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method
