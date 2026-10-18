.class public Lcom/yftech/btphone/lib/sample/SampleService;
.super Landroid/app/Service;
.source "SampleService.java"


# instance fields
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "SampleService"

    .line 26
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleService;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    .line 40
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleService;->log(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p0}, Lcom/yftech/btphone/lib/sample/SampleService;->setForegroundService(Landroid/app/Service;)V

    .line 44
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleService;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleService;->release()V

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleService;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/yftech/btphone/lib/sample/SampleService;->setForegroundService(Landroid/app/Service;)V

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method protected release()V
    .locals 1

    const-string v0, "release"

    .line 69
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setForegroundService(Landroid/app/Service;)V
    .locals 3

    .line 90
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "CHANNEL_BLUETOOTH_CLIENT_ID"

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_0

    .line 91
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    .line 94
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v2, "notification"

    .line 97
    invoke-virtual {p0, v2}, Lcom/yftech/btphone/lib/sample/SampleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 98
    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.android.action.service.sample"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 102
    invoke-static {p0, v2, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 103
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "Nature"

    .line 104
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x1080074

    .line 105
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 109
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 110
    invoke-virtual {p0, v1, p1}, Lcom/yftech/btphone/lib/sample/SampleService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
