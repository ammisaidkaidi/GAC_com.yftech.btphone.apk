.class Lcom/yftech/btphone/presenter/PhonePresenter$1;
.super Ljava/lang/Object;
.source "PhonePresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/presenter/PhonePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/presenter/PhonePresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/presenter/PhonePresenter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/btphone/presenter/PhonePresenter$1;->this$0:Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method
