.class Lcom/yftech/btphone/presenter/PhonePresenter$2;
.super Ljava/lang/Object;
.source "PhonePresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;


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

    .line 45
    iput-object p1, p0, Lcom/yftech/btphone/presenter/PhonePresenter$2;->this$0:Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onBluetoothPhoneCallAudioStateChanged(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/yftech/btphone/presenter/PhonePresenter$2;->this$0:Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/CallActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallAudioStateChanged(Z)V

    return-void
.end method

.method public onBluetoothPhoneCallMicStateChanged(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/yftech/btphone/presenter/PhonePresenter$2;->this$0:Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/CallActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallMicStateChanged(Z)V

    return-void
.end method

.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/yftech/btphone/presenter/PhonePresenter$2;->this$0:Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {p1}, Lcom/yftech/btphone/presenter/PhonePresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/app/CallActivity;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    return-void
.end method
