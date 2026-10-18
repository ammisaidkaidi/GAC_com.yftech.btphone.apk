.class public Lcom/yftech/btphone/app/PhoneDialog;
.super Landroid/app/Dialog;
.source "PhoneDialog.java"


# static fields
.field private static final MSG_UPDATE_CALL_TIME:I = 0x2000

.field private static final TYPE_TIME_1:I = 0x1

.field private static final TYPE_TIME_2:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final context:Landroid/content/Context;

.field private flHead:Landroid/widget/FrameLayout;

.field private imgAnswer:Landroid/widget/ImageView;

.field private imgExchange:Landroid/widget/ImageView;

.field private imgHungUp:Landroid/widget/ImageView;

.field private imgIgnore:Landroid/widget/ImageView;

.field private isIgnore:Z

.field private llAfterSmall:Landroid/widget/LinearLayout;

.field private llAfterWait:Landroid/widget/LinearLayout;

.field private llBefore:Landroid/widget/LinearLayout;

.field private llButton:Landroid/widget/LinearLayout;

.field private llHeadSmall:Landroid/widget/LinearLayout;

.field private llWaitBig:Landroid/widget/LinearLayout;

.field private llWaitBigParent:Landroid/widget/LinearLayout;

.field private mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

.field private mHandler:Landroid/os/Handler;

.field private tvHead:Landroid/widget/TextView;

.field private tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

.field private tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

.field private tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

.field private tvName:Landroid/widget/TextView;

.field private tvNameBigWait:Lcom/yftech/btphone/view/FontTextView;

.field private tvNameSmall:Lcom/yftech/btphone/view/FontTextView;

.field private tvNameWaitSmall:Lcom/yftech/btphone/view/FontTextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

.field private tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

.field private tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x7f1002ce

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "PhoneDialog"

    .line 75
    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->isIgnore:Z

    .line 241
    new-instance v0, Lcom/yftech/btphone/app/PhoneDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/PhoneDialog$1;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v0, Lcom/yftech/btphone/app/PhoneDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/PhoneDialog$2;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 85
    iput-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    .line 86
    iput-boolean p2, p0, Lcom/yftech/btphone/app/PhoneDialog;->isIgnore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/PhoneDialog;Lcom/yftech/car/bluetooth/model/PhoneCall;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/yftech/btphone/app/PhoneDialog;->startUpdateTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/app/PhoneDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/btphone/app/PhoneDialog;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->initPersonWait()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/btphone/app/PhoneDialog;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->updateMicState(Z)V

    return-void
.end method

.method private clickHeadSmall()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0}, Lcom/yftech/btphone/view/FontTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickHeadSmall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallMicEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setPhoneCallMicEnable(Z)Z

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->showSmall(Z)V

    :cond_0
    return-void
.end method

.method private initEvent()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const v0, 0x7f08022b

    .line 144
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$kg4-ITZ8KBrXVeAKukFMo_JWAb8;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$kg4-ITZ8KBrXVeAKukFMo_JWAb8;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llHeadSmall:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$HkeakBmNxrWevimrxIcFaC4fwAk;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$HkeakBmNxrWevimrxIcFaC4fwAk;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    new-instance v1, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$2JRZlpAQc9PddhILmfBVHk-72gY;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$2JRZlpAQc9PddhILmfBVHk-72gY;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterSmall:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 162
    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$eOFHbBf7swpOjsPYuG85oWoWK2M;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$eOFHbBf7swpOjsPYuG85oWoWK2M;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    .line 163
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 169
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$D5j13ny0CriUuZIjiQ39koVNd2g;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$D5j13ny0CriUuZIjiQ39koVNd2g;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    .line 180
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$TdbkYyl7hO3HF_AMU2kHcjLmECg;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$TdbkYyl7hO3HF_AMU2kHcjLmECg;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    .line 181
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 187
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llWaitBig:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 188
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$QKwB7f2iLdQKRWQ-cL9lM-6aGGA;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$QKwB7f2iLdQKRWQ-cL9lM-6aGGA;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    .line 189
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 208
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$fdZ7XOdsePDhEGcMulZnzGOrcdo;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$fdZ7XOdsePDhEGcMulZnzGOrcdo;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    .line 210
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 220
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgExchange:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 221
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$5-q3ivdCcytcWS0tdINKVGHZQlI;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$5-q3ivdCcytcWS0tdINKVGHZQlI;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    .line 222
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 229
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->flHead:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 230
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$rOJcWQHXg9DUW_yGn-efx702fzg;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$rOJcWQHXg9DUW_yGn-efx702fzg;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    .line 231
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 238
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    return-void
.end method

