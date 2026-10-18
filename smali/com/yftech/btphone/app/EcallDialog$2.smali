.class Lcom/yftech/btphone/app/EcallDialog$2;
.super Ljava/lang/Object;
.source "EcallDialog.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/EcallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/EcallDialog;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/EcallDialog;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/yftech/btphone/app/EcallDialog$2;->this$0:Lcom/yftech/btphone/app/EcallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/yftech/btphone/app/EcallDialog$2;->this$0:Lcom/yftech/btphone/app/EcallDialog;

    invoke-static {v0}, Lcom/yftech/btphone/app/EcallDialog;->access$100(Lcom/yftech/btphone/app/EcallDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange,focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return-void
.end method
