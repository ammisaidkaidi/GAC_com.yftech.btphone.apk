.class public Lcom/yftech/btphone/adapter/CallLogAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/btphone/bean/CallLogBean;",
        "Lcom/yftech/btphone/adapter/NormalViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final color:I

.field maxLen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0035

    .line 26
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/16 v0, 0xe

    .line 23
    iput v0, p0, Lcom/yftech/btphone/adapter/CallLogAdapter;->maxLen:I

    const v0, 0x7f0500d6

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/btphone/adapter/CallLogAdapter;->color:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/yftech/btphone/adapter/NormalViewHolder;

    check-cast p2, Lcom/yftech/btphone/bean/CallLogBean;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/adapter/CallLogAdapter;->convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/CallLogBean;)V

    return-void
.end method

.method protected convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Lcom/yftech/btphone/bean/CallLogBean;)V
    .locals 9

    .line 39
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getCallType()I

    move-result v0

    const v1, 0x7f080213

    const v2, 0x7f080220

    const v3, 0x7f080222

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 42
    iget v0, p0, Lcom/yftech/btphone/adapter/CallLogAdapter;->color:I

    invoke-virtual {p1, v2, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 43
    iget v0, p0, Lcom/yftech/btphone/adapter/CallLogAdapter;->color:I

    invoke-virtual {p1, v1, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 44
    iget v0, p0, Lcom/yftech/btphone/adapter/CallLogAdapter;->color:I

    invoke-virtual {p1, v3, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 46
    invoke-virtual {p1, v2, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 48
    invoke-virtual {p1, v3, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 51
    :goto_0
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getLetter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v4, 0x7f08011a

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x7f08020f

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1, v7, v6}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 53
    invoke-virtual {p1, v4, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 54
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->getFirstText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1, v4, v6}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 57
    invoke-virtual {p1, v7, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 60
    :goto_1
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getPhoto()[B

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_2

    .line 61
    array-length v8, v0

    if-lez v8, :cond_2

    const-string v5, "TAG"

    const-string v8, "convert: getPhoto getPhoto getPhoto"

    .line 62
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1, v7}, Lcom/yftech/btphone/adapter/NormalViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    .line 65
    invoke-virtual {p1, v7, v4}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 66
    invoke-virtual {p1, v7, v6}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p1, v7, v5}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 71
    :goto_2
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/yftech/btphone/proxy/DataProvider;->formatData(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 72
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 75
    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getCallTimes()I

    move-result v0

    if-le v0, v6, :cond_3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/CallLogBean;->getCallTimes()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual {p1, v3, v4}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_3
    return-void
.end method
