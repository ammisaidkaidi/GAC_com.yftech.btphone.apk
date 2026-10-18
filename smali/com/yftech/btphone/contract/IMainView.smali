.class public interface abstract Lcom/yftech/btphone/contract/IMainView;
.super Ljava/lang/Object;
.source "IMainView.java"


# virtual methods
.method public abstract onBluetoothCallLogDownloadPositionChanged(II)V
.end method

.method public abstract onBluetoothCallLogDownloadStateChanged(I)V
.end method

.method public abstract onBluetoothCallLogListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBluetoothContactsDownloadPositionChanged(II)V
.end method

.method public abstract onBluetoothContactsDownloadStateChanged(I)V
.end method

.method public abstract onBluetoothContactsListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onBluetoothStateChanged(I)V
.end method
