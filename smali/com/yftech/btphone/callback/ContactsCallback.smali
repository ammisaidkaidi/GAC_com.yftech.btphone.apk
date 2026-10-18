.class public Lcom/yftech/btphone/callback/ContactsCallback;
.super Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;
.source "ContactsCallback.java"


# static fields
.field public static final MAX_CONTACT:I = 0x7d0


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 2

    .line 25
    invoke-super {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onBluetoothContactsDownloadPositionChanged(II)V

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 27
    iget-object p1, p0, Lcom/yftech/btphone/callback/ContactsCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothContactsDownloadPositionChanged: is over 2000 contacts show tip !!!! total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getWindowManager()Lcom/yftech/btphone/proxy/WindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/WindowManager;->showDownloadContactsFull()V

    :cond_0
    return-void
.end method

.method protected onPbapStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onPbapStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
