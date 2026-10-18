.class public Lcom/yftech/btphone/app/CallActivity;
.super Lcom/yftech/btphone/lib/base/view/MvpActivity;
.source "CallActivity.java"

# interfaces
.implements Lcom/yftech/btphone/contract/ICallView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/btphone/lib/base/view/MvpActivity<",
        "Lcom/yftech/btphone/presenter/PhonePresenter;",
        ">;",
        "Lcom/yftech/btphone/contract/ICallView;"
    }
.end annotation


# static fields
.field private static final ACTIVE_CENTER:I = 0x1

.field private static final ACTIVE_LEFT:I = 0x0

.field private static final ACTIVE_RIGHT:I = 0x2

.field public static final COM_YFTECH_BTPHONE_CALLACTIVITY_CHANGE:Ljava/lang/String; = "com.yftech.btphone.callactivity.change"

.field private static final DELAY_TIME_FINISH:J = 0x3e8L

.field public static final KEY:Ljava/lang/String; = "notifyClose"

.field public static final OPEN:Ljava/lang/String; = "open"

.field private static final UNACTIVE_CENTER:I = 0x4

.field private static final UNACTIVE_LEFT:I = 0x3

.field private static final UNACTIVE_RIGHT:I = 0x5

.field private static final WEIGHT_CENTER:I = 0x1

.field private static final WEIGHT_LEFT:I = 0x0

.field private static final WEIGHT_RIGHT:I = 0x2

.field private static mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private static mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# instance fields
.field private final MSG_DELAY_NOTIFY_CLOSE:I

.field private final MSG_FINISH:I

.field private final MSG_UPDATE_CALL_TIME:I

.field private final TAG:Ljava/lang/String;

.field bottomRoot:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080065
    .end annotation
.end field

.field cbAnswer:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08006f
    .end annotation
.end field

.field cbHangup:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080070
    .end annotation
.end field

.field cbIgnore:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080071
    .end annotation
.end field

.field cbKeyboard:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080072
    .end annotation
.end field

.field cbMute:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080073
    .end annotation
.end field

.field cbPhone:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080074
    .end annotation
.end field

.field flExtend:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800da
    .end annotation
.end field

.field imageViewAnimal:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fb
    .end annotation
.end field

.field imgBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fa
    .end annotation
.end field

.field imgExchange:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fd
    .end annotation
.end field

.field llDetail:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080119
    .end annotation
.end field

.field llKeyboardDetail:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011c
    .end annotation
.end field

.field private mCurrentWeightType:I

.field private mHandler:Landroid/os/Handler;

.field mKeyboardNumView:Lcom/yftech/btphone/view/KeyboardNumView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080109
    .end annotation
.end field

.field peopleRoot:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08017e
    .end annotation
.end field

.field peopleRootEx:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08017f
    .end annotation
.end field

.field tvHead:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020f
    .end annotation
.end field

.field tvHeadEx:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080210
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080213
    .end annotation
.end field

.field tvNameEx:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080214
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080220
    .end annotation
.end field

.field tvTimeEx:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080221
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;-><init>()V

    const-string v0, "CallActivity"

    .line 45
    iput-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x2000

    .line 69
    iput v0, p0, Lcom/yftech/btphone/app/CallActivity;->MSG_UPDATE_CALL_TIME:I

    const/16 v0, 0x2001

    .line 70
    iput v0, p0, Lcom/yftech/btphone/app/CallActivity;->MSG_FINISH:I

    const/16 v0, 0x2003

    .line 71
    iput v0, p0, Lcom/yftech/btphone/app/CallActivity;->MSG_DELAY_NOTIFY_CLOSE:I

    .line 261
    new-instance v0, Lcom/yftech/btphone/app/CallActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/app/CallActivity$2;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    iput-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 599
    iput v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/app/CallActivity;Lcom/yftech/car/bluetooth/model/PhoneCall;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/btphone/app/CallActivity;->updateCallTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    return-void
.end method

