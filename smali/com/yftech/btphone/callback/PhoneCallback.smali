.class public Lcom/yftech/btphone/callback/PhoneCallback;
.super Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;
.source "PhoneCallback.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    .line 27
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->checkAudio(I)V

    return-void
.end method

.method protected onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
