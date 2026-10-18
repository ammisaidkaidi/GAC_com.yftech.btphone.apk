.class Lcom/yftech/btphone/lib/sample/SamplePresenter$3;
.super Ljava/lang/Object;
.source "SamplePresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/sample/SamplePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/sample/SamplePresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/sample/SamplePresenter;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePresenter$3;->this$0:Lcom/yftech/btphone/lib/sample/SamplePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method
