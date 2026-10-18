.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;
.source "SampleBluetoothContactsCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;-><init>()V

    const-string v0, "SampleBluetoothContactsCallback"

    .line 30
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    .line 35
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 3

    .line 115
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogDownloadPositionChanged(II)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothCallLogDownloadPositionChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 120
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothCallLogDownloadPositionChanged(II)V

    goto :goto_0

    .line 122
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

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogDownloadStateChanged(I)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothCallLogDownloadStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 96
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothCallLogDownloadStateChanged(I)V

    goto :goto_0

    .line 98
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

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogListChanged(Ljava/util/List;)V

    const-string v0, "onBluetoothCallLogListChanged"

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onCallLogListChanged(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 80
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothCallLogListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 82
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

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 3

    .line 127
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsDownloadPositionChanged(II)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothCallLogDownloadPositionChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 132
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothContactsDownloadPositionChanged(II)V

    goto :goto_0

    .line 134
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

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsDownloadStateChanged(I)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothContactsDownloadStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 108
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothContactsDownloadStateChanged(I)V

    goto :goto_0

    .line 110
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

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsListChanged(Ljava/util/List;)V

    const-string v0, "onBluetoothContactsListChanged"

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onContactsListChanged(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 61
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothContactsListChanged(Ljava/util/List;)V

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

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 139
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPbapConnectStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bluetoothDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onPbapStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 144
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 146
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 148
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

.method protected onCallLogListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateCallLog(Ljava/util/List;)V

    return-void
.end method

.method protected onContactsListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateContactsList(Ljava/util/List;)V

    return-void
.end method

.method protected onPbapStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 152
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, p1, v1, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;

    .line 154
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
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

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
