.class public Lcom/yftech/btphone/lib/sample/SampleCallbackManager;
.super Ljava/lang/Object;
.source "SampleCallbackManager.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/ICallbackProxy;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mBluetoothContactsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

.field protected mBluetoothMediaCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

.field protected mBluetoothPhoneCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

.field protected mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

.field protected mHandler:Landroid/os/Handler;

.field protected mLifecycleCallbacks:Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SampleCallbackManager"

    .line 26
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createContactsCallback(Landroid/content/Context;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothContactsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    return-void
.end method

.method public createLifecycleCallback(Landroid/content/Context;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mLifecycleCallbacks:Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    return-void
.end method

.method public createMediaCallback(Landroid/content/Context;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothMediaCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    return-void
.end method

.method public createPhoneCallCallback(Landroid/content/Context;)V
    .locals 1

    .line 77
    new-instance v0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothPhoneCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    return-void
.end method

.method public createSettingsCallback(Landroid/content/Context;)V
    .locals 1

    .line 85
    new-instance v0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    return-void
.end method

.method public getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothContactsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    return-object v0
.end method

.method public getBluetoothMediaCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothMediaCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    return-object v0
.end method

.method public getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothPhoneCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    return-object v0
.end method

.method public getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    return-object v0
.end method

.method public getLifecycleCallbacks()Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mLifecycleCallbacks:Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->createContactsCallback(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->createMediaCallback(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->createPhoneCallCallback(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->createSettingsCallback(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->createLifecycleCallback(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->getLifecycleCallbacks()Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 52
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->registerCallBack()V

    return-void
.end method

.method public registerCallBack()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->TAG:Ljava/lang/String;

    const-string v1, "registerCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothContactsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothContactsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;Landroid/os/Handler;)V

    .line 59
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothPhoneCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 60
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;Landroid/os/Handler;)V

    .line 61
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothMediaCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public release(Landroid/app/Application;)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->getLifecycleCallbacks()Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 94
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->unRegisterCallBack()V

    .line 95
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public unRegisterCallBack()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothContactsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothContactsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;)V

    .line 67
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothPhoneCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 68
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;)V

    .line 69
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;->mBluetoothMediaCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;)V

    return-void
.end method
