.class public Lcom/yftech/btphone/view/KeyboardNumView;
.super Landroid/widget/LinearLayout;
.source "KeyboardNumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;
    }
.end annotation


# static fields
.field private static final NUMBER_KEY:[[Ljava/lang/String;


# instance fields
.field private final ZERO:Ljava/lang/String;

.field private clickable:Z

.field private dividerValue:I

.field protected editText:Landroid/widget/EditText;

.field private imgDel:Landroid/widget/ImageView;

.field private inputHeight:I

.field private keyHeight:I

.field private keyTextSize:F

.field private lastClickTime:J

.field private final mKeyDel:Ljava/lang/String;

.field private maginValue:I

.field onInputChangeListener:Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;

.field private realValue:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "*"

    .line 42
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "4"

    const-string v2, "5"

    const-string v3, "6"

    const-string v4, "#"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "7"

    const-string v2, "8"

    const-string v3, "9"

    const-string v4, "0"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/btphone/view/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/view/KeyboardNumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/btphone/view/KeyboardNumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x5c

    .line 33
    iput p2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->keyHeight:I

    const/high16 p2, 0x42200000    # 40.0f

    .line 37
    iput p2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->keyTextSize:F

    const-string p2, "del"

    .line 38
    iput-object p2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->mKeyDel:Ljava/lang/String;

    const-string p2, "0"

    .line 39
    iput-object p2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->ZERO:Ljava/lang/String;

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 188
    iput-boolean p2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->clickable:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/KeyboardNumView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private addChar(Ljava/lang/String;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->updateRealValue()V

    .line 295
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->onInputChangeListener:Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v0, p1}, Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;->addChar(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->onInputChangeListener:Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;

    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;->inputChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private delete()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->updateRealValue()V

    .line 255
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->onInputChangeListener:Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;

    if-eqz v0, :cond_1

    .line 256
    iget-object v1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;->inputChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private drawEdittextDeleteImg(Landroid/content/Context;)V
    .locals 6

    .line 131
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x14

    .line 134
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, 0x7f0c0006

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b003f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800c8

    .line 139
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    .line 140
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 141
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 142
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 143
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 144
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 145
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 146
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 148
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    const-string v5, "#26ccddff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 150
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 152
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 153
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 155
    iget-object v3, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    sget-object v4, Lcom/yftech/btphone/view/-$$Lambda$KeyboardNumView$U_1-0V0QIEpo9_62dVqyfrmvVEQ;->INSTANCE:Lcom/yftech/btphone/view/-$$Lambda$KeyboardNumView$U_1-0V0QIEpo9_62dVqyfrmvVEQ;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 160
    iget-object v2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    .line 164
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v2, 0x7f070085

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const-string v2, "del"

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 174
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/yftech/btphone/view/KeyboardNumView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initKeyCodeNormal(Landroid/content/Context;)V
    .locals 8

    .line 73
    invoke-virtual {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->removeAllViews()V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/view/KeyboardNumView;->setOrientation(I)V

    .line 78
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/KeyboardNumView;->drawEdittextDeleteImg(Landroid/content/Context;)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x7f0c0020

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/yftech/btphone/view/KeyboardNumView;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    move v3, v2

    .line 86
    :goto_0
    sget-object v4, Lcom/yftech/btphone/view/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 88
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 90
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 91
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v3, :cond_0

    const/4 v6, 0x7

    .line 93
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_0
    const/16 v6, 0x14

    .line 95
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 97
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v2

    .line 99
    :goto_2
    sget-object v6, Lcom/yftech/btphone/view/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 100
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/yftech/btphone/view/KeyboardNumView;->keyHeight:I

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v5, :cond_1

    const/16 v7, 0x9

    .line 102
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_1
    const/4 v7, 0x6

    .line 104
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 107
    :goto_3
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 109
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, -0xff0100

    .line 110
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    iget v6, p0, Lcom/yftech/btphone/view/KeyboardNumView;->keyTextSize:F

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v6, 0x11

    .line 112
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setGravity(I)V

    const v6, 0x7f070084

    .line 113
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    sget-object v6, Lcom/yftech/btphone/view/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v5

    .line 116
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/KeyboardNumView;->initKeyCodeNormal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$drawEdittextDeleteImg$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private updateRealValue()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iget-object v1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteAll()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->updateRealValue()V

    .line 282
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->onInputChangeListener:Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;

    if-eqz v0, :cond_1

    .line 283
    iget-object v1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;->inputChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getRealValue()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFastClick()Z
    .locals 6

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    iget-wide v2, p0, Lcom/yftech/btphone/view/KeyboardNumView;->lastClickTime:J

    sub-long v2, v0, v2

    const/16 v4, 0xc8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 221
    :goto_0
    iput-wide v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->lastClickTime:J

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->clickable:Z

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "del"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->delete()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/KeyboardNumView;->addChar(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "del"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/yftech/btphone/view/KeyboardNumView;->deleteAll()V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "+"

    .line 233
    invoke-direct {p0, p1}, Lcom/yftech/btphone/view/KeyboardNumView;->addChar(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public requestFocusEdit()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public requestFocusEx()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/yftech/btphone/view/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->clickable:Z

    return-void
.end method

.method public setOnInputChangeListener(Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/yftech/btphone/view/KeyboardNumView;->onInputChangeListener:Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;

    return-void
.end method
