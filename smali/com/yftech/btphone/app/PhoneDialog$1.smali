.class Lcom/yftech/btphone/app/PhoneDialog$1;
.super Landroid/os/Handler;
.source "PhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/PhoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/PhoneDialog;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/PhoneDialog;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog$1;->this$0:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 244
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v1, v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog$1;->this$0:Lcom/yftech/btphone/app/PhoneDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/yftech/btphone/app/PhoneDialog;->access$000(Lcom/yftech/btphone/app/PhoneDialog;Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    :cond_0
    return-void
.end method
