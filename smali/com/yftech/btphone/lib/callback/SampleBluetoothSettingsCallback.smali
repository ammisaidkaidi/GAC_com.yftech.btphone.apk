.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;
.source "SampleBluetoothSettingsCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;-><init>()V

    const-string v0, "SampleBluetoothSettingsCallback"

    .line 30
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    .line 35
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothAutoAcceptPhoneCallStateChanged(Z)V
    .locals 3

    .line 198
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoAcceptPhoneCallStateChanged(Z)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoAcceptPhoneCallStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 203
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoAcceptPhoneCallStateChanged(Z)V

    goto :goto_0

    .line 205
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

.method public onBluetoothAutoConnectStateChanged(Z)V
    .locals 3

    .line 210
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoConnectStateChanged(Z)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 215
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoConnectStateChanged(Z)V

    goto :goto_0

    .line 217
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

.method public onBluetoothAutoDownloadCallLogStateChanged(Z)V
    .locals 3

    .line 186
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoDownloadCallLogStateChanged(Z)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoDownloadCallLogStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 191
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoDownloadCallLogStateChanged(Z)V

    goto :goto_0

    .line 193
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

.method public onBluetoothAutoDownloadContactsStateChanged(Z)V
    .locals 3

    .line 174
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoDownloadContactsStateChanged(Z)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoDownloadContactsStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 179
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoDownloadContactsStateChanged(Z)V

    goto :goto_0

    .line 181
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

.method public onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 222
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 227
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 229
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 231
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

.method public onBluetoothConnectStateChangedEx(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothConnectStateChangedEx(Landroid/bluetooth/BluetoothDevice;II)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothConnectStateChanged,state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bluetooth:,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onDisconnectReason(Landroid/bluetooth/BluetoothDevice;II)V

    .line 241
    iget-object p2, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter p2

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 243
    invoke-interface {v1, p1, p3}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothDisconnectReason(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 245
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 86
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothDeviceBandStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 91
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 93
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 95
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

.method public onBluetoothDiscoveryStateChanged(II)V
    .locals 3

    .line 163
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothDiscoveryStateChanged(II)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothDiscoveryStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 167
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothDiscoveryStateChanged(II)V

    goto :goto_0

    .line 169
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

.method public onBluetoothNameChanged(Ljava/lang/String;)V
    .locals 3

    .line 250
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothNameChanged(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 254
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothNameChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 256
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

.method public onBluetoothPairedListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothPairedListChanged(Ljava/util/List;)V

    const-string v0, "onBluetoothPairedListChanged:"

    .line 117
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onPairedListChanged(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 122
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothPairedListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 124
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

.method public onBluetoothScanModeChanged(I)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothScanModeChanged(I)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothScanModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 79
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothScanModeChanged(I)V

    goto :goto_0

    .line 81
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

.method public onBluetoothScanningStateChanged(Z)V
    .locals 3

    .line 151
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothScanningStateChanged(Z)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothScanningStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 156
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothScanningStateChanged(Z)V

    goto :goto_0

    .line 158
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

.method public onBluetoothStateChanged(I)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothStateChanged(I)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onStateChanged(I)V

    .line 59
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 61
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothStateChanged(I)V

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

.method public onBluetoothUnpairedListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothUnpairedListChanged(Ljava/util/List;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothUnpairedListChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onUnpairedListChanged(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 140
    invoke-interface {v2, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothUnpairedListChanged(Ljava/util/List;)V

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

.method protected onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->deleteUnpairedDevice(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne v1, p2, :cond_0

    .line 102
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hidePairWindow()V

    .line 103
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-ne v1, p2, :cond_1

    .line 105
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    if-ne p1, p2, :cond_2

    .line 107
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hidePairWindow()V

    .line 108
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 260
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object v0

    const/16 v1, 0x1000

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method protected onDisconnectReason(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    if-nez p2, :cond_0

    const-string p1, "onDisconnectReason, ignore"

    .line 271
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p2

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method protected onPairedListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateDevices(ILjava/util/List;)V

    return-void
.end method

.method protected onStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 68
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->resetData()V

    :cond_0
    return-void
.end method

.method protected onUnpairedListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateDevices(ILjava/util/List;)V

    return-void
.end method

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

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

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/Collection;

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
