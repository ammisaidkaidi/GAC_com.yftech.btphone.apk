.class Lcom/yftech/btphone/view/DialFrameLayout$1;
.super Ljava/lang/Object;
.source "DialFrameLayout.java"

# interfaces
.implements Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/view/DialFrameLayout;-><init>(Landroid/content/Context;)V
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

    .line 75
    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$1;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChar(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public inputChanged(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout$1;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-static {v0, p1}, Lcom/yftech/btphone/view/DialFrameLayout;->access$000(Lcom/yftech/btphone/view/DialFrameLayout;Ljava/lang/String;)V

    return-void
.end method
