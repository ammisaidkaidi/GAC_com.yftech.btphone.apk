.class public interface abstract Lcom/yftech/btphone/lib/listener/IDataProviderProxy;
.super Ljava/lang/Object;
.source "IDataProviderProxy.java"


# virtual methods
.method public abstract deleteUnpairedDevice(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract findPosition(Lcom/yftech/car/bluetooth/model/Contacts;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getCallLogs()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectDevice()Lcom/yftech/btphone/lib/bean/Device;
.end method

.method public abstract getContacts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevice(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/bean/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceFromConnect(Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/btphone/lib/bean/Device;
.end method

.method public abstract getFavorContacts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneCalls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestPairDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getStatePhoneCall(I)Lcom/yftech/car/bluetooth/model/PhoneCall;
.end method

.method public abstract hasMulPhoneCall()Z
.end method

.method public abstract init()V
.end method

.method public abstract initPhoneCall()V
.end method

.method public abstract isCarlifeForeground()Z
.end method

.method public abstract isExistValidPhone()Z
.end method

.method public abstract isSameContacts(Lcom/yftech/car/bluetooth/model/Contacts;Lcom/yftech/car/bluetooth/model/Contacts;)Z
.end method

.method public abstract resetData()V
.end method

.method public abstract resetHfpData()V
.end method

.method public abstract setForegroundCls(Ljava/lang/String;)V
.end method

.method public abstract setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract updateCallLog(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateContactsList(Lcom/yftech/car/bluetooth/model/Contacts;Z)I
.end method

.method public abstract updateContactsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDevices(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateFavorContactsList(Lcom/yftech/car/bluetooth/model/Contacts;Z)I
.end method

.method public abstract updatePhoneCalls(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;
.end method
