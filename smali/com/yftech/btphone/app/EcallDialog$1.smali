.class Lcom/yftech/btphone/app/EcallDialog$1;
.super Landroid/os/Handler;
.source "EcallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/EcallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/EcallDialog;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/EcallDialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/yftech/btphone/app/EcallDialog$1;->this$0:Lcom/yftech/btphone/app/EcallDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog$1;->this$0:Lcom/yftech/btphone/app/EcallDialog;

    invoke-static {p1}, Lcom/yftech/btphone/app/EcallDialog;->access$000(Lcom/yftech/btphone/app/EcallDialog;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/yftech/btphone/app/EcallDialog$1;->this$0:Lcom/yftech/btphone/app/EcallDialog;

    invoke-virtual {p1}, Lcom/yftech/btphone/app/EcallDialog;->updateTime()V

    :cond_1
    :goto_0
    return-void
.end method
