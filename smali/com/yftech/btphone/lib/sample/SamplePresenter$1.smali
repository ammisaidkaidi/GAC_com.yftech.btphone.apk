.class Lcom/yftech/btphone/lib/sample/SamplePresenter$1;
.super Ljava/lang/Object;
.source "SamplePresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/sample/SamplePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/sample/SamplePresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/sample/SamplePresenter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter$1;->this$0:Lcom/yftech/btphone/lib/sample/SamplePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

.method public onBluetoothDiscoveryStateChanged(II)V
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
