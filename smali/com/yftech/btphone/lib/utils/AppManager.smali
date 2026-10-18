.class public Lcom/yftech/btphone/lib/utils/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static instance:Lcom/yftech/btphone/lib/utils/AppManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activityStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppManager"

    .line 18
    iput-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    return-void
.end method

.method public static getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/yftech/btphone/lib/utils/AppManager;->instance:Lcom/yftech/btphone/lib/utils/AppManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/yftech/btphone/lib/utils/AppManager;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/utils/AppManager;-><init>()V

    sput-object v0, Lcom/yftech/btphone/lib/utils/AppManager;->instance:Lcom/yftech/btphone/lib/utils/AppManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/yftech/btphone/lib/utils/AppManager;->instance:Lcom/yftech/btphone/lib/utils/AppManager;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public finishActivity()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 106
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 116
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Landroid/app/Activity;)V

    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/yftech/btphone/lib/utils/AppManager;->TAG:Ljava/lang/String;

    const-string v0, "finishActivity: find none"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finishAllActivity()V
    .locals 1

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/Class;)Landroid/app/Activity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Activity;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public returnToActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/utils/AppManager;->activityStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
