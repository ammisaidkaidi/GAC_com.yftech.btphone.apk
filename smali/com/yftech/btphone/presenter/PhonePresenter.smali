.class public Lcom/yftech/btphone/presenter/PhonePresenter;
.super Lcom/yftech/btphone/lib/base/presenter/BasePresenter;
.source "PhonePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/btphone/lib/base/presenter/BasePresenter<",
        "Lcom/yftech/btphone/app/CallActivity;",
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

    .line 17
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;-><init>()V

    .line 39
    new-instance v0, Lcom/yftech/btphone/presenter/PhonePresenter$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/PhonePresenter$1;-><init>(Lcom/yftech/btphone/presenter/PhonePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 45
    new-instance v0, Lcom/yftech/btphone/presenter/PhonePresenter$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/PhonePresenter$2;-><init>(Lcom/yftech/btphone/presenter/PhonePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 67
    new-instance v0, Lcom/yftech/btphone/presenter/PhonePresenter$3;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/PhonePresenter$3;-><init>(Lcom/yftech/btphone/presenter/PhonePresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 18
    new-instance v0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onCreate()V

    .line 24
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 25
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 26
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 32
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 33
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/PhonePresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 35
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onDestroy()V

    return-void
.end method
