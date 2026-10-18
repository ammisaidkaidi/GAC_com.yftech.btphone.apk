.class public Lcom/yftech/btphone/lib/sample/SampleDataProvider;
.super Ljava/lang/Object;
.source "SampleDataProvider.java"

# interfaces
.implements Lcom/yftech/btphone/lib/listener/IDataProviderProxy;


# static fields
.field public static final DEVICE_TYPE_CONNECT:I = 0x2

.field public static final DEVICE_TYPE_PAIRED:I = 0x0

.field public static final DEVICE_TYPE_UNPAIRED:I = 0x1


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mCallLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;"
        }
    .end annotation
.end field

.field protected mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field protected mFavorContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field protected mForegroundCls:Ljava/lang/String;

.field public mPairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/bean/Device;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestPairDevice:Landroid/bluetooth/BluetoothDevice;

.field public mUnpairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/bean/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SampleDataProvider"

    .line 28
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mCallLogs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mRequestPairDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mForegroundCls:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;)Z
    .locals 7

    .line 405
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 409
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 415
    :goto_0
    invoke-direct {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->isContainsFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 416
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_2
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFavorContactsList, add already, contacts:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    .line 421
    :goto_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isContainsFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;)Z
    .locals 5

    .line 428
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 433
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/model/Contacts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/model/Contacts;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public deleteUnpairedDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/bean/Device;

    .line 224
    invoke-virtual {v2, p1}, Lcom/yftech/btphone/lib/bean/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUnpairedDevice, find device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findPosition(Lcom/yftech/car/bluetooth/model/Contacts;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 443
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 444
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/Contacts;

    invoke-virtual {p0, v1, p1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->isSameContacts(Lcom/yftech/car/bluetooth/model/Contacts;Lcom/yftech/car/bluetooth/model/Contacts;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getCallLogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mCallLogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/bean/Device;

    .line 201
    invoke-virtual {v2}, Lcom/yftech/btphone/lib/bean/Device;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    monitor-exit v0

    return-object v2

    .line 205
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectDevice(I)Lcom/yftech/btphone/lib/bean/Device;
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/bean/Device;

    .line 213
    invoke-virtual {v2}, Lcom/yftech/btphone/lib/bean/Device;->getHfpState()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/yftech/btphone/lib/bean/Device;->getAvrcpState()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 214
    :cond_1
    monitor-exit v0

    return-object v2

    .line 217
    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getContacts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDevice(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/bean/Device;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    monitor-enter p1

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    monitor-exit p1

    return-object v0

    :catchall_1
    move-exception v0

    .line 142
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceFromConnect(Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/btphone/lib/bean/Device;
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/bean/Device;

    .line 190
    invoke-virtual {v2}, Lcom/yftech/btphone/lib/bean/Device;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    monitor-exit v0

    return-object v2

    .line 194
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFavorContacts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhoneCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestPairDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mRequestPairDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getStatePhoneCall(I)Lcom/yftech/car/bluetooth/model/PhoneCall;
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 336
    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 337
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 340
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasMulPhoneCall()Z
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->initPhoneCall()V

    .line 57
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updateDevices(ILjava/util/List;)V

    .line 59
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getUnpairedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updateDevices(ILjava/util/List;)V

    return-void
.end method

.method public initPhoneCall()V
    .locals 2

    .line 75
    new-instance v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-direct {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;-><init>()V

    const-string v1, ""

    .line 76
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setDisplayName(Ljava/lang/String;)V

    const-string v1, "10086"

    .line 77
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setCallNumber(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 78
    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->setCallState(I)V

    .line 79
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updatePhoneCalls(Ljava/util/List;)V

    return-void
.end method

.method public isCarlifeForeground()Z
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mForegroundCls:Ljava/lang/String;

    const-string v1, "com.baidu.carlifevehicle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isExistValidPhone()Z
    .locals 5

    .line 313
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 314
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    const-string v2, "isExistValidPhone: BT not STATE_ON !!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/bluetooth/model/PhoneCall;

    const/4 v4, 0x7

    .line 319
    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v3

    if-eq v4, v3, :cond_1

    const/4 v1, 0x1

    .line 320
    monitor-exit v0

    return v1

    .line 323
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSameContacts(Lcom/yftech/car/bluetooth/model/Contacts;Lcom/yftech/car/bluetooth/model/Contacts;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/Contacts;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yftech/car/bluetooth/model/Contacts;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetData()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->resetHfpData()V

    .line 119
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :catchall_0
    move-exception v1

    .line 122
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetHfpData()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    const-string v1, "resetHfpData: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updateContactsList(Ljava/util/List;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updateCallLog(Ljava/util/List;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->updatePhoneCalls(Ljava/util/List;)V

    return-void
.end method

.method public setForegroundCls(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mForegroundCls:Ljava/lang/String;

    return-void
.end method

.method public setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mRequestPairDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public updateCallLog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mCallLogs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 466
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateContactsList(Lcom/yftech/car/bluetooth/model/Contacts;Z)I
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->findPosition(Lcom/yftech/car/bluetooth/model/Contacts;Ljava/util/List;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContactsList, find position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", contacts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/Contacts;

    invoke-virtual {p1, p2}, Lcom/yftech/car/bluetooth/model/Contacts;->setCollect(Z)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContactsList, but not find, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", contacts:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateContactsList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    .line 367
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/Contacts;

    .line 371
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/Contacts;->isCollect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-direct {p0, v1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->addFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;)Z

    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0, v1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->isContainsFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 374
    invoke-virtual {v1, v2}, Lcom/yftech/car/bluetooth/model/Contacts;->setCollect(Z)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactsList, mFavorContacts.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateDevices(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_0

    .line 153
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 155
    new-instance v1, Lcom/yftech/btphone/lib/bean/Device;

    invoke-direct {v1}, Lcom/yftech/btphone/lib/bean/Device;-><init>()V

    .line 156
    invoke-virtual {v1, p2}, Lcom/yftech/btphone/lib/bean/Device;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 157
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, p2, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 158
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, p2, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p2

    .line 159
    invoke-virtual {v1, v3, v2}, Lcom/yftech/btphone/lib/bean/Device;->setProfileState(II)V

    .line 160
    invoke-virtual {v1, v5, p2}, Lcom/yftech/btphone/lib/bean/Device;->setProfileState(II)V

    .line 161
    iget-object p2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    .line 166
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    monitor-enter p1

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_3

    .line 169
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 171
    new-instance v1, Lcom/yftech/btphone/lib/bean/Device;

    invoke-direct {v1}, Lcom/yftech/btphone/lib/bean/Device;-><init>()V

    .line 172
    invoke-virtual {v1, v0}, Lcom/yftech/btphone/lib/bean/Device;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 173
    invoke-virtual {v1}, Lcom/yftech/btphone/lib/bean/Device;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDevices, but device name is null, ignore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_3
    iget-object p2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDevices, unpaired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_4
    :goto_2
    return-void
.end method

.method public updateFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;Z)I
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 390
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->addFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 391
    iget-object p2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 395
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mFavorContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFavorContactsList, but not find, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", contacts:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 401
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updatePhoneCalls(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    .line 298
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    const/4 v2, 0x7

    .line 303
    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 304
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPhoneCalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    const-string p2, "updateProfileState: bluetoothDevice is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProfileState: profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bluetoothDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/btphone/lib/bean/Device;

    .line 260
    invoke-virtual {v3}, Lcom/yftech/btphone/lib/bean/Device;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {v3, p2, p3}, Lcom/yftech/btphone/lib/bean/Device;->setProfileState(II)V

    .line 274
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateProfileState#: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit v1

    return-object v3

    .line 279
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
