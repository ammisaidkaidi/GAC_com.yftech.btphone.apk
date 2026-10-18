.class Lcom/yftech/btphone/proxy/TBoxViewManager$2;
.super Ljava/lang/Object;
.source "TBoxViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

.field final synthetic val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/proxy/TBoxViewManager;Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    iput-object p2, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {v0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$100(Lcom/yftech/btphone/proxy/TBoxViewManager;)Lcom/yftech/btphone/app/EcallDialog;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TBoxViewManager"

    const-string v1, "run: mEcallDialog is null"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget-object v2, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$100(Lcom/yftech/btphone/proxy/TBoxViewManager;)Lcom/yftech/btphone/app/EcallDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/app/EcallDialog;->onOutgoing(Landroid/content/Context;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget-object v2, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v1, v2, :cond_2

    .line 106
    iget-object v1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$100(Lcom/yftech/btphone/proxy/TBoxViewManager;)Lcom/yftech/btphone/app/EcallDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/app/EcallDialog;->onEcallActive(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget-object v2, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v1, v2, :cond_3

    .line 108
    iget-object v1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$100(Lcom/yftech/btphone/proxy/TBoxViewManager;)Lcom/yftech/btphone/app/EcallDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/app/EcallDialog;->onEcallOver(Landroid/content/Context;)V

    goto :goto_0

    .line 109
    :cond_3
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget-object v2, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq v1, v2, :cond_4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget-object v2, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v1, v2, :cond_5

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$2;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$100(Lcom/yftech/btphone/proxy/TBoxViewManager;)Lcom/yftech/btphone/app/EcallDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/btphone/app/EcallDialog;->onEcallOther(Landroid/content/Context;)V

    :cond_5
    :goto_0
    return-void
.end method
