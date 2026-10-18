.class public Lcom/yftech/btphone/lib/bean/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/yftech/btphone/lib/bean/Device;",
        ">;"
    }
.end annotation


# instance fields
.field private mAvrcpState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHfpState:I

.field private mPbapState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mHfpState:I

    .line 28
    iput v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mAvrcpState:I

    .line 30
    iput v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mPbapState:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/yftech/btphone/lib/bean/Device;)I
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/btphone/lib/bean/Device;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/yftech/btphone/lib/bean/Device;

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/bean/Device;->compareTo(Lcom/yftech/btphone/lib/bean/Device;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/yftech/btphone/lib/bean/Device;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    instance-of v2, p1, Lcom/yftech/btphone/lib/bean/Device;

    if-eqz v2, :cond_1

    .line 122
    check-cast p1, Lcom/yftech/btphone/lib/bean/Device;

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/bean/Device;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 123
    :cond_1
    instance-of v2, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public getAvrcpState()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mAvrcpState:I

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getHfpState()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mHfpState:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPbapState()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mPbapState:I

    return v0
.end method

.method public isAvrcpConnected()Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->getAvrcpState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBond()Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/yftech/btphone/lib/bean/Device;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0xc

    .line 88
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->isHfpConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->isAvrcpConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHfpConnected()Z
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->getHfpState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAvrcpState(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/yftech/btphone/lib/bean/Device;->mAvrcpState:I

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/btphone/lib/bean/Device;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setHfpState(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/yftech/btphone/lib/bean/Device;->mHfpState:I

    return-void
.end method

.method public setPbapState(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/yftech/btphone/lib/bean/Device;->mPbapState:I

    return-void
.end method

.method public setProfileState(II)V
    .locals 1

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 42
    invoke-virtual {p0, p2}, Lcom/yftech/btphone/lib/bean/Device;->setHfpState(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne v0, p1, :cond_1

    .line 44
    invoke-virtual {p0, p2}, Lcom/yftech/btphone/lib/bean/Device;->setAvrcpState(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    if-ne v0, p1, :cond_2

    .line 46
    invoke-virtual {p0, p2}, Lcom/yftech/btphone/lib/bean/Device;->setPbapState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",hfp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->getHfpState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",avrcp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->getAvrcpState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pbap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/bean/Device;->getPbapState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
