.class public abstract Lcom/yftech/btphone/lib/base/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private final MSG_SHOW_TIMEOUT:I

.field private final MSG_SHOW_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private count:I

.field private isCanceledOnTouchOutside:Z

.field protected mHandler:Landroid/os/Handler;

.field private mObject:Ljava/lang/Object;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "BaseDialog"

    .line 14
    iput-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->MSG_SHOW_TIMEOUT:I

    const/4 p2, 0x1

    .line 16
    iput p2, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->MSG_SHOW_UPDATE:I

    .line 18
    iput p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->count:I

    .line 20
    iput-boolean p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->isCanceledOnTouchOutside:Z

    .line 22
    new-instance p2, Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;

    invoke-direct {p2, p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog$1;-><init>(Lcom/yftech/btphone/lib/base/dialog/BaseDialog;)V

    iput-object p2, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->getWindowType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method static synthetic access$004(Lcom/yftech/btphone/lib/base/dialog/BaseDialog;)I
    .locals 1

    .line 13
    iget v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->count:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->TAG:Ljava/lang/String;

    const-string v1, "cancel: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->count:I

    .line 127
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->count:I

    .line 136
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mType:I

    return v0
.end method

.method protected abstract getWindowType()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->updateAttributes(Landroid/app/Dialog;)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",isCanceledOnTouchOutside:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->isCanceledOnTouchOutside:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 65
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->isCanceledOnTouchOutside:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->dismiss()V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    iput-boolean p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->isCanceledOnTouchOutside:Z

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mType:I

    return-void
.end method

.method public show()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show,type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public show(I)V
    .locals 5

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->count:I

    .line 107
    iget-object v1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    iget-object p1, p0, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/dialog/BaseDialog;->show()V

    return-void
.end method

.method protected updateAttributes(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public updateCount(I)V
    .locals 0

    return-void
.end method
