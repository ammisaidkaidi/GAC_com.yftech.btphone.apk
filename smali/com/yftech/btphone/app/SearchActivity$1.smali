.class Lcom/yftech/btphone/app/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/app/SearchActivity;->initView(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/SearchActivity;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/SearchActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yftech/btphone/app/SearchActivity$1;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity$1;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onTextChanged:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/yftech/btphone/app/SearchActivity;->access$000(Lcom/yftech/btphone/app/SearchActivity;Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity$1;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    invoke-static {p2}, Lcom/yftech/btphone/app/SearchActivity;->access$100(Lcom/yftech/btphone/app/SearchActivity;)Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/adapter/SearchFuzzyAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p2, p0, Lcom/yftech/btphone/app/SearchActivity$1;->this$0:Lcom/yftech/btphone/app/SearchActivity;

    iget-object p2, p2, Lcom/yftech/btphone/app/SearchActivity;->ivClear:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
