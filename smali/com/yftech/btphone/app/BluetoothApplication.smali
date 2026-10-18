.class public Lcom/yftech/btphone/app/BluetoothApplication;
.super Lcom/yftech/btphone/lib/sample/SampleApplication;
.source "BluetoothApplication.java"


# static fields
.field private static mInstance:Lcom/yftech/btphone/app/BluetoothApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/btphone/app/BluetoothApplication;
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/btphone/app/BluetoothApplication;->mInstance:Lcom/yftech/btphone/app/BluetoothApplication;

    return-object v0
.end method


# virtual methods
.method public dial(Ljava/lang/String;)Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->isExistValidPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object p1, p0, Lcom/yftech/btphone/app/BluetoothApplication;->TAG:Ljava/lang/String;

    const-string v0, "dial: isExistValidPhone, ignore"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v0, ""

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    const-string v1, " "

    .line 93
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->dial(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getCallLogBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/CallLogBean;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/btphone/proxy/DataProvider;->mCallLogBeanList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    return-object v0
.end method

.method public getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    check-cast v0, Lcom/yftech/btphone/proxy/DataProvider;

    return-object v0
.end method

.method public bridge synthetic getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/yftech/btphone/app/BluetoothApplication;->getWindowManager()Lcom/yftech/btphone/proxy/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Lcom/yftech/btphone/proxy/WindowManager;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->mWindowManager:Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    check-cast v0, Lcom/yftech/btphone/proxy/WindowManager;

    return-object v0
.end method

.method public hangup(Lcom/yftech/car/bluetooth/model/PhoneCall;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->hasMulPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    const/4 v0, 0x4

    .line 107
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 108
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->terminateCurrentActiveCall()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 109
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 110
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->rejectNewCallIn3WayCall()Z

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->terminateCurrentActiveCall()Z

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->hangup()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected initData()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->initData()V

    return-void
.end method

.method protected initProxy()V
    .locals 1

    .line 44
    new-instance v0, Lcom/yftech/btphone/proxy/WindowManager;

    invoke-direct {v0}, Lcom/yftech/btphone/proxy/WindowManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->mWindowManager:Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    .line 45
    new-instance v0, Lcom/yftech/btphone/proxy/CallbackManager;

    invoke-direct {v0}, Lcom/yftech/btphone/proxy/CallbackManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->mCallbackManager:Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    .line 46
    new-instance v0, Lcom/yftech/btphone/proxy/DataProvider;

    invoke-direct {v0}, Lcom/yftech/btphone/proxy/DataProvider;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    .line 47
    new-instance v0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;

    invoke-direct {v0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/app/BluetoothApplication;->mPhoneCallWindowManager:Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/yftech/btphone/utils/SoundPoolManager;->getInstance()Lcom/yftech/btphone/utils/SoundPoolManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/btphone/utils/SoundPoolManager;->init(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x806

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setParamsType(I)V

    .line 32
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setTextSize(I)V

    .line 33
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setHeight(I)V

    .line 34
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/btphone/lib/view/CToast;->init(Landroid/content/Context;)V

    .line 35
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->onCreate()V

    .line 36
    sput-object p0, Lcom/yftech/btphone/app/BluetoothApplication;->mInstance:Lcom/yftech/btphone/app/BluetoothApplication;

    .line 37
    invoke-static {p0}, Lcom/yftech/btphone/utils/IntentUtils;->startMainService(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->prepare(Landroid/content/Context;)V

    return-void
.end method
