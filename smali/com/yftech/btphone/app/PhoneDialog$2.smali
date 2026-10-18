.class Lcom/yftech/btphone/app/PhoneDialog$2;
.super Ljava/lang/Object;
.source "PhoneDialog.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;


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

    .line 252
    iput-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog$2;->this$0:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPhoneCallMicStateChanged(Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/yftech/btphone/app/PhoneDialog$2;->this$0:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-static {v0, p1}, Lcom/yftech/btphone/app/PhoneDialog;->access$300(Lcom/yftech/btphone/app/PhoneDialog;Z)V

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

    .line 260
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog$2;->this$0:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-static {p1}, Lcom/yftech/btphone/app/PhoneDialog;->access$100(Lcom/yftech/btphone/app/PhoneDialog;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBluetoothPhoneCallStateChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lcom/yftech/btphone/app/PhoneDialog$2;->this$0:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-static {p1}, Lcom/yftech/btphone/app/PhoneDialog;->access$200(Lcom/yftech/btphone/app/PhoneDialog;)Z

    return-void
.end method
