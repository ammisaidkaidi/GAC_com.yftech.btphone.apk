.class public Lcom/yftech/btphone/view/SideIndexBar;
.super Landroid/view/View;
.source "SideIndexBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private bgPaint:Landroid/graphics/Paint;

.field private isShowLetterTip:Z

.field private letterHeight:F

.field private final letterSize:F

.field private final letterSizeTip:F

.field private letterWidth:F

.field private mCY:F

.field private mCurrentIndex:I

.field private mCx:F

.field private mDefaultColor:I

.field private mIndexItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnIndexChangedListener:Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectBgColor:I

.field private mSelectColor:I

.field private singleHeight:F

.field private singleWidth:F

.field private tipCircleR:F


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, "#"

    .line 29
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/view/SideIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/btphone/view/SideIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "SideIndexBar"

    .line 28
    iput-object p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    .line 35
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOrientation:I

    .line 37
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    const/4 p3, -0x1

    .line 39
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    const/4 p3, 0x0

    .line 44
    iput-boolean p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->isShowLetterTip:Z

    const/high16 p3, 0x42400000    # 48.0f

    .line 45
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    const/high16 p3, 0x42dc0000    # 110.0f

    .line 47
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCY:F

    const/high16 p3, 0x41c00000    # 24.0f

    .line 49
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterSize:F

    const/high16 p3, 0x428c0000    # 70.0f

    .line 50
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterSizeTip:F

    const/high16 p3, 0x41e00000    # 28.0f

    .line 52
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    const/high16 v0, 0x41600000    # 14.0f

    .line 53
    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterWidth:F

    .line 55
    iput p3, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    .line 73
    sget-object p3, Lcom/yftech/btphone/R$styleable;->SlideIndexBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawHSimple(Landroid/graphics/Canvas;)V
    .locals 10

    .line 245
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    sget-object v1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleWidth:F

    .line 246
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 249
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    .line 250
    iget v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    iput v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    .line 251
    iget v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    .line 253
    :goto_0
    sget-object v5, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 254
    aget-object v5, v5, v4

    .line 256
    iget-object v6, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 258
    iget-object v6, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 260
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 262
    iget v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleWidth:F

    int-to-float v8, v4

    mul-float/2addr v8, v7

    div-float/2addr v7, v3

    add-float/2addr v8, v7

    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    .line 263
    iget v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    if-ne v7, v4, :cond_0

    div-float v7, v2, v3

    sub-float v7, v6, v7

    .line 265
    iget-object v9, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v7, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 267
    invoke-direct {p0, p1, v5, v4}, Lcom/yftech/btphone/view/SideIndexBar;->drawHWaterSimple(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 270
    :cond_0
    iget-object v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 271
    iget-object v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 273
    :cond_1
    iget-object v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const v9, -0x777778

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    :goto_1
    iget-object v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    iget-object v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawHWaterSimple(Landroid/graphics/Canvas;Ljava/lang/String;I)V
    .locals 3

    .line 282
    iget-boolean v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->isShowLetterTip:Z

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleWidth:F

    int-to-float p3, p3

    mul-float/2addr p3, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 290
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCY:F

    iget v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    div-float v1, v2, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 297
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCY:F

    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVSimple(Landroid/graphics/Canvas;)V
    .locals 10

    .line 164
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getHeight()I

    move-result v0

    sget-object v1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    .line 166
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    float-to-int v0, v1

    int-to-float v0, v0

    .line 167
    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    .line 170
    :cond_0
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    .line 172
    :goto_0
    sget-object v3, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 174
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v4, v3

    .line 177
    iget v3, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v3, v5

    .line 179
    iget v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    int-to-float v6, v2

    mul-float v7, v5, v6

    add-float/2addr v7, v0

    add-float/2addr v7, v4

    .line 181
    sget-object v4, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 183
    iget v8, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    if-ne v8, v2, :cond_1

    mul-float v8, v5, v6

    add-float/2addr v8, v0

    div-float/2addr v5, v1

    .line 187
    iget-object v9, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    iget-boolean v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->isShowLetterTip:Z

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x428c0000    # 70.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectColor:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 195
    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v1

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v8, v5

    .line 196
    iget v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v0

    add-float/2addr v5, v8

    .line 197
    iget v6, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCx:F

    iget-object v8, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41c00000    # 24.0f

    iget v8, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    mul-float/2addr v8, v6

    iget v6, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    div-float/2addr v8, v6

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 206
    :cond_2
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/yftech/btphone/view/SideIndexBar;->mDefaultColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    :goto_1
    iget-object v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private drawVWaterSimple(Landroid/graphics/Canvas;)V
    .locals 8

    .line 213
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    mul-float/2addr v0, v1

    .line 217
    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float v2, v1, v2

    iput v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    .line 219
    iget v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 222
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Lcom/yftech/btphone/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 223
    iget v4, p0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/yftech/btphone/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCx:F

    add-float/2addr v2, v1

    .line 225
    iget v4, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 226
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v3

    add-float/2addr v6, v0

    .line 227
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float v3, v0, v4

    .line 230
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 231
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 232
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 237
    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCx:F

    iget v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    iget-object v3, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawWater(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    .line 402
    iget v1, v0, Lcom/yftech/btphone/view/SideIndexBar;->letterHeight:F

    iput v1, v0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/btphone/view/SideIndexBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/yftech/btphone/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float v2, p2, v2

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/btphone/view/SideIndexBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/yftech/btphone/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    add-float v3, p2, v3

    add-float/2addr v3, v1

    iput v3, v0, Lcom/yftech/btphone/view/SideIndexBar;->mCx:F

    mul-float v3, v1, v1

    .line 415
    iget v4, v0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    mul-float/2addr v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 419
    iget v5, v0, Lcom/yftech/btphone/view/SideIndexBar;->mCx:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v1

    .line 421
    iget v6, v0, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    div-float/2addr v6, v1

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    float-to-double v5, v5

    .line 423
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    .line 424
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    neg-double v9, v9

    .line 425
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    .line 426
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    mul-double/2addr v11, v3

    float-to-double v9, v2

    add-double/2addr v11, v9

    mul-double/2addr v13, v3

    float-to-double v0, v8

    add-double/2addr v13, v0

    mul-double/2addr v15, v3

    add-double/2addr v9, v15

    mul-double/2addr v5, v3

    add-double/2addr v5, v0

    .line 438
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 439
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 440
    invoke-virtual {v0, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    double-to-float v4, v11

    double-to-float v11, v13

    .line 441
    invoke-virtual {v0, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    double-to-float v1, v9

    double-to-float v3, v5

    .line 442
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 443
    invoke-virtual {v0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    move-object/from16 v9, p0

    .line 445
    iget-object v1, v9, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 446
    iget-object v6, v9, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 447
    iget v0, v9, Lcom/yftech/btphone/view/SideIndexBar;->mCx:F

    iget v1, v9, Lcom/yftech/btphone/view/SideIndexBar;->tipCircleR:F

    iget-object v2, v9, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private handlerHMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleWidth:F

    sub-float/2addr p1, v0

    .line 360
    sget-object v1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v1, v1

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",singleHeight="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleWidth:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",touchedIndex="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SideIndexBar"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v1, -0x1

    .line 370
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touchedIndex = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", indexSize = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentIndex="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;

    if-eqz p1, :cond_2

    if-ltz v0, :cond_2

    if-ge v0, v1, :cond_2

    iget p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    if-eq v0, p1, :cond_2

    .line 372
    sget-object p1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    aget-object p1, p1, v0

    .line 373
    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    .line 376
    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;

    invoke-interface {v1, p1, v0}, Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;->onIndexChanged(Ljava/lang/String;I)V

    .line 377
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->invalidate()V

    :cond_2
    return-void
.end method

.method private handlerVMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    sub-float/2addr p1, v0

    .line 337
    sget-object v1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v1, v1

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  singleHeight = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->singleHeight:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " touchedIndex = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SideIndexBar"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v1, -0x1

    .line 345
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touchedIndex = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", indexSize = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentIndex="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;

    if-eqz p1, :cond_2

    if-ltz v0, :cond_2

    if-ge v0, v1, :cond_2

    iget p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    if-eq v0, p1, :cond_2

    .line 347
    sget-object p1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    aget-object p1, p1, v0

    .line 348
    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    .line 351
    iget-object v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;

    invoke-interface {v1, p1, v0}, Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;->onIndexChanged(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->invalidate()V

    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    sget-object v1, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectColor:I

    const-string v0, "#88FFFFFF"

    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mDefaultColor:I

    const v0, 0x7f0500d6

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectBgColor:I

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mDefaultColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    .line 95
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->bgPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    return v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1

    .line 112
    sget-object v0, Lcom/yftech/btphone/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOrientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->drawVSimple(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->drawHSimple(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 313
    :cond_1
    iput-boolean v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->isShowLetterTip:Z

    .line 315
    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOrientation:I

    if-ne v1, v0, :cond_2

    .line 316
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->handlerVMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->handlerHMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    const-string p1, "SideIndexBar"

    const-string v0, "MotionEvent.ACTION_CANCEL"

    .line 323
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-boolean v2, p0, Lcom/yftech/btphone/view/SideIndexBar;->isShowLetterTip:Z

    .line 326
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->invalidate()V

    goto :goto_0

    .line 309
    :cond_4
    invoke-virtual {p0, v2}, Lcom/yftech/btphone/view/SideIndexBar;->playSoundEffect(I)V

    :goto_0
    return v1
.end method

.method public setCurrentIndex(I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->isShowLetterTip:Z

    .line 103
    iput p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    .line 104
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->invalidate()V

    return-void
.end method

.method public setIndexItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mCurrentIndex:I

    .line 125
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mSelectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->setEnabled(Z)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/yftech/btphone/view/SideIndexBar;->mDefaultColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/view/SideIndexBar;->setEnabled(Z)V

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/btphone/view/SideIndexBar;->invalidate()V

    return-void
.end method

.method public setOnIndexChangedListener(Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/btphone/view/SideIndexBar$OnIndexTouchedChangedListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/yftech/btphone/view/SideIndexBar;->mOrientation:I

    return-void
.end method
