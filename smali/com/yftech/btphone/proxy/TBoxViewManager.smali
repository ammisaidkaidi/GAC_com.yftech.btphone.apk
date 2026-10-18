.class public Lcom/yftech/btphone/proxy/TBoxViewManager;
.super Ljava/lang/Object;
.source "TBoxViewManager.java"


# static fields
.field private static final MSG_DELAY_CHECK:I = 0x1

.field public static final TYPE_BT:I = 0x2

.field public static final TYPE_ECALL:I = 0x1

.field private static mInstance:Lcom/yftech/btphone/proxy/TBoxViewManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

.field private mEcallDialog:Lcom/yftech/btphone/app/EcallDialog;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TBoxViewManager"

    .line 32
    iput-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/yftech/btphone/proxy/TBoxViewManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/proxy/TBoxViewManager$1;-><init>(Lcom/yftech/btphone/proxy/TBoxViewManager;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/yftech/btphone/proxy/TBoxViewManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/proxy/TBoxViewManager$3;-><init>(Lcom/yftech/btphone/proxy/TBoxViewManager;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;

    .line 215
    new-instance v0, Lcom/yftech/btphone/proxy/TBoxViewManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/proxy/TBoxViewManager$4;-><init>(Lcom/yftech/btphone/proxy/TBoxViewManager;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/btphone/proxy/TBoxViewManager;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallStateEx(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/btphone/proxy/TBoxViewManager;)Lcom/yftech/btphone/app/EcallDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mEcallDialog:Lcom/yftech/btphone/app/EcallDialog;

    return-object p0
.end method

.method private enableFunc()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isECallSwitchPresent()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/yftech/btphone/proxy/TBoxViewManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mInstance:Lcom/yftech/btphone/proxy/TBoxViewManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/yftech/btphone/proxy/TBoxViewManager;

    invoke-direct {v0}, Lcom/yftech/btphone/proxy/TBoxViewManager;-><init>()V

    sput-object v0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mInstance:Lcom/yftech/btphone/proxy/TBoxViewManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mInstance:Lcom/yftech/btphone/proxy/TBoxViewManager;

    return-object v0
.end method

.method private getTboxCall()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;
    .locals 3

    .line 287
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getTBoxECallState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->getPhoneCallState()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object v1

    .line 289
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-ne v2, v0, :cond_0

    .line 290
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    :cond_0
    return-object v1
.end method

.method private mutePhone(Z)V
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mutePhone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Lcom/yftech/car/audio/CarAudioManager;->onlyMuteOneStream(IZI)Z

    .line 193
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Lcom/yftech/car/audio/CarAudioManager;->onlyMuteOneStream(IZI)Z

    return-void
.end method

.method private removeMessageDelayCheck()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendMessageDelayCheck()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TBoxViewManager"

    const-string v2, "removeMessageDelayCheck:"

    .line 226
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->removeMessageDelayCheck()V

    .line 229
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateEcallStateEx(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;Z)V
    .locals 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEcallStateEx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCheck:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->enableFunc()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "updateEcallStateEx: enableFunc false"

    .line 246
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-direct {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;-><init>()V

    const/4 v1, 0x4

    .line 251
    iput-byte v1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    const/4 v2, -0x1

    .line 252
    iput-byte v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    .line 254
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->getPhoneCallState()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object v2

    .line 256
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-ne v3, p1, :cond_1

    .line 257
    iput-byte v1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    .line 259
    invoke-virtual {p0, v2, p1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 261
    iput-byte p1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    .line 263
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->sendMessageDelayCheck()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAudio(I)V
    .locals 8

    .line 133
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getTboxCall()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAudio, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ecall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TBoxViewManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->enableFunc()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "checkAudio: enableFunc false"

    .line 136
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 140
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq v4, v0, :cond_2

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq v4, v0, :cond_2

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-ne v3, p1, :cond_4

    if-eqz v0, :cond_3

    .line 148
    invoke-direct {p0, v3}, Lcom/yftech/btphone/proxy/TBoxViewManager;->mutePhone(Z)V

    goto :goto_2

    .line 150
    :cond_3
    invoke-direct {p0, v1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->mutePhone(Z)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ne v4, p1, :cond_5

    if-eqz v0, :cond_5

    .line 154
    invoke-direct {p0, v3}, Lcom/yftech/btphone/proxy/TBoxViewManager;->mutePhone(Z)V

    .line 158
    :cond_5
    :goto_2
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/btphone/app/BluetoothApplication;->getDataProviderManager()Lcom/yftech/btphone/proxy/DataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/btphone/proxy/DataProvider;->getPhoneCalls()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 159
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 164
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/bluetooth/model/PhoneCall;

    const-string v6, "checkAudio: isPhoneCallAudioEnable already false"

    const/4 v7, 0x4

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {v5}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v5

    if-ne v7, v5, :cond_7

    .line 167
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallAudioEnable()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "checkAudio: setPhoneCallAudioEnable false"

    .line 168
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setPhoneCallAudioEnable(Z)V

    goto :goto_3

    .line 171
    :cond_8
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    if-ne v3, p1, :cond_7

    .line 176
    invoke-virtual {v5}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v5

    if-ne v7, v5, :cond_7

    .line 177
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPhoneCallAudioEnable()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "checkAudio: setPhoneCallAudioEnable true"

    .line 178
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setPhoneCallAudioEnable(Z)V

    goto :goto_3

    .line 181
    :cond_a
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    const-string p1, "checkAudio: phone call is null"

    .line 160
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hangup()V
    .locals 2

    const-string v0, "TBoxViewManager"

    const-string v1, "hangup: "

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mEcallDialog:Lcom/yftech/btphone/app/EcallDialog;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/yftech/btphone/app/EcallDialog;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/app/EcallDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mEcallDialog:Lcom/yftech/btphone/app/EcallDialog;

    .line 66
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->registerListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V

    .line 67
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->registerListener(Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;)V

    .line 69
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->getTboxCall()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object p1

    .line 70
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->setMuteForEcall(Z)V

    .line 73
    :cond_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getTBoxECallState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mEcallDialog:Lcom/yftech/btphone/app/EcallDialog;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/yftech/btphone/app/EcallDialog;->release()V

    .line 80
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V

    return-void
.end method

.method public setMuteForEcall(Z)V
    .locals 4

    .line 299
    :try_start_0
    invoke-static {}, Lcom/yftech/btphone/app/BluetoothApplication;->getInstance()Lcom/yftech/btphone/app/BluetoothApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/app/BluetoothApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxViewManager"

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteForEcall, status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", country:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->get()Lcom/yftech/vehicle/sdk/MpuProjectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setMuteForEcall(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEcallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->enableFunc()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "updateEcallState: enableFunc false"

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yftech/btphone/proxy/TBoxViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/btphone/proxy/TBoxViewManager$2;

    invoke-direct {v1, p0, p1}, Lcom/yftech/btphone/proxy/TBoxViewManager$2;-><init>(Lcom/yftech/btphone/proxy/TBoxViewManager;Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEcallStatus, tboxStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", miscStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-ne v0, p2, :cond_0

    .line 279
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 280
    invoke-direct {p0}, Lcom/yftech/btphone/proxy/TBoxViewManager;->removeMessageDelayCheck()V

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/proxy/TBoxViewManager;->updateEcallState(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V

    return-void
.end method
