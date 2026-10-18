.class Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager$1;
.super Landroid/os/Handler;
.source "SamplePhoneCallWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager$1;->this$0:Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager$1;->this$0:Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v3, v1}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->handlerPhoneCallWindow(ZZ)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 43
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager$1;->this$0:Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;

    invoke-virtual {p1, v1, v1}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->handlerPhoneCallWindow(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method
