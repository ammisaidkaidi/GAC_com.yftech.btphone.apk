.class public Lcom/yftech/btphone/callback/SettingsCallback;
.super Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;
.source "SettingsCallback.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDisconnectReason(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    const-string v0, "onBluetoothConnectStateChangedEx, ignore"

    if-nez p2, :cond_0

    const/16 v1, 0xa

    .line 18
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    if-ne v1, p3, :cond_0

    .line 19
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/callback/SettingsCallback;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    if-ne p2, p3, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/callback/SettingsCallback;->log(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_1
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p2

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method
