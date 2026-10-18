.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "SampleBluetoothPhoneCallCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    const-string v0, "SampleBluetoothPhoneCallCallback"

    .line 31
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    .line 36
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 68
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothHfpConnectStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 73
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 75
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothIndicatorChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 61
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBluetoothPhoneCallAudioStateChanged(Z)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallAudioStateChanged(Z)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallAudioStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 140
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothPhoneCallAudioStateChanged(Z)V

    goto :goto_0

    .line 142
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBluetoothPhoneCallMicStateChanged(Z)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallMicStateChanged(Z)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallMicStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 152
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothPhoneCallMicStateChanged(Z)V

    goto :goto_0

    .line 154
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged, phone size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onPhoneCallChanged(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 109
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    goto :goto_0

    .line 111
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 82
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->resetHfpData()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onPhoneCallChanged(Ljava/util/List;)V

    .line 87
    :cond_1
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, p1, v1, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;

    .line 92
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method protected onPhoneCallChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updatePhoneCalls(Ljava/util/List;)V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 118
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowOSD(Z)V

    .line 119
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowFull(Z)V

    .line 121
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    const-string p1, "############ setShouldShowOSD(false)"

    .line 122
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowOSD(Z)V

    .line 126
    :cond_2
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->isExistValidPhone()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hideConnectFailed()V

    .line 130
    :cond_3
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    return-void
.end method

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
