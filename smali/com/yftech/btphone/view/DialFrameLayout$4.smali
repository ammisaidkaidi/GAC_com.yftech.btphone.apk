.class Lcom/yftech/btphone/view/DialFrameLayout$4;
.super Ljava/lang/Object;
.source "DialFrameLayout.java"

# interfaces
.implements Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/view/DialFrameLayout;->setPresenter(Lcom/yftech/btphone/lib/base/presenter/IPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/view/DialFrameLayout;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/view/DialFrameLayout;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/yftech/btphone/view/DialFrameLayout$4;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/view/DialFrameLayout$4;->this$0:Lcom/yftech/btphone/view/DialFrameLayout;

    iget-object v1, v1, Lcom/yftech/btphone/view/DialFrameLayout;->keyBoard:Lcom/yftech/btphone/view/KeyboardNumView;

    invoke-virtual {v1}, Lcom/yftech/btphone/view/KeyboardNumView;->getRealValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/app/BluetoothApplication;->dial(Ljava/lang/String;)Z

    return-void
.end method
