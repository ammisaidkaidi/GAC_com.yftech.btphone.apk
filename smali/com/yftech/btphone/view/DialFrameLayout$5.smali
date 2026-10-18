.class Lcom/yftech/btphone/view/DialFrameLayout$5;
.super Ljava/lang/Object;
.source "DialFrameLayout.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/view/DialFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/view/DialFrameLayout;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/view/DialFrameLayout;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$5;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout$5;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->logd(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$5;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-static {p1}, Lcom/yftech/btphone/view/DialFrameLayout;->access$200(Lcom/yftech/btphone/view/DialFrameLayout;)Lcom/yftech/btphone/adapter/SearchNumAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$5;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/DialFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/DialFrameLayout;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$5;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-static {p1}, Lcom/yftech/btphone/view/DialFrameLayout;->access$300(Lcom/yftech/btphone/view/DialFrameLayout;)V

    :goto_0
    return-void
.end method
