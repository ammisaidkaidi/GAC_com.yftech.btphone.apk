.class public Lcom/yftech/btphone/proxy/WindowManager;
.super Lcom/yftech/btphone/lib/sample/SampleWindowManager;
.source "WindowManager.java"


# instance fields
.field public final TYPE_BASE:I

.field public final TYPE_CONNECTED_SUCCESS:I

.field public final TYPE_DISCONNECTED:I

.field public final TYPE_DOWNLOAD_CONFIRM:I

.field public final TYPE_DOWNLOAD_FAILED:I

.field public final TYPE_PAIR:I

.field private mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

.field private mNeedShowDownloadTipNextConnect:Z

.field private final timeSecord10:I

.field private final timeSecord3:I

.field private final timeSecord30:I

.field private final timeSecord5:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;-><init>()V

    const/16 v0, 0x1000

    .line 33
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TYPE_BASE:I

    const/16 v0, 0x1001

    .line 34
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TYPE_CONNECTED_SUCCESS:I

    const/16 v0, 0x1002

    .line 35
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TYPE_DISCONNECTED:I

    const/16 v0, 0x1003

    .line 36
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TYPE_DOWNLOAD_CONFIRM:I

    const/16 v0, 0x1004

    .line 37
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TYPE_DOWNLOAD_FAILED:I

    const/16 v0, 0x1005

    .line 38
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TYPE_PAIR:I

    const/16 v0, 0xbb8

    .line 40
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->timeSecord3:I

    const/16 v0, 0x1388

    .line 41
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->timeSecord5:I

    const/16 v0, 0x2710

    .line 42
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->timeSecord10:I

    const/16 v0, 0x7530

    .line 43
    iput v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->timeSecord30:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    .line 47
    new-instance v0, Lcom/yftech/btphone/bean/BTDevice;

    invoke-direct {v0}, Lcom/yftech/btphone/bean/BTDevice;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

    return-void
.end method


# virtual methods
.method public closeAllToast()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string v1, "closeAllToast: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    .line 247
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/view/CToast;->hide()V

    return-void
.end method

.method public closeToastType(Landroid/content/Context;I)V
    .locals 0

    .line 240
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/view/CToast;->hide(I)V

    return-void
.end method

.method public hidePairWindow()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->hidePairWindow()V

    .line 126
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    const/16 v1, 0x1005

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/yftech/btphone/proxy/WindowManager;->closeToastType(Landroid/content/Context;I)V

    return-void
.end method

.method public isActivityShow()Z
    .locals 4

    .line 258
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/utils/AppManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityShow, currentActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNeedShowDownloadTip(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    return-void
.end method

.method public showConnectFailed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 160
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showConnectFailed(Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectFailed, state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ignore"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/utils/DialogManager;->getInstance()Lcom/yftech/btphone/utils/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/utils/DialogManager;->showConnectTimeoutDialog(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public showConnectSuccess(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectedSuccessTip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/bean/BTDevice;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 135
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 138
    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/btphone/proxy/DataProvider;->getDeviceFromConnect(Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/btphone/lib/bean/Device;

    move-result-object v2

    if-nez v2, :cond_0

    .line 142
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string v0, "showConnectedSuccessTip, device is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 145
    invoke-virtual {v2}, Lcom/yftech/btphone/lib/bean/Device;->getPbapState()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 146
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string v0, "showConnectedSuccessTip, getPbapState is connecting, ignore "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v1

    const v2, 0x7f0c00c5

    invoke-virtual {v1, v2}, Lcom/yftech/btphone/lib/view/CToast;->setBackground(I)Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v1

    const/16 v2, 0x1001

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v0, v3}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectedSuccessTip: device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public showDisconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDisconnectedTip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/bean/BTDevice;->equalsDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string v0, "showDisconnectedTip: not last connectDevice do not show tip"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    .line 180
    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v2, v1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/BTDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDisconnect: use record name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/BTDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_1
    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f009b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setBackground(I)Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x1002

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mBtDevice:Lcom/yftech/btphone/bean/BTDevice;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/BTDevice;->reset()V

    return-void
.end method

.method public showDownloadConfirm(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDownloadConfirm: mNeedShowDownloadTipNextConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    .line 208
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/btphone/proxy/DataProvider;->getDeviceFromConnect(Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/btphone/lib/bean/Device;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setBackground(I)Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x1003

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    .line 216
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDownloadConfirm, hasMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public showDownloadContactsFull()V
    .locals 4

    .line 251
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v1

    const v2, 0x7f0c00c6

    invoke-virtual {v1, v2}, Lcom/yftech/btphone/lib/view/CToast;->setBackground(I)Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v1

    const/16 v2, 0x1004

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v0, v3}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    return-void
.end method

.method public showDownloadFailed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 224
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    .line 225
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDownloadFailed: device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/WindowManager;->isActivityShow()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/yftech/btphone/lib/bean/Device;->isHfpConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/bean/Device;->isBond()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f009d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setBackground(I)Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x1004

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public showPairWindow(Landroid/content/Intent;)V
    .locals 6

    .line 94
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->showPairWindow(Landroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string v1, "showPaired: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    const/high16 v1, -0x80000000

    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 98
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    iget-object v3, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPairWindow: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    .line 101
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 106
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string v0, "showPairWindow: PAIRING_VARIANT_CONSENT agreePair"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->agreePair()Z

    return-void

    :cond_1
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 111
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string p1, "%06d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {v3}, Lcom/yftech/btphone/utils/CommonUtils;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f00a1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v2, v5, v1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/yftech/btphone/lib/view/CToast;->getInstance()Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/view/CToast;->setBackground(I)Lcom/yftech/btphone/lib/view/CToast;

    move-result-object v0

    const/16 v1, 0x1005

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    return-void
.end method

.method public updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 6

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne v2, p2, :cond_1

    if-ne v0, p3, :cond_0

    .line 62
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    const/16 p2, 0x1003

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/proxy/WindowManager;->closeToastType(Landroid/content/Context;I)V

    const/16 p2, 0x1004

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/proxy/WindowManager;->closeToastType(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_4

    .line 66
    iput-boolean v1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x1000

    if-ne v2, p2, :cond_4

    if-nez p3, :cond_2

    .line 70
    iput-boolean v1, p0, Lcom/yftech/btphone/proxy/WindowManager;->mNeedShowDownloadTipNextConnect:Z

    :cond_2
    if-nez p3, :cond_4

    const/4 p2, -0x1

    if-ne p4, p2, :cond_4

    .line 74
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p2

    invoke-interface {p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 75
    invoke-virtual {p2}, Lcom/yftech/btphone/lib/bean/Device;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 76
    iget-object p1, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateConnectionState, ignore show disconnected, connected device: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_3
    iget-object p2, p0, Lcom/yftech/btphone/proxy/WindowManager;->TAG:Ljava/lang/String;

    const-string p3, "updateConnectionState: disconnect"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p2, p0, Lcom/yftech/btphone/proxy/WindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object p2, p0, Lcom/yftech/btphone/proxy/WindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object p2, p0, Lcom/yftech/btphone/proxy/WindowManager;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/btphone/proxy/WindowManager;->sendMessageDelay(IIIILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
