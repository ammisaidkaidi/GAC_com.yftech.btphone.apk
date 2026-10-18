.class public Lcom/yftech/btphone/adapter/SearchNumAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SearchNumAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/car/bluetooth/model/Contacts;",
        "Lcom/yftech/btphone/adapter/NormalViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchNumAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private mNeighbourFriendItemTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private searchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0035

    .line 48
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->searchKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/btphone/adapter/SearchNumAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->searchKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/btphone/adapter/SearchNumAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/btphone/adapter/SearchNumAdapter;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->filterEx(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static check(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private filterEx(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 150
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/Contacts;->getPinYin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->filterEx(Ljava/lang/String;Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    .line 158
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 159
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 160
    invoke-static {v6}, Lcom/github/promeg/pinyinhelper/Pinyin;->isChinese(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 161
    invoke-static {v6}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 162
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 164
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->filterEx(Ljava/lang/String;Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private filterEx(Ljava/lang/String;Ljava/util/List;Lcom/yftech/car/bluetooth/model/Contacts;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p4}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->getNumberFromLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterEx:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private getNumberFromLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 198
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    const-string v2, "2"

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-gt v2, v3, :cond_1

    const-string v2, "3"

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v3, 0x67

    if-lt v2, v3, :cond_2

    const/16 v3, 0x69

    if-gt v2, v3, :cond_2

    const-string v2, "4"

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v3, 0x6a

    if-lt v2, v3, :cond_3

    const/16 v3, 0x6c

    if-gt v2, v3, :cond_3

    const-string v2, "5"

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v3, 0x6d

    if-lt v2, v3, :cond_4

    const/16 v3, 0x6f

    if-gt v2, v3, :cond_4

    const-string v2, "6"

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/16 v3, 0x70

    if-lt v2, v3, :cond_5

    const/16 v3, 0x73

    if-gt v2, v3, :cond_5

    const-string v2, "7"

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v3, 0x74

    if-lt v2, v3, :cond_6

    const/16 v3, 0x76

    if-gt v2, v3, :cond_6

    const-string v2, "8"

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v3, 0x77

    if-lt v2, v3, :cond_7

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_7

    const-string v2, "9"

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const/16 v3, 0x30

    if-lt v2, v3, :cond_8

    const/16 v3, 0x39

    if-gt v2, v3, :cond_8

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 221
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 241
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    .line 242
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v5, v2

    .line 245
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 246
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v5

    goto :goto_2

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_2
    if-nez v4, :cond_2

    return v0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 225
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/yftech/btphone/adapter/NormalViewHolder;

    check-cast p2, Lcom/yftech/car/bluetooth/model/Contacts;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/car/bluetooth/model/Contacts;)V

    return-void
.end method

.method protected convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/car/bluetooth/model/Contacts;)V
    .locals 7

    .line 54
    invoke-virtual {p2}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 58
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-le v2, v4, :cond_1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const v2, 0x7f080213

    .line 61
    invoke-virtual {p1, v2, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 65
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 67
    :goto_0
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v2

    const v5, 0x7f08011a

    const v6, 0x7f08020f

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {p1, v6, v4}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 69
    invoke-virtual {p1, v5, v3}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 70
    invoke-virtual {p1, v6, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p1, v6, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 73
    invoke-virtual {p1, v5, v4}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 74
    invoke-virtual {p1, v6, v3}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 77
    :goto_1
    invoke-virtual {p2}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-static {p2}, Lcom/yftech/btphone/utils/CommonUtils;->getNumberWithSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->searchKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f080220

    if-nez v1, :cond_5

    .line 85
    iget-object v1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->searchKey:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/yftech/btphone/utils/CommonUtils;->getKeyWithSplit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 89
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0500d6

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v3, v0, v1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    invoke-virtual {p1, v2, v3}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p1, v2, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {p1, v2, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_2
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 107
    new-instance v0, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/adapter/SearchNumAdapter$1;-><init>(Lcom/yftech/btphone/adapter/SearchNumAdapter;)V

    return-object v0
.end method

.method public setTotalList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/adapter/SearchNumAdapter;->mNeighbourFriendItemTotalList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/adapter/SearchNumAdapter;->setList(Ljava/util/Collection;)V

    return-void
.end method
