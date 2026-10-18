.class public Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SearchFuzzyAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/btphone/bean/ContactBean;",
        "Lcom/yftech/btphone/adapter/NormalViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchFuzzyAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private mNeighbourFriendItemTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchNeighbourFriendItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field

.field private searchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b003a

    .line 56
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 57
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->mSearchNeighbourFriendItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->mSearchNeighbourFriendItemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->mNormalList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/yftech/btphone/adapter/NormalViewHolder;

    check-cast p2, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/ContactBean;)V

    return-void
.end method

.method protected convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f08021d

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff08"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getPinyinName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->searchKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cbindex= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u7ed3\u675findex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SearchFuzzyAdapter"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_1

    .line 73
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0500d6

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p2, v0, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 78
    invoke-virtual {p1, v1, p2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 91
    new-instance v0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter$1;-><init>(Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;)V

    return-object v0
.end method

.method public setNormalData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->mNormalList:Ljava/util/List;

    .line 52
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method public setTotalList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    return-void
.end method
