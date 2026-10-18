.class public abstract Lcom/yftech/btphone/lib/base/view/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field protected unBinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addOnPhoneActivityListener(Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract getViewLayout()I
.end method

.method protected abstract initView(Landroid/os/Bundle;Landroid/content/Intent;)V
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->TAG:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->supportRequestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->getViewLayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->unBinder:Lbutterknife/Unbinder;

    .line 45
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/btphone/lib/utils/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->initView(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->unBinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->unBinder:Lbutterknife/Unbinder;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/btphone/lib/utils/AppManager;->removeActivity(Landroid/app/Activity;)V

    .line 59
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public removeOnPhoneActivityListener(Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/view/BaseActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
