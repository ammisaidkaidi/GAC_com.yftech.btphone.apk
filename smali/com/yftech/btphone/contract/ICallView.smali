.class public interface abstract Lcom/yftech/btphone/contract/ICallView;
.super Ljava/lang/Object;
.source "ICallView.java"


# virtual methods
.method public abstract onBluetoothPhoneCallAudioStateChanged(Z)V
.end method

.method public abstract onBluetoothPhoneCallMicStateChanged(Z)V
.end method

.method public abstract onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation
.end method
