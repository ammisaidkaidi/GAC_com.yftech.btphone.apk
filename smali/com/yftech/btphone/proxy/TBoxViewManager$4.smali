.class Lcom/yftech/btphone/proxy/TBoxViewManager$4;
.super Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;
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

    .line 215
    iput-object p1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$4;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTBoxEcallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;->onTBoxEcallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    .line 220
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager$4;->this$0:Lcom/yftech/btphone/proxy/TBoxViewManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->access$000(Lcom/yftech/btphone/proxy/TBoxViewManager;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;Z)V

    return-void
.end method
