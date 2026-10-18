.class Lcom/yftech/btphone/proxy/TBoxViewManager$3;
.super Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;
.source "TBoxViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/proxy/TBoxViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/proxy/TBoxViewManager;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$3;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;->onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V

    .line 209
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$3;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getTBoxECallState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    return-void
.end method

.method public onPhoneModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;->onPhoneModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TBoxViewManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
