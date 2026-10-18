.class Lcom/yftech/btphone/lib/sample/SampleWindowManager$1;
.super Landroid/os/Handler;
.source "SampleWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/sample/SampleWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/sample/SampleWindowManager;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/sample/SampleWindowManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager$1;->this$0:Lcom/yftech/btphone/lib/sample/SampleWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 51
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleWindowManager$1;->this$0:Lcom/yftech/btphone/lib/sample/SampleWindowManager;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/lib/sample/SampleWindowManager;->dispatchHandlerMessage(Landroid/os/Message;)V

    return-void
.end method
