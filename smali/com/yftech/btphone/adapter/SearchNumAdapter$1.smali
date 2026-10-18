.class Lcom/yftech/btphone/adapter/SearchNumAdapter$1;
.super Landroid/widget/Filter;
.source "SearchNumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/adapter/SearchNumAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private filterResults:Landroid/widget/Filter$FilterResults;

.field final synthetic this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/adapter/SearchNumAdapter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 108
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$002(Lcom/yftech/btphone/adapter/SearchNumAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchKey = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-static {v0}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchNumAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-static {v1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-static {v1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 121
    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-static {v4}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    iget-object v2, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-static {v2}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->access$200(Lcom/yftech/btphone/adapter/SearchNumAdapter;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchKey result size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->setList(Ljava/util/Collection;)V

    .line 141
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchNumAdapter;

    invoke-virtual {p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->notifyDataSetChanged()V

    return-void
.end method
