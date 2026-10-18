.class public Lcom/yftech/btphone/proxy/PhoneCallWindowManager;
.super Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;
.source "PhoneCallWindowManager.java"


# instance fields
.field private phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->shouldShowOSD:Z

    return-void
.end method


# virtual methods
.method protected checkFirstIncomingCall(I)Z
    .locals 3

    .line 28
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->isCarlifeForeground()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 29
    iget-boolean v2, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->shouldShowFull:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    return v1

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->checkFirstIncomingCall(I)Z

    move-result p1

    return p1
.end method

.method public getCallActivityCls()Ljava/lang/Class;
    .locals 1

    .line 108
    const-class v0, Lcom/yftech/btphone/app/CallActivity;

    return-object v0
.end method

.method protected handlerPhoneCallWindow(ZZ)V
    .locals 7

    .line 64
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string p2, "handlerPhoneCallWindow: phoneCalls.isEmpty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 67
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/proxy/DataProvider;->isExistValidPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string p2, "handlerPhoneCallWindow: isExistValidPhone false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->isPhoneCallDialogShow()Z

    move-result v1

    .line 71
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/btphone/app/BluetoothApplication;->getCallbackManager()Lcom/yftech/btphone/lib/listener/ICallbackProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/yftech/btphone/lib/listener/ICallbackProxy;->getLifecycleCallbacks()Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;->isContainsCallActivity()Z

    move-result v2

    .line 72
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->getCallActivityCls()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/btphone/lib/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->TAG:Ljava/lang/String;

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

    iget-boolean v6, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->shouldShowOSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",shouldShowFull:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->shouldShowFull:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isActualContainsCallActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->checkFirstPhoneCallWindow(Ljava/util/List;ZZ)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_5

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    .line 77
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->getCallActivityCls()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    :cond_4
    if-nez v1, :cond_8

    .line 81
    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->showPhoneCallDialog()V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_7

    if-eqz v1, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->hidePhoneCallDialog()V

    :cond_6
    if-nez v2, :cond_8

    .line 89
    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->showPhoneCallActivity()V

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    .line 92
    invoke-virtual {p0}, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->showPhoneCallActivity()V

    :cond_8
    :goto_1
    return-void
.end method

.method public hidePhoneCallDialog()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->hidePhoneCallDialog()V

    .line 55
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/PhoneDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/PhoneDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    return-void
.end method

.method public isPhoneCallDialogShow()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/PhoneDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showPhoneCallActivity()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallActivity()V

    .line 102
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/btphone/utils/IntentUtils;->startCallActivity(Landroid/content/Context;Z)V

    return-void
.end method

.method public showPhoneCallDialog()V
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SamplePhoneCallWindowManager;->showPhoneCallDialog()V

    .line 39
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "showDialogCall,isIgnore:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/yftech/btphone/app/PhoneDialog;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/btphone/app/PhoneDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    .line 43
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/PhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x806

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/PhoneDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/yftech/btphone/proxy/PhoneCallWindowManager;->phoneDialog:Lcom/yftech/btphone/app/PhoneDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/PhoneDialog;->show()V

    :cond_1
    return-void
.end method
