.class public Lcom/yftech/btphone/lib/sample/SampleWindowManager;
.super Ljava/lang/Object;
.source "SampleWindowManager.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;


# instance fields
.field protected final DELAY_TIME_CONNECT_SUCCESS:I

.field protected final DELAY_TIME_PBAP_CONFIRM:I

.field protected final DELAY_TIME_PBAP_FAILED:I

.field protected final MSG_CONNECTED:I

.field protected final MSG_DISCONNECTED:I

.field protected final MSG_DOWNLOAD_CONFIRM:I

.field protected final MSG_DOWNLOAD_FAILED:I

.field protected TAG:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SampleWindowManager"

    .line 31
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x7d0

    .line 34
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->DELAY_TIME_PBAP_CONFIRM:I

    const/16 v0, 0x3e8

    .line 35
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->DELAY_TIME_PBAP_FAILED:I

    .line 37
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->DELAY_TIME_CONNECT_SUCCESS:I

    const/4 v0, 0x2

    .line 40
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->MSG_CONNECTED:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->MSG_DISCONNECTED:I

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->MSG_DOWNLOAD_CONFIRM:I

    const/4 v0, 0x4

    .line 43
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->MSG_DOWNLOAD_FAILED:I

    .line 46
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleWindowManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SampleWindowManager$1;-><init>(Lcom/yftech/btphone/lib/sample/SampleWindowManager;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCallView(Landroid/content/Context;Landroid/view/View;IIIII)Z
    .locals 3

    const-string v0, "window"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 172
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->createWindowManagerLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 176
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p4, p7

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager$LayoutParams;

    if-eqz p3, :cond_1

    .line 183
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p4, p7

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public createWindowManagerLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 194
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    const/high16 v2, 0x80000

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 198
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 200
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x820700

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, 0x1

    .line 208
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 209
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 211
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 212
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method protected dispatchHandlerMessage(Landroid/os/Message;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showDisconnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showConnectSuccess(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showDownloadConfirm(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showDownloadFailed(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public hidePairWindow()V
    .locals 0

    return-void
.end method

.method public removeCallView(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    const-string v0, "window"

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected sendMessageDelay(IIIILjava/lang/Object;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageDelay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 75
    iput p4, p1, Landroid/os/Message;->arg2:I

    .line 76
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 77
    iput-object p5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    iget-object p3, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long p4, p2

    invoke-virtual {p3, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showPairWindow(Landroid/content/Intent;)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->hideConnectFailed()V

    return-void
.end method

.method public updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 14

    move-object v6, p0

    move/from16 v0, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 83
    iget-object v1, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConnectionState, profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v1, 0x11

    if-ne v1, v0, :cond_2

    .line 89
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v7, :cond_0

    const/4 v1, 0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->sendMessageDelay(IIIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    if-ne v11, v7, :cond_1

    const/4 v1, 0x3

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->sendMessageDelay(IIIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    if-ne v12, v7, :cond_9

    .line 97
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x10

    if-eq v1, v0, :cond_9

    const/16 v1, 0xc

    if-ne v1, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1000

    if-ne v1, v0, :cond_9

    .line 104
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;

    move-result-object v13

    if-ne v12, v7, :cond_4

    .line 109
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->hideConnectFailed()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->sendMessageDelay(IIIILjava/lang/Object;)V

    :cond_4
    const/16 v0, 0xa

    .line 118
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v0, v1, :cond_5

    if-ne v10, v8, :cond_5

    .line 119
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "updateConnectionState: BluetoothDevice.BOND_NONE == bluetoothDevice.getBondState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showConnectFailed(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_5
    const/16 v0, 0xb

    .line 122
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 123
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "updateConnectionState: BluetoothDevice.BOND_BONDING = bluetoothDevice.getBondState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v0, 0x5

    if-ne v0, v8, :cond_7

    .line 128
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showConnectFailed(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_7
    if-nez v7, :cond_9

    const/4 v0, -0x1

    if-eq v0, v8, :cond_9

    if-eqz v13, :cond_8

    .line 137
    invoke-virtual {v13}, Lcom/yftech/btphone/lib/bean/Device;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectionState, ignore show disconnected, connected device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_8
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, v6, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->sendMessageDelay(IIIILjava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method
