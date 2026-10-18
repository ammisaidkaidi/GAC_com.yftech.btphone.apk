.class Lcom/yftech/btphone/view/ContactsFragment$2;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/view/ContactsFragment;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/view/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/view/ContactsFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$2;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$2;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    const-string v0, "click tvPopular"

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$2;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-static {p1}, Lcom/yftech/btphone/view/ContactsFragment;->access$400(Lcom/yftech/btphone/view/ContactsFragment;)V

    return-void
.end method
