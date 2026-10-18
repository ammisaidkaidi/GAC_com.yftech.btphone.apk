.class public Lcom/yftech/btphone/lib/sample/SampleApplication;
.super Landroid/app/Application;
.source "SampleApplication.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IApplicationProxy;


# static fields
.field protected static mInstance:Lcom/yftech/btphone/lib/sample/SampleApplication;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mCallbackManager:Lcom/yftech/btphone/lib/listener/ICallbackProxy;

.field protected mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

.field private mLastDialNumber:Ljava/lang/String;

.field protected mPhoneCallWindowManager:Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

.field protected mWindowManager:Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "SampleApplication"

    .line 14
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mLastDialNumber:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;
    .locals 1

    .line 27
    sget-object v0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mInstance:Lcom/yftech/btphone/lib/sample/SampleApplication;

    return-object v0
.end method

.method private release()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mCallbackManager:Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->release(Landroid/app/Application;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mWindowManager:Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    .line 58
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mPhoneCallWindowManager:Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    .line 61
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->resetData()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mCallbackManager:Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    return-object v0
.end method

.method public getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    return-object v0
.end method

.method public getLastDialNumber()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mLastDialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mPhoneCallWindowManager:Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    return-object v0
.end method

.method public getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mWindowManager:Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->init()V

    .line 81
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->init(Landroid/app/Application;)V

    .line 82
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    return-void
.end method

.method protected initProxy()V
    .locals 1

    .line 69
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mWindowManager:Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    .line 70
    new-instance v0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mPhoneCallWindowManager:Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    .line 71
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mCallbackManager:Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    .line 72
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mDataProviderManager:Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    .line 36
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->log(Ljava/lang/String;)V

    .line 37
    sput-object p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mInstance:Lcom/yftech/btphone/lib/sample/SampleApplication;

    .line 38
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->initProxy()V

    .line 39
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->initData()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    const-string v0, "onTerminate"

    .line 45
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->log(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->release()V

    .line 47
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public setLastDialNumber(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleApplication;->mLastDialNumber:Ljava/lang/String;

    return-void
.end method
