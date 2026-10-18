.class public Lcom/yftech/btphone/adapter/PhoneAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "PhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/yftech/btphone/adapter/NormalViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContactBean:Lcom/yftech/btphone/bean/ContactBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0b0039

    .line 18
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/btphone/adapter/NormalViewHolder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/adapter/PhoneAdapter;->convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method protected convert(Lcom/yftech/btphone/adapter/NormalViewHolder;Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/yftech/btphone/adapter/PhoneAdapter;->mContactBean:Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {v0}, Lcom/yftech/btphone/bean/ContactBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080217

    invoke-virtual {p1, v1, v0}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 34
    invoke-static {p2}, Lcom/yftech/btphone/utils/CommonUtils;->getNumberWithSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f080216

    .line 35
    invoke-virtual {p1, v0, p2}, Lcom/yftech/btphone/adapter/NormalViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public getContactBean()Lcom/yftech/btphone/bean/ContactBean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/yftech/btphone/adapter/PhoneAdapter;->mContactBean:Lcom/yftech/btphone/bean/ContactBean;

    return-object v0
.end method

.method public setContactBean(Lcom/yftech/btphone/bean/ContactBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/btphone/adapter/PhoneAdapter;->mContactBean:Lcom/yftech/btphone/bean/ContactBean;

    return-void
.end method
