.class Lcom/yftech/btphone/adapter/ContactAdapter$1;
.super Ljava/lang/Object;
.source "ContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/adapter/ContactAdapter;->convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/ContactBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/adapter/ContactAdapter;

.field final synthetic val$adapterPosition:I


# direct methods
.method constructor <init>(Lcom/yftech/btphone/adapter/ContactAdapter;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yftech/btphone/adapter/ContactAdapter$1;->this$0:Lcom/yftech/btphone/adapter/ContactAdapter;

    iput p2, p0, Lcom/yftech/btphone/adapter/ContactAdapter$1;->val$adapterPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/yftech/btphone/adapter/ContactAdapter$1;->this$0:Lcom/yftech/btphone/adapter/ContactAdapter;

    iget v1, p0, Lcom/yftech/btphone/adapter/ContactAdapter$1;->val$adapterPosition:I

    invoke-virtual {v0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1}, Lcom/yftech/btphone/adapter/ContactAdapter;->access$000(Lcom/yftech/btphone/adapter/ContactAdapter;Landroid/view/View;I)V

    return-void
.end method
