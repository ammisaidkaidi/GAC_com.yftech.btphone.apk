.class Lcom/yftech/btphone/lib/view/CToast$2;
.super Ljava/lang/Object;
.source "CToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/lib/view/CToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/lib/view/CToast;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/lib/view/CToast;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/yftech/btphone/lib/view/CToast$2;->this$0:Lcom/yftech/btphone/lib/view/CToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast$2;->this$0:Lcom/yftech/btphone/lib/view/CToast;

    invoke-static {v0}, Lcom/yftech/btphone/lib/view/CToast;->access$100(Lcom/yftech/btphone/lib/view/CToast;)V

    return-void
.end method
