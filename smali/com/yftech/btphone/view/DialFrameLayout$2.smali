.class Lcom/yftech/btphone/view/DialFrameLayout$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "DialFrameLayout.java"


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
.method constructor <init>(Lcom/yftech/btphone/view/DialFrameLayout;Landroid/content/Context;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$2;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/yftech/btphone/view/DialFrameLayout$2;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-static {v0}, Lcom/yftech/btphone/view/DialFrameLayout;->access$100(Lcom/yftech/btphone/view/DialFrameLayout;)Z

    move-result v0

    return v0
.end method
