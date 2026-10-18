.class public abstract Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SampleGlobalReceiver.java"


# static fields
.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field public static final FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"


# instance fields
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SampleGlobalReceiver"

    .line 21
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected exit()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive: finish all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onActivityStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hideConnectFailed()V

    const-string p1, "background"

    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "foreground"

    .line 95
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setForegroundCls(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPairCancel(Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hidePairWindow()V

    return-void
.end method

.method protected onPairRequest(Landroid/content/Intent;)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->showPairWindow(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SampleGlobalReceiver:action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "com.yf.bluetooth.action.pair.cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "com.yf.bluetooth.action.pair.request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "android.activity.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v1, "com.yftech.intent.action.exit.application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "exit.package.name"

    .line 58
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->exit()V

    goto :goto_2

    :cond_2
    const-string p1, "package"

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "class"

    .line 50
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, v0, p2}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->onActivityStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p0, p2}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->onPairCancel(Landroid/content/Intent;)V

    goto :goto_2

    .line 38
    :cond_4
    invoke-virtual {p0, p2}, Lcom/yftech/btphone/lib/sample/SampleGlobalReceiver;->onPairRequest(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67b9ce9c -> :sswitch_5
        -0x19f2a2b2 -> :sswitch_4
        -0xd553507 -> :sswitch_3
        0x2f3d109f -> :sswitch_2
        0x3a480e6a -> :sswitch_1
        0x595c1cb0 -> :sswitch_0
    .end sparse-switch
.end method
