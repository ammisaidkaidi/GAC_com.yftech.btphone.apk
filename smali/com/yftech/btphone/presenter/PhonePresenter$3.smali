.class Lcom/yftech/btphone/presenter/PhonePresenter$3;
.super Ljava/lang/Object;
.source "PhonePresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/presenter/PhonePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/presenter/PhonePresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/presenter/PhonePresenter;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/yftech/btphone/presenter/PhonePresenter$3;->this$0:Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method
