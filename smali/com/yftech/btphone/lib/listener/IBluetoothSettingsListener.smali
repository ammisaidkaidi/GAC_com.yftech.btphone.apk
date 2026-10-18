.class public interface abstract Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;
.super Ljava/lang/Object;
.source "IBluetoothSettingsListener.java"


# virtual methods
.method public onBluetoothAutoAcceptPhoneCallStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothAutoConnectStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothAutoDownloadCallLogStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothAutoDownloadContactsStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onBluetoothDisconnectReason(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onBluetoothDiscoveryStateChanged(II)V
    .locals 0

    return-void
.end method

.method public onBluetoothNameChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBluetoothPairedListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothScanModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothUnpairedListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
