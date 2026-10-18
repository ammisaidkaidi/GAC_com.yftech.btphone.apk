.class public Lcom/yftech/btphone/callback/MediaCallback;
.super Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;
.source "MediaCallback.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAvrcpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->onAvrcpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
