.class Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;
.super Landroid/os/Handler;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/base/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/base/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/base/dialog/BaseDialog;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;->this$0:Lcom/yftech/btphone/lib/base/dialog/BaseDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;->this$0:Lcom/yftech/btphone/lib/base/dialog/BaseDialog;

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->onTimeout()V

    goto :goto_0

    .line 29
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 30
    iget-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;->this$0:Lcom/yftech/btphone/lib/base/dialog/BaseDialog;

    iget-object p1, p1, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 31
    iget-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;->this$0:Lcom/yftech/btphone/lib/base/dialog/BaseDialog;

    invoke-static {p1}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->access$004(Lcom/yftech/btphone/lib/base/dialog/BaseDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->updateCount(I)V

    :cond_1
    :goto_0
    return-void
.end method
