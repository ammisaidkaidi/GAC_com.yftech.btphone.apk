.class Lcom/yftech/btphone/presenter/MainPresenter$1;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/ITimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/presenter/MainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/presenter/MainPresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/yftech/btphone/presenter/MainPresenter$1;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageChanged()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$1;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/MainActivity;->onTimeChanged()V

    return-void
.end method

.method public onTimeFormatChanged()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$1;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/MainActivity;->onTimeChanged()V

    return-void
.end method

.method public onTimeZoneChanged()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/yftech/btphone/presenter/MainPresenter$1;->this$0:Lcom/yftech/btphone/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/MainPresenter;->getView()Lcom/yftech/btphone/lib/base/view/IView;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/MainActivity;->onTimeChanged()V

    return-void
.end method
