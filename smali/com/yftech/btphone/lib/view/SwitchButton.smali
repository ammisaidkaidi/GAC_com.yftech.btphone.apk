.class public Lcom/yftech/btphone/lib/view/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private bg_off:Landroid/graphics/Bitmap;

.field private bg_on:Landroid/graphics/Bitmap;

.field private listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

.field private mLastTimeClick:J

.field private mSpaceTimeClick:J

.field private nowStatus:Z

.field private slipper_btn_no:Landroid/graphics/Bitmap;

.field private slipper_btn_off:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/btphone/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SwitchButton"

    .line 21
    iput-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    const-wide/16 v1, 0x0

    .line 33
    iput-wide v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    const-wide/16 v1, 0x1f4

    .line 34
    iput-wide v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    .line 47
    sget-object v1, Lcom/yftech/btphone/lib/R$styleable;->MySwitch:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 49
    sget p3, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_off:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 50
    sget v0, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_slipper_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    sget v1, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_slipper_off:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 56
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_off:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 67
    invoke-virtual {p0, p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 143
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTouch: isEnabled false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 150
    iget-wide v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const-string v0, "onClick quickly"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_1
    iput-wide v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    .line 155
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    if-eqz p1, :cond_2

    .line 156
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;->OnChanged(Lcom/yftech/btphone/lib/view/SwitchButton;Z)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 85
    iget-boolean v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 91
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    move v0, v2

    goto :goto_2

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 105
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 106
    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    .line 129
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/view/SwitchButton;->setClickable(Z)V

    return-void
.end method

.method public setOnChangedListener(Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    return-void
.end method

.method public setSpaceTimeClick(J)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    return-void
.end method
