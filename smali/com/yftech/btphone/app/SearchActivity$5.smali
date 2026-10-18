.class Lcom/yftech/btphone/app/SearchActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/SearchActivity;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/SearchActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/yftech/btphone/app/SearchActivity$5;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 304
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity$5;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/btphone/app/SearchActivity;->access$300(Lcom/yftech/btphone/app/SearchActivity;Ljava/lang/String;)V

    const-string p1, "key"

    const/4 v0, -0x1

    .line 305
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity$5;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {p1}, Lcom/yftech/btphone/app/SearchActivity;->reset()V

    :cond_0
    return-void
.end method
