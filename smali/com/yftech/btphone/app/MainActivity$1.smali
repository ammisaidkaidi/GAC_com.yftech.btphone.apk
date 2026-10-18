.class Lcom/yftech/btphone/app/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/app/MainActivity;->initView(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/MainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/MainActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yftech/btphone/app/MainActivity$1;->this$0:Lcom/yftech/btphone/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity$1;->this$0:Lcom/yftech/btphone/app/MainActivity;

    const-string v0, "tabGroup onCheckedChanged"

    invoke-static {p1, v0}, Lcom/yftech/btphone/app/MainActivity;->access$000(Lcom/yftech/btphone/app/MainActivity;Ljava/lang/String;)V

    const p1, 0x7f0801d9

    if-ne p2, p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity$1;->this$0:Lcom/yftech/btphone/app/MainActivity;

    sget p2, Lcom/yftech/btphone/app/Config$TabType;->DIAL:I

    invoke-static {p1, p2}, Lcom/yftech/btphone/app/MainActivity;->access$102(Lcom/yftech/btphone/app/MainActivity;I)I

    goto :goto_0

    :cond_0
    const p1, 0x7f0801d8

    if-ne p2, p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity$1;->this$0:Lcom/yftech/btphone/app/MainActivity;

    sget p2, Lcom/yftech/btphone/app/Config$TabType;->CONTACTS:I

    invoke-static {p1, p2}, Lcom/yftech/btphone/app/MainActivity;->access$102(Lcom/yftech/btphone/app/MainActivity;I)I

    .line 68
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/app/MainActivity$1;->this$0:Lcom/yftech/btphone/app/MainActivity;

    invoke-static {p1}, Lcom/yftech/btphone/app/MainActivity;->access$100(Lcom/yftech/btphone/app/MainActivity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/btphone/app/MainActivity;->access$200(Lcom/yftech/btphone/app/MainActivity;I)V

    return-void
.end method
