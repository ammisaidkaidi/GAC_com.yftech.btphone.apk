.class public abstract Lcom/yftech/btphone/lib/base/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected contentView:Landroid/view/View;

.field protected mUnbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected findThisFgView(ILjava/lang/Class;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 75
    iget-object p2, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->contentView:Landroid/view/View;

    if-eqz p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findViewInParent(Landroid/view/View;ILjava/lang/Class;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMyTag()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getViewLayout()I
.end method

.method protected abstract initView(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/lib/base/view/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->addOnPhoneActivityListener(Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->getViewLayout()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->contentView:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->contentView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->mUnbinder:Lbutterknife/Unbinder;

    .line 63
    iget-object p1, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->contentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->mUnbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/lib/base/view/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/yftech/btphone/lib/base/view/BaseActivity;->removeOnPhoneActivityListener(Lcom/yftech/btphone/lib/base/view/BaseActivity$OnActivityListener;)V

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFragmentSwitch(Lcom/yftech/btphone/lib/base/fragment/BaseFragment;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFragmentSwitch   fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/yftech/btphone/lib/base/fragment/BaseFragment;->initView(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
