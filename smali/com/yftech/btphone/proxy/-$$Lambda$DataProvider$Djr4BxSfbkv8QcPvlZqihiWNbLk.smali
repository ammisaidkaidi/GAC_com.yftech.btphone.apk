.class public final synthetic Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;

.field private final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lcom/yftech/btphone/proxy/DataProvider;->lambda$distinctByKey$1(Ljava/util/Map;Ljava/util/function/Function;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
