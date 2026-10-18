.class public interface abstract Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;
.super Ljava/lang/Object;
.source "IBluetoothPhoneCallListener.java"


# virtual methods
.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V
    .locals 0

    return-void
.end method

.method public onBluetoothPhoneCallAudioStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothPhoneCallMicStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method
