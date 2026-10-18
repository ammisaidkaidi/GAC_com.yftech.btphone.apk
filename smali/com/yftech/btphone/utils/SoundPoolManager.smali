.class public Lcom/yftech/btphone/utils/SoundPoolManager;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"


# static fields
.field private static mInstance:Lcom/yftech/btphone/utils/SoundPoolManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SoundPoolManager"

    .line 10
    iput-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/yftech/btphone/utils/SoundPoolManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/yftech/btphone/utils/SoundPoolManager;->mInstance:Lcom/yftech/btphone/utils/SoundPoolManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/yftech/btphone/utils/SoundPoolManager;

    invoke-direct {v0}, Lcom/yftech/btphone/utils/SoundPoolManager;-><init>()V

    sput-object v0, Lcom/yftech/btphone/utils/SoundPoolManager;->mInstance:Lcom/yftech/btphone/utils/SoundPoolManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/yftech/btphone/utils/SoundPoolManager;->mInstance:Lcom/yftech/btphone/utils/SoundPoolManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    .line 24
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    .line 25
    iget-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mStreamId:I

    return-void
.end method

.method public play()V
    .locals 9

    .line 29
    iget-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->TAG:Ljava/lang/String;

    const-string v1, "play: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v2, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mStreamId:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method public release()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/yftech/btphone/utils/SoundPoolManager;->mStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    return-void
.end method
