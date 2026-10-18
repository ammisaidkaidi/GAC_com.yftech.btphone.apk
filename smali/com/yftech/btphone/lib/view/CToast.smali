.class public Lcom/yftech/btphone/lib/view/CToast;
.super Ljava/lang/Object;
.source "CToast.java"


# static fields
.field private static mInstance:Lcom/yftech/btphone/lib/view/CToast;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mHide:Ljava/lang/Runnable;

.field private mHorizontalMargin:F

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mParamsType:I

.field private final mShow:Ljava/lang/Runnable;

.field private mTextSize:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mVerticalMargin:F

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManager;

.field private mX:I

.field private mY:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xbb8

    .line 19
    iput v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mDuration:I

    const/16 v0, 0x31

    .line 20
    iput v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mGravity:I

    const/4 v0, -0x2

    .line 22
    iput v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHeight:I

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mParamsType:I

    .line 28
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x1c

    .line 29
    iput v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mTextSize:I

    .line 210
    new-instance v0, Lcom/yftech/btphone/lib/view/CToast$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/view/CToast$1;-><init>(Lcom/yftech/btphone/lib/view/CToast;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mShow:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Lcom/yftech/btphone/lib/view/CToast$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/view/CToast$2;-><init>(Lcom/yftech/btphone/lib/view/CToast;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHide:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/lib/view/CToast;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/btphone/lib/view/CToast;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/lib/view/CToast;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/btphone/lib/view/CToast;->handleHide()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/btphone/lib/view/CToast;
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/btphone/lib/view/CToast;->mInstance:Lcom/yftech/btphone/lib/view/CToast;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/yftech/btphone/lib/view/CToast;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/view/CToast;-><init>()V

    sput-object v0, Lcom/yftech/btphone/lib/view/CToast;->mInstance:Lcom/yftech/btphone/lib/view/CToast;

    .line 37
    :cond_0
    sget-object v0, Lcom/yftech/btphone/lib/view/CToast;->mInstance:Lcom/yftech/btphone/lib/view/CToast;

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mY:I

    return v0
.end method

.method public hide()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hide(I)V
    .locals 1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/CToast;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 223
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    iget v2, p0, Lcom/yftech/btphone/lib/view/CToast;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "sourcehan-sans"

    const/4 v2, 0x0

    .line 228
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iput-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    new-instance v1, Lcom/yftech/btphone/lib/view/CToast$3;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/lib/view/CToast$3;-><init>(Lcom/yftech/btphone/lib/view/CToast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mWM:Landroid/view/WindowManager;

    .line 237
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/CToast;->initParams()V

    return-void
.end method

.method public initParams()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 242
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x88

    .line 244
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 247
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 248
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    .line 249
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 250
    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mParamsType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toast"

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x7

    and-int/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_0

    .line 256
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 258
    :cond_0
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mGravity:I

    const/16 v1, 0x70

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 263
    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 264
    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mVerticalMargin:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 265
    iget v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHorizontalMargin:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    return-void
.end method

.method public setBackground(I)Lcom/yftech/btphone/lib/view/CToast;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-object p0
.end method

.method public setDuration(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mDuration:I

    return-void
.end method

.method public setGravity(III)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mGravity:I

    .line 101
    iput p2, p0, Lcom/yftech/btphone/lib/view/CToast;->mX:I

    .line 102
    iput p3, p0, Lcom/yftech/btphone/lib/view/CToast;->mY:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHeight:I

    .line 107
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/CToast;->initParams()V

    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHorizontalMargin:F

    .line 76
    iput p2, p0, Lcom/yftech/btphone/lib/view/CToast;->mVerticalMargin:F

    return-void
.end method

.method public setParamsType(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mParamsType:I

    .line 136
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/CToast;->initParams()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 140
    iput p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mTextSize:I

    .line 141
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 147
    iput-object p1, p0, Lcom/yftech/btphone/lib/view/CToast;->mTypeface:Landroid/graphics/Typeface;

    .line 149
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    iget v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mDuration:I

    if-lez v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/yftech/btphone/lib/view/CToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yftech/btphone/lib/view/CToast;->mHide:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public show(ILjava/lang/String;I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p2, p0, Lcom/yftech/btphone/lib/view/CToast;->mView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual {p0, p3}, Lcom/yftech/btphone/lib/view/CToast;->setDuration(I)V

    .line 177
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/CToast;->show()V

    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0, p1, p2}, Lcom/yftech/btphone/lib/view/CToast;->show(ILjava/lang/String;I)V

    return-void
.end method
