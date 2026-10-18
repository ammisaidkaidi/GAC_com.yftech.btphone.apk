.class Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/yftech/btphone/lib/sample/SampleTimeManger;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 98
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    iget-object v0, v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->notifyLanguageChanged()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    iget-object p2, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->update12Or24(Landroid/content/Context;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;->this$0:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->notifyTimeZoneChanged()V

    :cond_1
    :goto_0
    return-void
.end method
