.class Lcom/yftech/btphone/proxy/TBoxViewManager$1;
.super Landroid/os/Handler;
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

    .line 39
    iput-object p1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$1;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$1;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getTBoxECallState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$000(Lcom/yftech/btphone/proxy/TBoxViewManager;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;Z)V

    :cond_0
    return-void
.end method
