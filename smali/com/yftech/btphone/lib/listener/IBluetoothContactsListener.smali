.class public interface abstract Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;
.super Ljava/lang/Object;
.source "IBluetoothContactsListener.java"


# virtual methods
.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method
