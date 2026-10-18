.class public Lcom/yftech/btphone/presenter/SearchPresenter;
.super Lcom/yftech/btphone/lib/base/presenter/BasePresenter;
.source "SearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/btphone/lib/base/presenter/BasePresenter<",
        "Lcom/yftech/btphone/app/SearchActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

.field private mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

.field private mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;-><init>()V

    .line 36
    new-instance v0, Lcom/yftech/btphone/presenter/SearchPresenter$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/SearchPresenter$1;-><init>(Lcom/yftech/btphone/presenter/SearchPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 44
    new-instance v0, Lcom/yftech/btphone/presenter/SearchPresenter$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/SearchPresenter$2;-><init>(Lcom/yftech/btphone/presenter/SearchPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 51
    new-instance v0, Lcom/yftech/btphone/presenter/SearchPresenter$3;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/SearchPresenter$3;-><init>(Lcom/yftech/btphone/presenter/SearchPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 17
    new-instance v0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onCreate()V

    .line 23
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 24
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 25
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 31
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 32
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/SearchPresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 33
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onDestroy()V

    return-void
.end method
