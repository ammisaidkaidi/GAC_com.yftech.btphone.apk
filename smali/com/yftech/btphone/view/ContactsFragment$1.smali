.class Lcom/yftech/btphone/view/ContactsFragment$1;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;


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

    .line 136
    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 139
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contactAdapter OnItemChildClickListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    invoke-static {p2, p1}, Lcom/yftech/btphone/view/ContactsFragment;->access$000(Lcom/yftech/btphone/view/ContactsFragment;Lcom/yftech/btphone/bean/ContactBean;)V

    .line 142
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/btphone/view/ContactsFragment;->access$102(Lcom/yftech/btphone/view/ContactsFragment;Z)Z

    .line 143
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-static {p1}, Lcom/yftech/btphone/view/ContactsFragment;->access$300(Lcom/yftech/btphone/view/ContactsFragment;)Lcom/yftech/btphone/adapter/ContactAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/yftech/btphone/view/ContactsFragment;->access$202(Lcom/yftech/btphone/view/ContactsFragment;I)I

    .line 144
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastClickPosition:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/btphone/view/ContactsFragment$1;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-static {p3}, Lcom/yftech/btphone/view/ContactsFragment;->access$200(Lcom/yftech/btphone/view/ContactsFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/ContactsFragment;->logd(Ljava/lang/String;)V

    return-void
.end method
