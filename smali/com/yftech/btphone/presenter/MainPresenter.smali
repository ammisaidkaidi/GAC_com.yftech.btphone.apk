.class public Lcom/yftech/btphone/presenter/MainPresenter;
.super Lcom/yftech/btphone/lib/base/presenter/BasePresenter;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/btphone/lib/base/presenter/BasePresenter<",
        "Lcom/yftech/btphone/app/MainActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

.field private mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

.field private mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

.field private mTimeChangedListener:Lcom/yftech/btphone/lib/listener/ITimeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;-><init>()V

    .line 49
    new-instance v0, Lcom/yftech/btphone/presenter/MainPresenter$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/MainPresenter$1;-><init>(Lcom/yftech/btphone/presenter/MainPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mTimeChangedListener:Lcom/yftech/btphone/lib/listener/ITimeChangedListener;

    .line 66
    new-instance v0, Lcom/yftech/btphone/presenter/MainPresenter$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/MainPresenter$2;-><init>(Lcom/yftech/btphone/presenter/MainPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 73
    new-instance v0, Lcom/yftech/btphone/presenter/MainPresenter$3;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/MainPresenter$3;-><init>(Lcom/yftech/btphone/presenter/MainPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 80
    new-instance v0, Lcom/yftech/btphone/presenter/MainPresenter$4;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/presenter/MainPresenter$4;-><init>(Lcom/yftech/btphone/presenter/MainPresenter;)V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 20
    new-instance v0, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mCompositeDisposableMgr:Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    return-void
.end method


# virtual methods
.method public findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/btphone/app/MainActivity;->findContactBean(Lcom/yftech/btphone/bean/ContactBean;Z)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onCreate()V

    .line 26
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 27
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 28
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 29
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->getInstance()Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mTimeChangedListener:Lcom/yftech/btphone/lib/listener/ITimeChangedListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->addListener(Lcom/yftech/btphone/lib/listener/ITimeChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->getInstance()Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mTimeChangedListener:Lcom/yftech/btphone/lib/listener/ITimeChangedListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->removeListener(Lcom/yftech/btphone/lib/listener/ITimeChangedListener;)V

    .line 35
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothPhoneCallListener:Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V

    .line 36
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothSettingsListener:Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V

    .line 37
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/presenter/MainPresenter;->mBluetoothContactsListener:Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V

    .line 38
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/presenter/BasePresenter;->onDestroy()V

    return-void
.end method

.method public setBackgroundIcon(I)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/MainActivity;->setBackgroundIcon(I)V

    return-void
.end method
