.class public interface abstract Lcom/yftech/btphone/contract/ISearchView;
.super Ljava/lang/Object;
.source "ISearchView.java"


# virtual methods
.method public abstract onBluetoothContactsListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onBluetoothStateChanged(I)V
.end method
