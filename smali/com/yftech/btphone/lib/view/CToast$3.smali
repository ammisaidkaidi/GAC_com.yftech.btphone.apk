.class Lcom/yftech/btphone/lib/view/CToast$3;
.super Ljava/lang/Object;
.source "CToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/lib/view/CToast;->init(Landroid/content/Context;)V
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

    .line 230
    iput-object p1, p0, Lcom/yftech/btphone/lib/view/CToast$3;->this$0:Lcom/yftech/btphone/lib/view/CToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 233
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/CToast$3;->this$0:Lcom/yftech/btphone/lib/view/CToast;

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/view/CToast;->hide()V

    return-void
.end method
