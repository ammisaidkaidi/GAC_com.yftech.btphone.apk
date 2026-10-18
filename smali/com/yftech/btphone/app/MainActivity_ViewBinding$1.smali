.class Lcom/yftech/btphone/app/MainActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/app/MainActivity_ViewBinding;-><init>(Lcom/yftech/btphone/app/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/MainActivity_ViewBinding;

.field final synthetic val$target:Lcom/yftech/btphone/app/MainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/MainActivity_ViewBinding;Lcom/yftech/btphone/app/MainActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding$1;->this$0:Lcom/yftech/btphone/app/MainActivity_ViewBinding;

    iput-object p2, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding$1;->val$target:Lcom/yftech/btphone/app/MainActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yftech/btphone/app/MainActivity_ViewBinding$1;->val$target:Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/app/MainActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
