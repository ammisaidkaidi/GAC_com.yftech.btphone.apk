.class public Lcom/yftech/btphone/proxy/CallbackManager;
.super Lcom/yftech/btphone/lib/sample/SampleCallbackManager;
.source "CallbackManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleCallbackManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createContactsCallback(Landroid/content/Context;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/yftech/btphone/callback/ContactsCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/callback/ContactsCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/CallbackManager;->mBluetoothContactsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;

    return-void
.end method

.method public createMediaCallback(Landroid/content/Context;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/yftech/btphone/callback/MediaCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/callback/MediaCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/CallbackManager;->mBluetoothMediaCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;

    return-void
.end method

.method public createPhoneCallCallback(Landroid/content/Context;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/yftech/btphone/callback/PhoneCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/callback/PhoneCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/CallbackManager;->mBluetoothPhoneCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;

    return-void
.end method

.method public createSettingsCallback(Landroid/content/Context;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/yftech/btphone/callback/SettingsCallback;

    invoke-direct {v0, p1}, Lcom/yftech/btphone/callback/SettingsCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/btphone/proxy/CallbackManager;->mBluetoothSettingsCallback:Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;

    return-void
.end method
