.class public Lcom/yftech/btphone/app/EcallDialog;
.super Landroid/app/Dialog;
.source "EcallDialog.java"


# static fields
.field private static final FINISH_TIMEOUT:I = 0x3e8

.field private static final MSG_DELAY_FINISH:I = 0x1

.field private static final MSG_UPDATE_TIME:I = 0x2


# instance fields
.field private final SHOW_DIALOG:Z

.field private TAG:Ljava/lang/String;

.field private compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final ecallAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private mStartTime:J

.field private mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1002ce

    .line 65
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "EcallDialog"

    .line 41
    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/yftech/btphone/app/EcallDialog;->SHOW_DIALOG:Z

    .line 50
    new-instance v0, Lcom/yftech/btphone/app/EcallDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/EcallDialog$1;-><init>(Lcom/yftech/btphone/app/EcallDialog;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    .line 376
    new-instance v0, Lcom/yftech/btphone/app/EcallDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/EcallDialog$2;-><init>(Lcom/yftech/btphone/app/EcallDialog;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->ecallAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v0, "audio"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 67
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x809

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/EcallDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->onEndEcall()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/app/EcallDialog;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private hideWindowView()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "hide: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->setMuteForEcall(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/btphone/app/EcallDialog;->removeCallView(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 94
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mRootView:Landroid/view/View;

    return-void
.end method

.method private onEndEcall()V
    .locals 2

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "onEndEcall: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->stopAnimal()V

    .line 238
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/screen/CarScreenManager;->closeScreenBrightness(I)Z

    .line 239
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/EcallDialog;->closeView(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->abandonPhoneAudioFocus()V

    .line 241
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->checkAudio(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private removeMessageFinish()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendMessageFinish()V
    .locals 4

    .line 337
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageFinish()V

    .line 338
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showWindowView(Landroid/content/Context;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "show: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->setMuteForEcall(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/btphone/app/EcallDialog;->addCallView(Landroid/content/Context;Landroid/view/View;)Z

    .line 402
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/car/screen/CarScreenManager;->openScreenBrightness(I)Z

    return-void
.end method

.method private startAnimal(Z)V
    .locals 2

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v0, "startAnimal: rootView is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 284
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v0, "startAnimal: imageViewAnimal is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 288
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07005a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 293
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 296
    :cond_3
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070059

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 299
    :cond_4
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 301
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method private stopActiveAnimal()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    return-void
.end method

.method private stopAnimal()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->stopWaitAnimal()V

    .line 310
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->stopActiveAnimal()V

    return-void
.end method

.method private stopWaitAnimal()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    return-void
.end method


# virtual methods
.method public abandonPhoneAudioFocus()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "abandonPhoneAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method public addCallView(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/16 v1, 0x809

    const/16 v2, 0x30

    .line 425
    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/yftech/btphone/app/EcallDialog;->createWindowManagerLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 427
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/btphone/app/EcallDialog;->addCallView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public addCallView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    const-string v0, "window"

    .line 432
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 437
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public closeView(Landroid/content/Context;)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->release()V

    .line 155
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->hideWindowView()V

    return-void
.end method

.method public createWindowManagerLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 446
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    const/high16 v2, 0x80000

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 450
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 452
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x820728

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, 0x1

    .line 462
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 463
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 465
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 466
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->release()V

    .line 120
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public isViewShow()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b001c

    .line 79
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/EcallDialog;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->initEvent()V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/EcallDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public onEcallActive(Landroid/content/Context;)V
    .locals 3

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageFinish()V

    .line 189
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->checkAudio(I)V

    .line 190
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->requestPhoneAudioFocus()I

    .line 191
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/EcallDialog;->showView(Landroid/content/Context;)V

    const/16 v0, 0x8

    const v2, 0x7f0f003c

    .line 193
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/btphone/app/EcallDialog;->updateState(ILjava/lang/String;)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/yftech/btphone/app/EcallDialog;->updateTimeVisible(Z)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/yftech/btphone/app/EcallDialog;->updateHangupEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->updateTime()V

    .line 197
    invoke-direct {p0, v1}, Lcom/yftech/btphone/app/EcallDialog;->startAnimal(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEcallOther(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 223
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    .line 224
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageUpdateTime()V

    .line 226
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->onEndEcall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onEcallOver(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 205
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    .line 206
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageUpdateTime()V

    .line 208
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->isViewShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->stopActiveAnimal()V

    const v0, 0x7f0f001c

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/btphone/app/EcallDialog;->updateState(ILjava/lang/String;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/EcallDialog;->updateTimeVisible(Z)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/EcallDialog;->updateHangupEnabled(Z)V

    .line 214
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->sendMessageFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onOutgoing(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 170
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    .line 171
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageUpdateTime()V

    .line 172
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageFinish()V

    .line 173
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->checkAudio(I)V

    .line 174
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->requestPhoneAudioFocus()I

    .line 175
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/EcallDialog;->showView(Landroid/content/Context;)V

    const v0, 0x7f0f003c

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/btphone/app/EcallDialog;->updateState(ILjava/lang/String;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/EcallDialog;->updateTimeVisible(Z)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/yftech/btphone/app/EcallDialog;->updateHangupEnabled(Z)V

    .line 180
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/EcallDialog;->startAnimal(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 126
    iput-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    :cond_0
    const-wide/16 v2, 0x0

    .line 128
    iput-wide v2, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    .line 129
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallView(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "window"

    .line 476
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 477
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public removeMessageUpdateTime()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestPhoneAudioFocus()I
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x17

    .line 358
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 359
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 361
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 362
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->ecallAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 363
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

    .line 366
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->mAudioFocusRequestPhone:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPhoneAudioFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "requestPhoneAudioFocus already"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessageUpdateTime()V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->removeMessageUpdateTime()V

    .line 331
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 107
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x802

    .line 108
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x800033

    .line 109
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x48

    .line 110
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showView(Landroid/content/Context;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/yftech/btphone/app/EcallDialog;->initEvent()V

    .line 146
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/EcallDialog;->showWindowView(Landroid/content/Context;)V

    return-void
.end method

.method public updateHangupEnabled(Z)V
    .locals 0

    return-void
.end method

.method public updateState(ILjava/lang/String;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTime()V
    .locals 4

    .line 250
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    invoke-static {v0, v1}, Lcom/yftech/btphone/utils/CommonUtils;->secToTime(J)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/yftech/btphone/app/EcallDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mStartTime:J

    .line 256
    invoke-virtual {p0}, Lcom/yftech/btphone/app/EcallDialog;->sendMessageUpdateTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateTimeVisible(Z)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
