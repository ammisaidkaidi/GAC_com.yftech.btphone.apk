.class Lcom/yftech/btphone/app/ContactsDetailDialog$1;
.super Ljava/lang/Object;
.source "ContactsDetailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/app/ContactsDetailDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/ContactsDetailDialog;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/ContactsDetailDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog$1;->this$0:Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog$1;->this$0:Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-static {p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->access$000(Lcom/yftech/btphone/app/ContactsDetailDialog;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: mLinearLayout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/yftech/btphone/app/ContactsDetailDialog$1;->this$0:Lcom/yftech/btphone/app/ContactsDetailDialog;

    invoke-virtual {p1}, Lcom/yftech/btphone/app/ContactsDetailDialog;->dismiss()V

    return-void
.end method
