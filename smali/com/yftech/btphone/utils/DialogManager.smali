.class public Lcom/yftech/btphone/utils/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field private static mInstance:Lcom/yftech/btphone/utils/DialogManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DialogManager"

    .line 14
    iput-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private createCommonDialog()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/yftech/btphone/app/CommonDialog;

    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/btphone/app/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/CommonDialog;->show()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/btphone/utils/DialogManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/yftech/btphone/utils/DialogManager;->mInstance:Lcom/yftech/btphone/utils/DialogManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/yftech/btphone/utils/DialogManager;

    invoke-direct {v0}, Lcom/yftech/btphone/utils/DialogManager;-><init>()V

    sput-object v0, Lcom/yftech/btphone/utils/DialogManager;->mInstance:Lcom/yftech/btphone/utils/DialogManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/yftech/btphone/utils/DialogManager;->mInstance:Lcom/yftech/btphone/utils/DialogManager;

    return-object v0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/btphone/app/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showConnectTimeoutDialog(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/yftech/btphone/utils/DialogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectTimeoutDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/yftech/btphone/utils/DialogManager;->createCommonDialog()V

    .line 52
    new-instance v0, Lcom/yftech/btphone/lib/bean/Device;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/bean/Device;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/yftech/btphone/lib/bean/Device;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 54
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/btphone/app/BluetoothApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yftech/btphone/utils/CommonUtils;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f0f009f

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v1, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    new-instance v3, Lcom/yftech/btphone/utils/DialogManager$1;

    invoke-direct {v3, p0}, Lcom/yftech/btphone/utils/DialogManager$1;-><init>(Lcom/yftech/btphone/utils/DialogManager;)V

    invoke-virtual {v1, v4, v0, p1, v3}, Lcom/yftech/btphone/app/CommonDialog;->update(ILjava/lang/String;Ljava/lang/String;Lcom/yftech/btphone/app/CommonDialog$Callback;)V

    .line 60
    iget-object p1, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    iget-object p1, p1, Lcom/yftech/btphone/app/CommonDialog;->tvTitle:Lcom/yftech/btphone/view/FontTextView;

    const-string v0, "source-han-sans-cn-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yftech/btphone/view/FontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    iget-object p1, p0, Lcom/yftech/btphone/utils/DialogManager;->mCommonDialog:Lcom/yftech/btphone/app/CommonDialog;

    iget-object p1, p1, Lcom/yftech/btphone/app/CommonDialog;->btnCentre:Landroid/widget/Button;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
