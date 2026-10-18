.class Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;
.super Landroid/widget/Filter;
.source "SearchFuzzyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private filterResults:Landroid/widget/Filter$FilterResults;

.field final synthetic this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$002(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$102(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;Ljava/util/List;)Ljava/util/List;

    .line 107
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "performFiltering, searchKey:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v0}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchFuzzyAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v0}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$200(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v0}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    return-object p1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$300(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/bean/ContactBean;

    .line 115
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getMobile()Ljava/util/List;

    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, " "

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v1}, Lcom/yftech/btphone/bean/ContactBean;->getPinyinName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v5, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v5}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v3}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v3}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$000(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    iget-object v1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {v1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->filterResults:Landroid/widget/Filter$FilterResults;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$102(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;Ljava/util/List;)Ljava/util/List;

    .line 135
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;->this$0:Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    invoke-static {p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->setList(Ljava/util/Collection;)V

    return-void
.end method