.method private changeWeight(I)V
    .locals 2

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeWeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 603
    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/app/CallActivity;->changeWeight(II)V

    return-void
.end method

.method private changeWeight(II)V
    .locals 5

    const/16 v0, 0x1e

    const/16 v1, 0x15

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    .line 652
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 654
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 655
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v4, 0x91

    .line 656
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 657
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 658
    iget-object v3, p0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 661
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 662
    iget-object v2, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 665
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 666
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 667
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    invoke-direct {p0, p2}, Lcom/yftech/btphone/app/CallActivity;->updateBackground(I)V

    .line 670
    invoke-direct {p0, p2}, Lcom/yftech/btphone/app/CallActivity;->updateCallingAnimal(I)V

    goto/16 :goto_2

    .line 609
    :cond_1
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 610
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 612
    :cond_2
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 616
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 617
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 618
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 619
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 621
    invoke-direct {p0, v4}, Lcom/yftech/btphone/app/CallActivity;->updateBackground(I)V

    .line 622
    invoke-direct {p0, v4}, Lcom/yftech/btphone/app/CallActivity;->updateCallingAnimal(I)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, p1

    .line 624
    :goto_1
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->updateBackground(I)V

    if-ne p2, p1, :cond_5

    move p1, v4

    .line 625
    :cond_5
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->updateCallingAnimal(I)V

    goto :goto_2

    .line 630
    :cond_6
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 632
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 633
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 634
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 p2, 0xaf

    .line 635
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 636
    iget-object p2, p0, Lcom/yftech/btphone/app/CallActivity;->llDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 639
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 640
    iget-object p2, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 643
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 644
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 645
    iget-object p2, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    invoke-direct {p0, v3}, Lcom/yftech/btphone/app/CallActivity;->updateBackground(I)V

    .line 648
    invoke-direct {p0, v3}, Lcom/yftech/btphone/app/CallActivity;->updateCallingAnimal(I)V

    :goto_2
    return-void
.end method

.method private initClickAfterAnswer()V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mKeyboardNumView:Lcom/yftech/btphone/view/KeyboardNumView;

    invoke-virtual {v0}, Lcom/yftech/btphone/view/KeyboardNumView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$WwVtRTxnCC7-hnH22htUS2gUs-s;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$WwVtRTxnCC7-hnH22htUS2gUs-s;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$OhW9Nl3PccOC1EPB_3lGPiUsw5w;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$OhW9Nl3PccOC1EPB_3lGPiUsw5w;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 133
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$0gAV2SQmdH3mI1Olc8-6Kg5T2Uw;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$0gAV2SQmdH3mI1Olc8-6Kg5T2Uw;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 139
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$gBLOnfeGGkNGLgACeshECbDu7EI;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$gBLOnfeGGkNGLgACeshECbDu7EI;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 152
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$vMiBseVTLNbdS90BFcpE066AuYo;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$vMiBseVTLNbdS90BFcpE066AuYo;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 161
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$PyVgqU_giL7A8uRVsXz8JyxTL2I;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$PyVgqU_giL7A8uRVsXz8JyxTL2I;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 179
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mPresenter:Lcom/yftech/btphone/lib/base/presenter/IPresenter;

    check-cast v0, Lcom/yftech/btphone/presenter/PhonePresenter;

    invoke-virtual {v0}, Lcom/yftech/btphone/presenter/PhonePresenter;->getCompositeDisposableMgr()Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->imgExchange:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$WUDWysmcft20Gb1zEQ9oMQycWTU;

    invoke-direct {v2, p0}, Lcom/yftech/btphone/app/-$$Lambda$CallActivity$WUDWysmcft20Gb1zEQ9oMQycWTU;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/rx/CompositeDisposableMgr;->addRxBindingSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method private initKeyBoardView()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mKeyboardNumView:Lcom/yftech/btphone/view/KeyboardNumView;

    new-instance v1, Lcom/yftech/btphone/app/CallActivity$1;

    invoke-direct {v1, p0}, Lcom/yftech/btphone/app/CallActivity$1;-><init>(Lcom/yftech/btphone/app/CallActivity;)V

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/view/KeyboardNumView;->setOnInputChangeListener(Lcom/yftech/btphone/view/KeyboardNumView$OnInputChangeListener;)V

    return-void
