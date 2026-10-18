.class public Lcom/yftech/btphone/utils/BootUtils;
.super Ljava/lang/Object;
.source "BootUtils.java"


# static fields
.field public static final SYS_LAUNCHER_BOOT_COMPLETED:Ljava/lang/String; = "sys.launcher.boot_completed"

.field public static final VENDOR_LAUNCHER_BOOT_COMPLETED:Ljava/lang/String; = "vendor.launcher.boot_completed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBootComplete()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "sys.launcher.boot_completed"

    .line 10
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "vendor.launcher.boot_completed"

    .line 11
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v3
.end method
