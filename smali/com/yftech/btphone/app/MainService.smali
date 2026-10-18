.class public Lcom/yftech/btphone/app/MainService;
.super Lcom/yftech/btphone/lib/sample/SampleService;
.source "MainService.java"


# static fields
.field private static final KEY_AIR_CONTROL_SHOW:Ljava/lang/String; = "air_control_show"

.field private static final KEY_CAR_CONTROL_SHOW:Ljava/lang/String; = "car_control_show"

.field private static final KEY_SEAT_CONTROL_SHOW:Ljava/lang/String; = "seat_control_show"

.field private static final VALUE_WINDOW_HIDE:I = 0x0

.field private static final VALUE_WINDOW_SHOW:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mGlobalReceiver:Lcom/yftech/btphone/app/GlobalReceiver;

.field private mUriArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleService;-><init>()V

    const-string v0, "MainService"

    .line 14
    iput-object v0, p0, Lcom/yftech/btphone/app/MainService;->TAG:Ljava/lang/String;

    const-string v0, "air_control_show"

    const-string v1, "car_control_show"

    const-string v2, "seat_control_show"

    .line 28
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/app/MainService;->mUriArray:[Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/yftech/btphone/app/MainService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yftech/btphone/app/MainService$1;-><init>(Lcom/yftech/btphone/app/MainService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/MainService;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/MainService;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yftech/btphone/app/MainService;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 34
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SampleService;->init()V

    .line 36
    iget-object v0, p0, Lcom/yftech/btphone/app/MainService;->mUriArray:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/yftech/btphone/app/MainService;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/yftech/btphone/app/GlobalReceiver;

    invoke-direct {v0}, Lcom/yftech/btphone/app/GlobalReceiver;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/MainService;->mGlobalReceiver:Lcom/yftech/btphone/app/GlobalReceiver;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.action.ecall.command"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.activity.action.STATE_CHANGED"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yftech.intent.action.exit.application"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "air_control_show"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/yftech/btphone/app/MainService;->mGlobalReceiver:Lcom/yftech/btphone/app/GlobalReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/btphone/app/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public release()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/yftech/btphone/app/MainService;->mGlobalReceiver:Lcom/yftech/btphone/app/GlobalReceiver;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/MainService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/yftech/btphone/app/MainService;->mGlobalReceiver:Lcom/yftech/btphone/app/GlobalReceiver;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/MainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/MainService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
