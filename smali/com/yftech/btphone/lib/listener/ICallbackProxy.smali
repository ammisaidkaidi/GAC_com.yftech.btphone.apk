.class public interface abstract Lcom/yftech/btphone/lib/listener/ICallbackProxy;
.super Ljava/lang/Object;
.source "ICallbackProxy.java"


# virtual methods
.method public abstract createContactsCallback(Landroid/content/Context;)V
.end method

.method public abstract createLifecycleCallback(Landroid/content/Context;)V
.end method

.method public abstract createMediaCallback(Landroid/content/Context;)V
.end method

.method public abstract createPhoneCallCallback(Landroid/content/Context;)V
.end method

.method public abstract createSettingsCallback(Landroid/content/Context;)V
.end method

.method public abstract getBluetoothContactsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;
.end method

.method public abstract getBluetoothMediaCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;
.end method

.method public abstract getBluetoothPhoneCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;
.end method

.method public abstract getBluetoothSettingsCallback()Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;
.end method

.method public abstract getLifecycleCallbacks()Lcom/yftech/btphone/lib/callback/SampleLifecycleCallbacks;
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract registerCallBack()V
.end method

.method public abstract release(Landroid/app/Application;)V
.end method

.method public abstract unRegisterCallBack()V
.end method
