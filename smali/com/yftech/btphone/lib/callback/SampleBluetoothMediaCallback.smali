.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
.source "SampleBluetoothMediaCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    const-string v0, "SampleBluetoothMediaCallback"

    .line 25
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    .line 30
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAvrcpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 62
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, p1, v1, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;

    .line 67
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 49
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;->onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAvrcpConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->log(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->onAvrcpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 54
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;

    .line 56
    invoke-interface {v2, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;->onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 58
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

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
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

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