.end method

.method private removeMessageFinish()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendActivityStateBroadcast2SystemUi(Z)V
    .locals 2

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.btphone.callactivity.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "open"

    .line 219
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendMessageFinish()V
    .locals 4

    .line 419
    invoke-direct {p0}, Lcom/yftech/btphone/app/CallActivity;->removeMessageFinish()V

    .line 420
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2001

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 422
    invoke-static {}, Lcom/yftech/btphone/lib/utils/AppManager;->getAppManager()Lcom/yftech/btphone/lib/utils/AppManager;

    move-result-object v0

    const-class v1, Lcom/yftech/btphone/app/SearchActivity;

    invoke-virtual {v0, v1}, Lcom/yftech/btphone/lib/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/app/SearchActivity;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/yftech/btphone/app/SearchActivity;->checkShouldClose()V

    :cond_0
    return-void
.end method

.method private stopUpdateTime()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateBackground(I)V
    .locals 4

    const v0, 0x7f0c0002

    const v1, 0x7f0c0001

    const/high16 v2, 0x7f0c0000

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const v0, 0x7f0c0030

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 709
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->imgBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private updateCallTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "updateCallTime, phoneCall is null"

    .line 391
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallTime, mCurrentWeightType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",flag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneCall:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 397
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 402
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getCallingTime(Lcom/yftech/car/bluetooth/model/PhoneCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvTime:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getCallingTime(Lcom/yftech/car/bluetooth/model/PhoneCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 408
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 410
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateCallingAnimal(I)V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    const/16 v3, 0x51

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    .line 731
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x55

    .line 728
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 724
    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x53

    .line 720
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 734
    :goto_0
    iget-object v2, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-le p1, v1, :cond_5

    .line 736
    sget-object p1, Lcom/yftech/btphone/app/CallActivity;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_4

    const p1, 0x7f07005a

    .line 737
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    sput-object p1, Lcom/yftech/btphone/app/CallActivity;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 739
    :cond_4
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    sget-object v0, Lcom/yftech/btphone/app/CallActivity;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    sget-object p1, Lcom/yftech/btphone/app/CallActivity;->mWaitAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 742
    :cond_5
    sget-object p1, Lcom/yftech/btphone/app/CallActivity;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_6

    const p1, 0x7f070059

    .line 743
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    sput-object p1, Lcom/yftech/btphone/app/CallActivity;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 745
    :cond_6
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    sget-object v0, Lcom/yftech/btphone/app/CallActivity;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    sget-object p1, Lcom/yftech/btphone/app/CallActivity;->mActiveAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_1
    return-void
.end method

.method private updateKeyboard(Z)V
    .locals 3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateKeyboard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->llKeyboardDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->hasMulPhoneCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_0
    iget p1, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->changeWeight(I)V

    .line 367
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->mKeyboardNumView:Lcom/yftech/btphone/view/KeyboardNumView;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/KeyboardNumView;->requestFocusEdit()V

    .line 369
    iget p1, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    if-ne v2, p1, :cond_3

    const/4 p1, 0x2

    .line 370
    iput p1, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    .line 371
    iget p1, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->changeWeight(I)V

    goto :goto_1

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->llKeyboardDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->hasMulPhoneCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 378
    :cond_2
    iput v2, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    .line 379
    invoke-direct {p0, v2}, Lcom/yftech/btphone/app/CallActivity;->changeWeight(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updatePhoneCallDetail(Lcom/yftech/car/bluetooth/model/PhoneCall;)V
    .locals 6

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneCallDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->getNumberWithSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->tvName:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->getFirstText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 452
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/proxy/DataProvider;->findContacts(Lcom/yftech/car/bluetooth/model/PhoneCall;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->tvHead:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    .line 457
    :cond_2
    invoke-direct {p0}, Lcom/yftech/btphone/app/CallActivity;->stopUpdateTime()V

    .line 458
    invoke-direct {p0}, Lcom/yftech/btphone/app/CallActivity;->removeMessageFinish()V

    .line 460
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 462
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v3, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    goto/16 :goto_2

    .line 526
    :cond_3
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 536
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 537
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTime:Landroid/widget/TextView;

    const v0, 0x7f0f001c

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-direct {p0}, Lcom/yftech/btphone/app/CallActivity;->sendMessageFinish()V

    goto/16 :goto_2

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 511
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallMicEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallMicStateChanged(Z)V

    .line 514
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallAudioEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallAudioStateChanged(Z)V

    .line 516
    invoke-direct {p0, p1, v3}, Lcom/yftech/btphone/app/CallActivity;->updateCallTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    goto/16 :goto_2

    .line 521
    :cond_5
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 483
    :cond_6
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTime:Landroid/widget/TextView;

    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 489
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 490
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 492
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 493
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 495
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 466
    :cond_7
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTime:Landroid/widget/TextView;

    const v0, 0x7f0f003c

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbHangup:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbAnswer:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 473
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 476
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbIgnore:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updatePhoneCallExtend(Lcom/yftech/car/bluetooth/model/PhoneCall;)V
    .locals 5

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneCallExtend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->flExtend:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/yftech/btphone/app/CallActivity;->llKeyboardDetail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 552
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/yftech/btphone/app/CallActivity;->tvNameEx:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->getFirstText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    const v2, 0x7f070080

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 569
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/btphone/proxy/DataProvider;->findContacts(Lcom/yftech/car/bluetooth/model/PhoneCall;)Lcom/yftech/btphone/bean/ContactBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v2, p0, Lcom/yftech/btphone/app/CallActivity;->tvHeadEx:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yftech/btphone/bean/ContactBean;->getPhoto()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yftech/btphone/utils/CommonUtils;->setBackground(Landroid/view/View;[B)Z

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->imgExchange:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    const v2, 0x7f0f0044

    invoke-virtual {p0, v2}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    goto :goto_1

    .line 591
    :cond_3
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    const v0, 0x7f0f001c

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 585
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/yftech/btphone/app/CallActivity;->updateCallTime(Lcom/yftech/car/bluetooth/model/PhoneCall;I)V

    goto :goto_1

    .line 588
    :cond_5
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 579
    :cond_6
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 582
    :cond_7
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->tvTimeEx:Landroid/widget/TextView;

    const v0, 0x7f0f003c

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const-string v0, "CallActivity"

    const-string v1, "finish: "

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->sendActivityStateBroadcast2SystemUi(Z)V

    .line 249
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->finish()V

    return-void
.end method

.method protected getViewLayout()I
    .locals 1

    const v0, 0x7f0b001d

    return v0
.end method

.method protected initView(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/yftech/btphone/app/CallActivity;->initKeyBoardView()V

    .line 88
    invoke-direct {p0}, Lcom/yftech/btphone/app/CallActivity;->initClickAfterAnswer()V

    .line 90
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallAudioEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallAudioStateChanged(Z)V

    .line 91
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallMicEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallMicStateChanged(Z)V

    .line 93
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$0$CallActivity(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "CallActivity"

    const-string v0, "initClickAfterAnswer: clicks(tvAnswer)"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->hasMulPhoneCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->acceptNewCallHoldOld()Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->answer()Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$1$CallActivity(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "CallActivity"

    const-string v0, "initClickAfterAnswer: clicks(tvIgnore)"

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->muteRinger()Z

    .line 128
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->showPhoneCallDialog()V

    .line 129
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CallActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$2$CallActivity(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "CallActivity"

    const-string v0, "initClickAfterAnswer: clicks(tvHungup)"

    .line 134
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/app/BluetoothApplication;->hangup(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$3$CallActivity(Lkotlin/Unit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallAudioEnable()Z

    move-result p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicks cbPhone: ,audioEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setPhoneCallAudioEnable(Z)V

    .line 148
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$4$CallActivity(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallMicEnable()Z

    move-result p1

    .line 155
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setPhoneCallMicEnable(Z)Z

    .line 157
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$5$CallActivity(Lkotlin/Unit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->updateKeyboard(Z)V

    return-void
.end method

.method public synthetic lambda$initClickAfterAnswer$6$CallActivity(Lkotlin/Unit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initClickAfterAnswer: clicks(imgExchange),mCurrentWeightType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->hasMulPhoneCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    iget p1, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    goto :goto_0

    .line 186
    :cond_0
    iput v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    .line 189
    :goto_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/btphone/proxy/DataProvider;->getStatePhoneCall(I)Lcom/yftech/car/bluetooth/model/PhoneCall;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->switchPhoneCall()Z

    goto :goto_1

    :cond_1
    const-string p1, "not find PHONE_CALL_STATE_HOLDING "

    .line 192
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onBluetoothPhoneCallAudioStateChanged(Z)V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothPhoneCallAudioStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->cbPhone:Landroid/widget/Button;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "onBluetoothPhoneCallAudioStateChanged, ignore"

    .line 334
    invoke-virtual {p0, v1}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 340
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->updateKeyboard(Z)V

    .line 341
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 343
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    if-ne v2, p1, :cond_3

    .line 344
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBluetoothPhoneCallMicStateChanged(Z)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallMicStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->cbMute:Landroid/widget/Button;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onBluetoothPhoneCallStateChanged, phoneCalls.isEmpty"

    .line 282
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->logd(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CallActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 287
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 290
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->cbKeyboard:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object p1, p0, Lcom/yftech/btphone/app/CallActivity;->peopleRootEx:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iput v3, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    .line 293
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    .line 294
    invoke-direct {p0, v3, p1}, Lcom/yftech/btphone/app/CallActivity;->changeWeight(II)V

    .line 295
    invoke-direct {p0, v1}, Lcom/yftech/btphone/app/CallActivity;->updatePhoneCallDetail(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    goto :goto_1

    .line 297
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 299
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->updateKeyboard(Z)V

    .line 301
    iget v2, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    const/4 v4, 0x2

    if-ne v3, v2, :cond_2

    .line 302
    iput v4, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    .line 305
    :cond_2
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_3

    iget v2, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    if-ne v4, v2, :cond_3

    .line 306
    iput v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    if-ne v3, v0, :cond_4

    iget v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    if-nez v0, :cond_4

    .line 308
    iput v4, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    .line 311
    :cond_4
    :goto_0
    iget v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->changeWeight(I)V

    .line 313
    iget v0, p0, Lcom/yftech/btphone/app/CallActivity;->mCurrentWeightType:I

    if-nez v0, :cond_5

    .line 314
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->updatePhoneCallDetail(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    .line 315
    invoke-direct {p0, v1}, Lcom/yftech/btphone/app/CallActivity;->updatePhoneCallExtend(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    goto :goto_1

    :cond_5
    if-ne v4, v0, :cond_6

    .line 317
    invoke-direct {p0, v1}, Lcom/yftech/btphone/app/CallActivity;->updatePhoneCallDetail(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/yftech/btphone/app/CallActivity;->updatePhoneCallExtend(Lcom/yftech/car/bluetooth/model/PhoneCall;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->imageViewAnimal:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onPause()V

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->sendActivityStateBroadcast2SystemUi(Z)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 201
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onResume()V

    .line 203
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowFull(Z)V

    .line 204
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unmuteRinger()Z

    .line 206
    invoke-virtual {p0}, Lcom/yftech/btphone/app/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "notifyClose"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume,notifyClose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v0, 0x1

    .line 214
    invoke-direct {p0, v0}, Lcom/yftech/btphone/app/CallActivity;->sendActivityStateBroadcast2SystemUi(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 231
    invoke-super {p0}, Lcom/yftech/btphone/lib/base/view/MvpActivity;->onStop()V

    .line 232
    iget-object v0, p0, Lcom/yftech/btphone/app/CallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
