.class Lcom/yftech/btphone/app/CallActivity$2;
.super Landroid/os/Handler;
.source "CallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/CallActivity;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/CallActivity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/yftech/btphone/app/CallActivity$2;->this$0:Lcom/yftech/btphone/app/CallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v1, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity$2;->this$0:Lcom/yftech/btphone/app/CallActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/yftech/btphone/app/CallActivity;->access$000(Lcom/yftech/btphone/app/CallActivity;Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2001

    .line 269
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity$2;->this$0:Lcom/yftech/btphone/app/CallActivity;

    invoke-virtual {p1}, Lcom/yftech/btphone/app/CallActivity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2003

    .line 271
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity$2;->this$0:Lcom/yftech/btphone/app/CallActivity;

    invoke-virtual {p1}, Lcom/yftech/btphone/app/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/btphone/utils/IntentUtils;->notifyStartPhoneCallActivity(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
