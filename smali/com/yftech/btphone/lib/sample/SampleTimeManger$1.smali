.class Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;
.super Landroid/database/ContentObserver;
.source "SampleTimeManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/sample/SampleTimeManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/sample/SampleTimeManger;Landroid/os/Handler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 82
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 85
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    iget-object v0, v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",selfChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "time_12_24"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->update12Or24(Landroid/content/Context;)V

    .line 89
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->notifyTimeFormatChanged()V

    :cond_0
    return-void
.end method
