.class public Lcom/yftech/btphone/app/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/app/Config$TabType;
    }
.end annotation


# static fields
.field public static final ACTION_ECALL_COMMAND:Ljava/lang/String; = "com.yftech.action.ecall.command"

.field public static final KEY_ECALL:Ljava/lang/String; = "state"

.field public static final MAX_CIRCLE_ITEM:I = 0xa

.field public static final MAX_NAME_LENGTH:I = 0xe

.field public static final TYPE_ECALL:I = 0x809

.field public static final TYPE_KEY:Ljava/lang/String; = "enter"

.field public static final TYPE_PHONE:I = 0x806

.field public static final TYPE_TOAST:I = 0x806

.field public static final TimeFormat:Ljava/lang/String; = "%02d:%02d:%02d"

.field public static final TimeFormat2:Ljava/lang/String; = "%02d:%02d"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
