.class public Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SampleLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mActivityStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SampleLifecycleCallbacks"

    .line 14
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    .line 19
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCallActivityName()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->getCallActivityCls()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContainsActivity(Ljava/lang/String;)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 92
    monitor-exit v0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 95
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isContainsCallActivity()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->getCallActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->isContainsActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->getCallActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onActivityPaused, sendMessageCheckPhoneWindow"

    .line 62
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->getCallActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivitySaveInstanceState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->mActivityStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->log(Ljava/lang/String;)V

    return-void
.end method
