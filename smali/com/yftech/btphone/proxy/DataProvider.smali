.class public Lcom/yftech/btphone/proxy/DataProvider;
.super Lcom/yftech/btphone/lib/sample/SampleDataProvider;
.source "DataProvider.java"


# instance fields
.field private callTimes:I

.field public mCallLogBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field public mContactBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field

.field public mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTopContactBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field

.field private sdf24Hour:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mLetters:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mCallLogBeanList:Ljava/util/List;

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->callTimes:I

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/M/d-HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->sdf24Hour:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private addCallLogBean(Lcom/yftech/car/bluetooth/model/CallLog;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/yftech/btphone/bean/CallLogBean;

    invoke-direct {v0}, Lcom/yftech/btphone/bean/CallLogBean;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/btphone/bean/CallLogBean;->setTime(J)V

    .line 200
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/CallLogBean;->setCallType(I)V

    .line 201
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/btphone/bean/CallLogBean;->setDuration(J)V

    .line 203
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/CallLogBean;->setName(Ljava/lang/String;)V

    .line 205
    invoke-static {v1}, Lcom/yftech/btphone/utils/CommonUtils;->getFirstText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/CallLogBean;->setLetter(Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getName()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/btphone/utils/CommonUtils;->getNumberWithSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_1
    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/CallLogBean;->setDisplayName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/CallLogBean;->setNumber(Ljava/lang/String;)V

    .line 220
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/proxy/DataProvider;->findContactsBean(Lcom/yftech/btphone/bean/CallLogBean;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/bean/CallLogBean;->setPhoto([B)V

    .line 223
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallLogBean: set photo####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 231
    iput p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->callTimes:I

    .line 232
    iget p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->callTimes:I

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/bean/CallLogBean;->setCallTimes(I)V

    .line 233
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addContactsBean(Ljava/util/List;Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/yftech/btphone/bean/ContactBean;

    invoke-direct {v0}, Lcom/yftech/btphone/bean/ContactBean;-><init>()V

    .line 124
    invoke-virtual {p3}, Lcom/yftech/car/bluetooth/model/Contacts;->getPinYin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/ContactBean;->setPinyinName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/ContactBean;->setUserName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p4}, Lcom/yftech/btphone/bean/ContactBean;->setLetter(Ljava/lang/String;)V

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lcom/yftech/btphone/bean/ContactBean;->setLetterIndex(I)V

    .line 128
    invoke-virtual {p3}, Lcom/yftech/car/bluetooth/model/Contacts;->getSerialId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yftech/btphone/bean/ContactBean;->setmSerialId(Ljava/lang/String;)V

    .line 130
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p3}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v0, p2}, Lcom/yftech/btphone/bean/ContactBean;->setMobile(Ljava/util/List;)V

    .line 133
    invoke-virtual {p3}, Lcom/yftech/car/bluetooth/model/Contacts;->hasPhoto()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getContactsPicture(Lcom/yftech/car/bluetooth/model/Contacts;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yftech/btphone/bean/ContactBean;->setPhoto([B)V

    .line 136
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static distinctByKey(Ljava/util/function/Function;)Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;*>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 297
    new-instance v1, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;

    invoke-direct {v1, v0, p0}, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk;-><init>(Ljava/util/Map;Ljava/util/function/Function;)V

    return-object v1
.end method

.method private initAddLetter(Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    invoke-virtual {p2}, Lcom/yftech/car/bluetooth/model/Contacts;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/bluetooth/model/Contacts;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/bluetooth/model/Contacts;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p2, v0}, Lcom/yftech/car/bluetooth/model/Contacts;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    .line 159
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 162
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private initCallLogTimes(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 308
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/CallLog;

    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/CallLog;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 309
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    .line 312
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 314
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/bluetooth/model/CallLog;

    .line 316
    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getCallType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 318
    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 321
    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v7

    add-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callLog:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "initCallLogTimes"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yftech/car/bluetooth/model/CallLog;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$distinctByKey$1(Ljava/util/Map;Ljava/util/function/Function;Ljava/lang/Object;)Z
    .locals 0

    .line 297
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$l4tfyaPMZGeRti6-ntqExydIKMM(Lcom/yftech/btphone/bean/ContactBean;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateTopContactsBeanList$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 257
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method private updateCallLogBeanList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    const-string v1, "\u84dd\u7259\u4e0b\u8f7d\u901a\u8bdd\u8bb0\u5f55 = "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/CallLog;

    .line 174
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/bean/CallLogBean;

    .line 177
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/CallLogBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/CallLogBean;->getName()Ljava/lang/String;

    .line 180
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/CallLogBean;->getCallType()I

    move-result v1

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/CallLog;->getCallType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 184
    iget v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->callTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->callTimes:I

    .line 185
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/bean/CallLogBean;

    iget v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->callTimes:I

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/bean/CallLogBean;->setCallTimes(I)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/yftech/btphone/proxy/DataProvider;->addCallLogBean(Lcom/yftech/car/bluetooth/model/CallLog;Ljava/util/List;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/yftech/btphone/proxy/DataProvider;->addCallLogBean(Lcom/yftech/car/bluetooth/model/CallLog;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateContactsBeanList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 100
    invoke-direct {p0, p2, v0}, Lcom/yftech/btphone/proxy/DataProvider;->initAddLetter(Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {v2}, Lcom/yftech/btphone/bean/ContactBean;->getmSerialId()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/Contacts;->getSerialId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/yftech/btphone/proxy/DataProvider;->addContactsBean(Ljava/util/List;Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateContactsBeanList end, contactBeanList.size()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTopContactsBeanList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTopContactsBeanList, callLogList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "null"

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", contactBeanList:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    .line 246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 252
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-direct {p0, p2, v0}, Lcom/yftech/btphone/proxy/DataProvider;->initCallLogTimes(Ljava/util/List;Ljava/util/Map;)V

    .line 256
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    sget-object v0, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$UsYn5JvQr06eJHxZNBgaYADu3Wc;->INSTANCE:Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$UsYn5JvQr06eJHxZNBgaYADu3Wc;

    invoke-interface {p2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 258
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTopContactsBeanList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 261
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 262
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, " "

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    goto :goto_5

    :cond_3
    move v5, v0

    move v6, v5

    .line 271
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 272
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {v7}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object v7

    .line 273
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 274
    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 276
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_5
    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 287
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "source: updateTopContactsBeanList:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;->INSTANCE:Lcom/yftech/btphone/proxy/-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM;

    invoke-static {p2}, Lcom/yftech/btphone/proxy/DataProvider;->distinctByKey(Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 290
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    .line 292
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "after filter: updateTopContactsBeanList:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public findContacts(Lcom/yftech/car/bluetooth/model/PhoneCall;)Lcom/yftech/btphone/bean/ContactBean;
    .locals 7

    if-eqz p1, :cond_4

    .line 369
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallNumber()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/btphone/bean/ContactBean;

    .line 375
    invoke-virtual {v3}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {v3}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object v5

    if-nez v4, :cond_2

    move-object v4, v1

    .line 380
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 381
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v3

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContactsBean(Lcom/yftech/btphone/bean/CallLogBean;)Lcom/yftech/btphone/bean/ContactBean;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/btphone/bean/ContactBean;

    .line 414
    invoke-virtual {v3}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Lcom/yftech/btphone/bean/CallLogBean;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    monitor-exit v1

    return-object v3

    .line 421
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findContactsBean(Lcom/yftech/car/bluetooth/model/Contacts;)Lcom/yftech/btphone/bean/ContactBean;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/btphone/bean/ContactBean;

    .line 398
    invoke-virtual {v3}, Lcom/yftech/btphone/bean/ContactBean;->getmSerialId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getSerialId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 403
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public formatData(J)Ljava/lang/String;
    .locals 5

    .line 336
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 338
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->sdf24Hour:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 339
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->sdf24Hour:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 342
    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->sdf24Hour:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 344
    aget-object p2, p2, v1

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 346
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->getInstance()Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    move-result-object p2

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 349
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x9

    .line 350
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_0

    .line 351
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    const v0, 0x7f0f001b

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    const v0, 0x7f0f008f

    :goto_0
    invoke-virtual {p2, v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 354
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 355
    :cond_2
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isYesterday(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 356
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    const p2, 0x7f0f0089

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :cond_3
    aget-object p2, p1, v1

    invoke-static {}, Lcom/yftech/btphone/utils/CommonUtils;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isWeekday(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 360
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->getWeekDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 362
    :cond_4
    aget-object p1, p1, v1

    return-object p1
.end method

.method public initPhoneCall()V
    .locals 2

    .line 53
    new-instance v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-direct {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;-><init>()V

    const-string v1, "\u5ba2\u670d"

    .line 54
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setDisplayName(Ljava/lang/String;)V

    const-string v1, "10086"

    .line 55
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setCallNumber(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setCallState(I)V

    .line 57
    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-direct {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;-><init>()V

    const-string v1, "2222\u5ba2\u670d\u5ba2\u670d\u5ba2\u670d\u5ba2\u670d\u5ba2\u670d"

    .line 60
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setDisplayName(Ljava/lang/String;)V

    const-string v1, "100861"

    .line 61
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setCallNumber(Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 62
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setCallState(I)V

    .line 63
    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/proxy/DataProvider;->updatePhoneCalls(Ljava/util/List;)V

    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 436
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 437
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    const-string v1, "isCallActive: true!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallLog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updateCallLog(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mCallLogBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mCallLogBeanList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/proxy/DataProvider;->updateCallLogBeanList(Ljava/util/List;Ljava/util/List;)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->TAG:Ljava/lang/String;

    const-string v0, "updateCallLogList, ignore"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mTopContactBeanList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/yftech/btphone/proxy/DataProvider;->updateTopContactsBeanList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updateContactsList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updateContactsList(Ljava/util/List;)V

    .line 72
    iget-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContacts:Ljava/util/ArrayList;

    monitor-enter p1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yftech/btphone/proxy/DataProvider;->mLetters:Ljava/util/List;

    iget-object v2, p0, Lcom/yftech/btphone/proxy/DataProvider;->mContactBeanList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/btphone/proxy/DataProvider;->updateContactsBeanList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 76
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSimpleDateFormat(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 427
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/M/d-HH:mm"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->sdf24Hour:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 429
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/M/d-hh:mm"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yftech/btphone/proxy/DataProvider;->sdf24Hour:Ljava/text/SimpleDateFormat;

    :goto_0
    return-void
.end method
