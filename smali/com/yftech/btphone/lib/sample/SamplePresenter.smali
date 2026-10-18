.class public Lcom/yftech/btphone/lib/sample/SamplePresenter;
.super Lcom/yftech/btphone/lib/base/presenter/BasePresenter;
.source "SamplePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yftech/btphone/lib/base/view/IView;",
        ">",
        "Lcom/yftech/btphone/lib/base/presenter/BasePresenter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

.field private mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

.field private mIBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

.field private mIBluetoothMediaListener:Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;-><init>()V

    .line 57
    new-instance v0, Lcom/yftech/btphone/lib/sample/SamplePresenter$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SamplePresenter$1;-><init>(Lcom/yftech/btphone/lib/sample/SamplePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 121
    new-instance v0, Lcom/yftech/btphone/lib/sample/SamplePresenter$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SamplePresenter$2;-><init>(Lcom/yftech/btphone/lib/sample/SamplePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mIBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 154
    new-instance v0, Lcom/yftech/btphone/lib/sample/SamplePresenter$3;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SamplePresenter$3;-><init>(Lcom/yftech/btphone/lib/sample/SamplePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mIBluetoothMediaListener:Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;

    .line 161
    new-instance v0, Lcom/yftech/btphone/lib/sample/SamplePresenter$4;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SamplePresenter$4;-><init>(Lcom/yftech/btphone/lib/sample/SamplePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onCreate()V

    .line 23
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 24
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mIBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 25
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 26
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothMediaCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mIBluetoothMediaListener:Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 32
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mIBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 33
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 34
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothMediaCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter;->mIBluetoothMediaListener:Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;)V

    .line 35
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onDestroy()V

    return-void
.end method