.method private initPerson(Lcom/yftech/car/bluetooth/model/PhoneCall;)V
    .locals 9

    .line 489
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPerson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->stopUpdateTime()V

    .line 494
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 495
    :goto_0
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallNumber()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yftech/btphone/proxy/DataProvider;->findContacts(Lcom/yftech/car/bluetooth/model/PhoneCall;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object v3

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x7f070081

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_3

    .line 498
    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v2, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v3, :cond_1

    .line 503
    iget-object v4, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v3}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v8

    invoke-static {v4, v8}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 506
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 510
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v7}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    goto :goto_1

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v6}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    goto :goto_1

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v2}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, v6}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 536
    :goto_1
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallMicEnable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 537
    invoke-direct {p0, v7}, Lcom/yftech/btphone/app/PhoneDialog;->updateMicState(Z)V

    .line 540
    :cond_4
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    .line 541
    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgExchange:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 544
    invoke-direct {p0, v6}, Lcom/yftech/btphone/app/PhoneDialog;->setNameTextView(Z)V

    const/4 v2, 0x7

    const/4 v4, 0x2

    if-ne v0, v2, :cond_6

    .line 547
    invoke-direct {p0, v7}, Lcom/yftech/btphone/app/PhoneDialog;->setNameTextView(Z)V

    .line 550
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 554
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getLastCallState()I

    move-result p1

    if-ne v4, p1, :cond_5

    .line 556
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 559
    :cond_5
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_2
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$R9tst0Q7s4q5Fe4IpgePihG7FQo;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/app/-$$Lambda$PhoneDialog$R9tst0Q7s4q5Fe4IpgePihG7FQo;-><init>(Lcom/yftech/btphone/app/PhoneDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 564
    invoke-virtual {p0, v7}, Lcom/yftech/btphone/app/PhoneDialog;->setIgnore(Z)V

    .line 565
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowOSD(Z)V

    goto/16 :goto_3

    :cond_6
    if-ne v0, v1, :cond_7

    .line 568
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    invoke-direct {p0, p1, v6}, Lcom/yftech/btphone/app/PhoneDialog;->startUpdateTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    goto/16 :goto_3

    :cond_7
    const/4 p1, 0x3

    const v1, 0x7f0f0044

    if-ne v0, p1, :cond_8

    .line 576
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgExchange:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    if-ne v0, v6, :cond_9

    .line 585
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 590
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    if-ne v0, v4, :cond_a

    .line 594
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgExchange:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 600
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 601
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 603
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private initPersonWait()Z
    .locals 7

    .line 294
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v1, "initPersonWait: phoneCallList.isEmpty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->dismiss()V

    return v2

    .line 302
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-le v1, v3, :cond_4

    .line 303
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 304
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 306
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v5

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v4, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterWait:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 307
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->llWaitBigParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterWait:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    :goto_1
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v2

    if-eq v2, v6, :cond_3

    .line 315
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->initPerson(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    .line 317
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    if-eq v0, v6, :cond_5

    .line 319
    invoke-direct {p0, v1}, Lcom/yftech/btphone/app/PhoneDialog;->initWait(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    goto :goto_2

    .line 322
    :cond_3
    invoke-direct {p0, v1}, Lcom/yftech/btphone/app/PhoneDialog;->initPerson(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    goto :goto_2

    .line 326
    :cond_4
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llWaitBigParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterWait:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->initPerson(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    :cond_5
    :goto_2
    return v3
.end method

.method private initUi()V
    .locals 2

    const v0, 0x7f08008a

    .line 106
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llBefore:Landroid/widget/LinearLayout;

    const v0, 0x7f080117

    .line 107
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0800db

    .line 109
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->flHead:Landroid/widget/FrameLayout;

    const v0, 0x7f08020f

    .line 110
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHead:Landroid/widget/TextView;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080213

    .line 112
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvName:Landroid/widget/TextView;

    const v0, 0x7f080220

    .line 113
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    const v0, 0x7f0800aa

    .line 115
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    const v0, 0x7f0800a8

    .line 116
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgAnswer:Landroid/widget/ImageView;

    const v0, 0x7f0800ab

    .line 117
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgIgnore:Landroid/widget/ImageView;

    const v0, 0x7f0800a9

    .line 118
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgExchange:Landroid/widget/ImageView;

    const v0, 0x7f0800a4

    .line 120
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800af

    .line 121
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800ac

    .line 122
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameBigWait:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f080123

    .line 123
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llWaitBig:Landroid/widget/LinearLayout;

    const v0, 0x7f080124

    .line 124
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llWaitBigParent:Landroid/widget/LinearLayout;

    const v0, 0x7f08011f

    .line 126
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterSmall:Landroid/widget/LinearLayout;

    const v0, 0x7f080120

    .line 127
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterWait:Landroid/widget/LinearLayout;

    const v0, 0x7f0800a5

    .line 128
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800b0

    .line 129
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800ad

    .line 130
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameSmall:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800a6

    .line 131
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->llHeadSmall:Landroid/widget/LinearLayout;

    const v0, 0x7f0800a7

    .line 132
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800b1

    .line 133
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    const v0, 0x7f0800ae

    .line 134
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/view/FontTextView;

    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    return-void
.end method

.method private initWait(Lcom/yftech/car/bluetooth/model/PhoneCall;)V
    .locals 8

    .line 393
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llWaitBigParent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 400
    :goto_0
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallNumber()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f070081

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 403
    iget-object v4, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v4, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v4, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v1}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v3, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v4, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v3, v2}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 411
    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v3, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v2}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    goto :goto_1

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v3}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v4, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v7}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 417
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v3}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v7}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    goto :goto_1

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v4}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v4}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v3}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v7}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 427
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v3}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v7}, Lcom/yftech/btphone/view/FontTextView;->setEnabled(Z)V

    .line 433
    :goto_1
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/btphone/proxy/DataProvider;->findContacts(Lcom/yftech/car/bluetooth/model/PhoneCall;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 435
    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    .line 436
    iget-object v3, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    .line 439
    :cond_3
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallMicEnable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    invoke-direct {p0, v2}, Lcom/yftech/btphone/app/PhoneDialog;->updateMicState(Z)V

    .line 443
    :cond_4
    invoke-direct {p0, v7}, Lcom/yftech/btphone/app/PhoneDialog;->setWaitNameTextView(Z)V

    if-ne v0, v7, :cond_5

    .line 446
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v3, :cond_6

    .line 449
    invoke-direct {p0, p1, v1}, Lcom/yftech/btphone/app/PhoneDialog;->startUpdateTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    goto :goto_2

    :cond_6
    const p1, 0x7f0f0044

    if-ne v0, v1, :cond_7

    .line 451
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 454
    invoke-direct {p0, v2}, Lcom/yftech/btphone/app/PhoneDialog;->setWaitNameTextView(Z)V

    .line 455
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 458
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private setNameTextView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e4ccccd    # 0.2f

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 467
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    .line 469
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 470
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    .line 472
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    return-void
.end method

.method private setWaitNameTextView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e4ccccd    # 0.2f

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    .line 479
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    .line 481
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    .line 482
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvNameWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    .line 484
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/FontTextView;->setAlpha(F)V

    return-void
.end method

.method private showSmall(Z)V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSmall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0xa

    .line 339
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 340
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x9b

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llBefore:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterSmall:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p1, 0x53

    .line 346
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 347
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 348
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llBefore:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->llAfterSmall:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p1, 0x13

    .line 353
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 354
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 p1, 0x14

    .line 355
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private startUpdateTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getCallingTime(Lcom/yftech/car/bluetooth/model/PhoneCall;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeBigWait:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvTimeSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 386
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 388
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopUpdateTime()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateMicState(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadWaitSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    const v2, 0x7f0c0017

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvHeadSmall:Lcom/yftech/btphone/view/FontTextView;

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->initPersonWait()Z

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 634
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 635
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 636
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initEvent$0$PhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(view_move): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 147
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->showSmall(Z)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$PhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(tvHeadSmall): "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->clickHeadSmall()V

    return-void
.end method

.method public synthetic lambda$initEvent$2$PhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(tvHeadWaitSmall): "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->clickHeadSmall()V

    return-void
.end method

.method public synthetic lambda$initEvent$3$PhoneDialog(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(llAfterSmall): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->dismiss()V

    .line 166
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/btphone/utils/IntentUtils;->startCallActivity(Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic lambda$initEvent$4$PhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(imgIgnore): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->muteRinger()Z

    const/4 p1, 0x1

    .line 175
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->showSmall(Z)V

    return-void
.end method

.method public synthetic lambda$initEvent$5$PhoneDialog(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 182
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(imgHungUp): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->imgHungUp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/app/BluetoothApplication;->hangup(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    return-void
.end method

.method public synthetic lambda$initEvent$6$PhoneDialog(Lkotlin/Unit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(llWaitBig): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object p1

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 195
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 198
    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yftech/btphone/app/PhoneDialog;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->initPerson(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->initWait(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->initPerson(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->initWait(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$initEvent$7$PhoneDialog(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 211
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(imgAnswer): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->hasMulPhoneCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->acceptNewCallHoldOld()Z

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->answer()Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$initEvent$8$PhoneDialog(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 223
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(imgExchange): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->switchPhoneCall()Z

    return-void
.end method

.method public synthetic lambda$initEvent$9$PhoneDialog(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "clicks(tvHead): "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unmuteRinger()Z

    .line 234
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->dismiss()V

    .line 235
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/btphone/utils/IntentUtils;->startCallActivity(Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic lambda$initPerson$10$PhoneDialog(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0032

    .line 99
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->setContentView(I)V

    .line 100
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->initUi()V

    return-void
.end method

.method public setIgnore(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/yftech/btphone/app/PhoneDialog;->isIgnore:Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 610
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 611
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isMuteRinger()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->isIgnore:Z

    .line 612
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show,isIgnore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/btphone/app/PhoneDialog;->isIgnore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-boolean v0, p0, Lcom/yftech/btphone/app/PhoneDialog;->isIgnore:Z

    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/PhoneDialog;->showSmall(Z)V

    .line 616
    invoke-virtual {p0}, Lcom/yftech/btphone/app/PhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 617
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 619
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->initEvent()V

    .line 621
    invoke-direct {p0}, Lcom/yftech/btphone/app/PhoneDialog;->initPersonWait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowOSD(Z)V

    .line 623
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowFull(Z)V

    :cond_0
    return-void
.end method
