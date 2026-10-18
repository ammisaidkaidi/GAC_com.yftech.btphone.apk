.class Lcom/yftech/btphone/app/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/app/SearchActivity;->disableCopyAndPaste(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/SearchActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/SearchActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/yftech/btphone/app/SearchActivity$3;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    iput-object p2, p0, Lcom/yftech/btphone/app/SearchActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/yftech/btphone/app/SearchActivity$3;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/yftech/btphone/app/SearchActivity;->access$200(Lcom/yftech/btphone/app/SearchActivity;Landroid/widget/EditText;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
