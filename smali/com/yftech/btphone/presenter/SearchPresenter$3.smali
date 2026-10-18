.class Lcom/yftech/btphone/presenter/SearchPresenter$3;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/presenter/SearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/presenter/SearchPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/presenter/SearchPresenter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yftech/btphone/presenter/SearchPresenter$3;->this$0:Lcom/yftech/btphone/presenter/SearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yftech/btphone/presenter/SearchPresenter$3;->this$0:Lcom/yftech/btphone/presenter/SearchPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/SearchPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/btphone/app/SearchActivity;->onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
