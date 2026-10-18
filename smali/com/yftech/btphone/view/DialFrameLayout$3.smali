.class Lcom/yftech/btphone/view/DialFrameLayout$3;
.super Ljava/lang/Object;
.source "DialFrameLayout.java"

# interfaces
.implements Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/view/DialFrameLayout;->setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/view/DialFrameLayout;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/view/DialFrameLayout;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$3;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout$3;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {v0}, Lcom/yftech/btphone/view/DialFrameLayout;->showLoading()V

    .line 145
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/yftech/btphone/lib/bean/Device;->isHfpConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/bean/Device;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/bean/Device;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestConnect(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestDownloadContacts()Z

    .line 154
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getWindowManager()Lcom/yftech/btphone/proxy/WindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/proxy/WindowManager;->setNeedShowDownloadTip(Z)V

    return-void
.end method
