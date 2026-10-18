.class public Lcom/yftech/btphone/adapter/ContactAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "ContactAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/btphone/bean/ContactBean;",
        "Lcom/yftech/btphone/adapter/NormalViewHolder;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field public static final TPYE_CONTACTS:I = 0x1

.field public static final TPYE_FAV:I


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0b0038

    .line 24
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/yftech/btphone/adapter/ContactAdapter;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/adapter/ContactAdapter;Landroid/view/View;I)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/adapter/ContactAdapter;->setOnItemChildClick(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/yftech/btphone/adapter/NormalViewHolder;

    check-cast p2, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/adapter/ContactAdapter;->convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/ContactBean;)V

    return-void
.end method

.method protected convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 6

    .line 33
    invoke-virtual {p1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f080220

    .line 35
    invoke-virtual {p1, v2, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 37
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f08011a

    const v4, 0x7f08020f

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p1, v4, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 39
    invoke-virtual {p1, v3, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 40
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/btphone/utils/CommonUtils;->getFirstText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v3, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 43
    invoke-virtual {p1, v4, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 46
    :goto_0
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v2

    .line 47
    invoke-virtual {p1, v4}, Lcom/yftech/btphone/adapter/NormalViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 49
    invoke-virtual {p1, v4, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 50
    invoke-virtual {p1, v4, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1, v4, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_1
    const v1, 0x7f080213

    .line 55
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v1, 0x7f0800dc

    .line 57
    invoke-virtual {p1, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/adapter/ContactAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/yftech/btphone/adapter/ContactAdapter$1;-><init>(Lcom/yftech/btphone/adapter/ContactAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget v1, p0, Lcom/yftech/btphone/adapter/ContactAdapter;->mType:I

    const/16 v2, 0x8

    const v3, 0x7f080211

    if-ne v5, v1, :cond_4

    .line 65
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 67
    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getData()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {v0}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 71
    invoke-virtual {p1, v3}, Lcom/yftech/btphone/adapter/NormalViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {p1, v3, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p1, v3, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 80
    invoke-virtual {p1, v3, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 81
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f00a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 83
    :cond_5
    invoke-virtual {p1, v3}, Lcom/yftech/btphone/adapter/NormalViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 97
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {v2}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getHeaderLayoutCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/yftech/btphone/adapter/ContactAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public setType(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/yftech/btphone/adapter/ContactAdapter;->mType:I

    return-void
.end method
