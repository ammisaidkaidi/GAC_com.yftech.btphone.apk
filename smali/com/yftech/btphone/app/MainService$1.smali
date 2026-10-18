.class Lcom/yftech/btphone/app/MainService$1;
.super Landroid/database/ContentObserver;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/btphone/app/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/app/MainService;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/app/MainService;Landroid/os/Handler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yftech/btphone/app/MainService$1;->this$0:Lcom/yftech/btphone/app/MainService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 61
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 62
    iget-object p1, p0, Lcom/yftech/btphone/app/MainService$1;->this$0:Lcom/yftech/btphone/app/MainService;

    invoke-static {p1}, Lcom/yftech/btphone/app/MainService;->access$000(Lcom/yftech/btphone/app/MainService;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "car_control_show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "seat_control_show"

    const-string v2, "air_control_show"

    if-eqz p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, v1

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/app/MainService$1;->this$0:Lcom/yftech/btphone/app/MainService;

    invoke-virtual {p1}, Lcom/yftech/btphone/app/MainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/yftech/btphone/app/MainService$1;->this$0:Lcom/yftech/btphone/app/MainService;

    invoke-static {v0}, Lcom/yftech/btphone/app/MainService;->access$000(Lcom/yftech/btphone/app/MainService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 78
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object p1

    const-class v1, Lcom/yftech/btphone/app/CallActivity;

    invoke-virtual {p1, v1}, Lcom/yftech/btphone/lib/utils/AppManager;->finishActivity(Ljava/lang/Class;)V

    .line 79
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    :cond_2
    return-void
.end method
