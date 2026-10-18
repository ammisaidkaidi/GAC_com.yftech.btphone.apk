.class public Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;
.super Ljava/lang/Object;
.source "SamplePhoneCallWindowManager.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;


# instance fields
.field protected final MSG_CHECK_PHONE_WINDOW:I

.field protected final MSG_CHECK_PHONE_WINDOW_EX:I

.field protected TAG:Ljava/lang/String;

.field protected TIME_DELAY_CHECK_WINDOW:I

.field protected TIME_DELAY_CHECK_WINDOW2:I

.field protected mHandler:Landroid/os/Handler;

.field public shouldShowFull:Z

.field public shouldShowOSD:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SamplePhoneCallWindowManager"

    .line 23
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->MSG_CHECK_PHONE_WINDOW:I

    const/4 v1, 0x2

    .line 25
    iput v1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->MSG_CHECK_PHONE_WINDOW_EX:I

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowOSD:Z

    .line 30
    iput-boolean v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowFull:Z

    const/16 v0, 0x1f4

    .line 32
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TIME_DELAY_CHECK_WINDOW:I

    const/16 v0, 0x3e8

    .line 33
    iput v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TIME_DELAY_CHECK_WINDOW2:I

    .line 36
    new-instance v0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager$1;-><init>(Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkFirstIncomingCall(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 207
    iget-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowOSD:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected checkFirstOutgoingCall(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 211
    iget-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowFull:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkFirstPhoneCallWindow(Ljava/util/List;ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->checkFirstIncomingCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowFull:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowOSD:Z

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallActivity()V

    return v2

    :cond_0
    if-nez p2, :cond_1

    .line 179
    iget-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowOSD:Z

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallDialog()V

    :cond_1
    if-eqz p3, :cond_2

    .line 184
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->getCallActivityCls()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    :cond_2
    return v2

    .line 188
    :cond_3
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->checkFirstOutgoingCall(I)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p3, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallActivity()V

    :cond_4
    if-eqz p2, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->hidePhoneCallDialog()V

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public getCallActivityCls()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handlerPhoneCallWindow(ZZ)V
    .locals 7

    .line 118
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string p2, "handlerPhoneCallWindow: phoneCalls.isEmpty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->isExistValidPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string p2, "handlerPhoneCallWindow: isExistValidPhone false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->isPhoneCallDialogShow()Z

    move-result v1

    .line 130
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getLifecycleCallbacks()Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->isContainsCallActivity()Z

    move-result v2

    .line 131
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->getCallActivityCls()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/btphone/lib/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlerPhoneCallWindow: isPhoneDialogShow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isContainsCallActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",showOsd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",showActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",shouldShowOSD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowOSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",shouldShowFull:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowFull:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isActualContainsCallActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->checkFirstPhoneCallWindow(Ljava/util/List;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_6

    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 148
    :cond_4
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->getCallActivityCls()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    :cond_5
    if-nez v1, :cond_9

    .line 151
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallDialog()V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    if-eqz v1, :cond_7

    .line 155
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->hidePhoneCallDialog()V

    :cond_7
    if-nez v2, :cond_9

    .line 158
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallActivity()V

    goto :goto_1

    :cond_8
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    .line 162
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallActivity()V

    :cond_9
    :goto_1
    return-void
.end method

.method public hidePhoneCallDialog()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "hidePhoneCallDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isPhoneCallDialogShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessageCheckPhoneWindow()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TIME_DELAY_CHECK_WINDOW2:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageCheckPhoneWindow(ZZ)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 66
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 67
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 68
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TIME_DELAY_CHECK_WINDOW:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setShouldShowFull(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowFull:Z

    return-void
.end method

.method public setShouldShowOSD(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->shouldShowOSD:Z

    return-void
.end method

.method public showPhoneCallActivity()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "showPhoneCallActivity: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->sendMessageCheckPhoneWindow()V

    return-void
.end method

.method public showPhoneCallDialog()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "showPhoneCallDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
