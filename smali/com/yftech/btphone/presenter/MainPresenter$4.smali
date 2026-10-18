.class Lcom/yftech/btphone/presenter/MainPresenter$4;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/presenter/MainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/presenter/MainPresenter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothCallLogDownloadPositionChanged(II)V

    return-void
.end method

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothCallLogDownloadStateChanged(I)V

    return-void
.end method

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothCallLogListChanged(Ljava/util/List;)V

    return-void
.end method

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothContactsDownloadPositionChanged(II)V

    return-void
.end method

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothContactsDownloadStateChanged(I)V

    return-void
.end method

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothContactsListChanged(Ljava/util/List;)V

    return-void
.end method

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$4;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/btphone/app/MainActivity;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
