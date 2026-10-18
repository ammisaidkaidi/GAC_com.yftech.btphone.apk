.class public Lcom/yftech/btphone/app/GlobalReceiver;
.super Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;
.source "GlobalReceiver.java"


# static fields
.field private static final KEY_AIR_CONTROL_SHOW:Ljava/lang/String; = "air_control_show"

.field private static final VALUE_AIR_CONTROL_SHOW:Ljava/lang/String; = "isShow"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected exit()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->exit()V

    .line 55
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v0

    const-class v1, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    .line 56
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v0

    const-class v1, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    return-void
.end method

.method protected onActivityStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->onActivityStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "background"

    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getWindowManager()Lcom/yftech/btphone/proxy/WindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/WindowManager;->closeAllToast()V

    .line 26
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getWindowManager()Lcom/yftech/btphone/proxy/WindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/WindowManager;->hideConnectFailed()V

    :cond_0
    const-string p1, "foreground"

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.yftech.yfhome.view.HomeActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.android.systemui.applist.activity.AppListActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    :cond_1
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    const-class p2, Lcom/yftech/btphone/app/MainActivity;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "air_control_show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "isShow"

    .line 38
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/yftech/btphone/app/GlobalReceiver;->TAG:Ljava/lang/String;

    const-string v0, "onReceive: KEY_AIR_CONTROL_SHOW "

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p2

    const-class v0, Lcom/yftech/btphone/app/CallActivity;

    invoke-virtual {p2, v0}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    .line 42
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.yftech.action.ecall.command"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const-string v0, "state"

    .line 45
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 46
    iget-object p2, p0, Lcom/yftech/btphone/app/GlobalReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, ACTION_ECALL_COMMAND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;

    move-result-object p2

    invoke-static {p1}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object p1

    .line 48
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getTBoxECallState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    move-result-object v0

    .line 47
    invoke-virtual {p2, p1, v0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    :cond_1
    :goto_0
    return-void
.end method
