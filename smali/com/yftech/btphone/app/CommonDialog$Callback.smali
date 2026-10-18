.class public interface abstract Lcom/yftech/btphone/app/CommonDialog$Callback;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onClickCentre(Landroid/view/View;Lcom/yftech/btphone/app/CommonDialog;)V
    .locals 0

    .line 153
    invoke-virtual {p2}, Lcom/yftech/btphone/app/CommonDialog;->dismiss()V

    return-void
.end method

.method public onClickLeft(Landroid/view/View;Lcom/yftech/btphone/app/CommonDialog;)V
    .locals 0

    .line 152
    invoke-virtual {p2}, Lcom/yftech/btphone/app/CommonDialog;->dismiss()V

    return-void
.end method

.method public onClickRight(Landroid/view/View;Lcom/yftech/btphone/app/CommonDialog;)V
    .locals 0

    .line 151
    invoke-virtual {p2}, Lcom/yftech/btphone/app/CommonDialog;->dismiss()V

    return-void
.end method
