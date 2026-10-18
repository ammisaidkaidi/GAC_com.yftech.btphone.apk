.class Lcom/yftech/btphone/app/CallActivity$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/app/CallActivity;->initKeyBoardView()V
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

    .line 97
    iput-object p1, p0, Lcom/yftech/btphone/app/CallActivity$1;->this$0:Lcom/yftech/btphone/app/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChar(Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyboardNumView addChar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->sendBluetoothDTMF(Ljava/lang/String;)Z

    return-void
.end method

.method public inputChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
