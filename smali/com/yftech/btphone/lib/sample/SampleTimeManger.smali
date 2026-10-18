.class public Lcom/yftech/btphone/lib/sample/SampleTimeManger;
.super Ljava/lang/Object;
.source "SampleTimeManger.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field protected static mInstance:Lcom/yftech/btphone/lib/sample/SampleTimeManger;


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field protected mDateFormatDate:Ljava/text/SimpleDateFormat;

.field public mDateFormatServer:Ljava/text/SimpleDateFormat;

.field protected mDateFormatTime:Ljava/text/SimpleDateFormat;

.field protected mDateFormatTime12:Ljava/text/SimpleDateFormat;

.field protected mDateFormatTime24:Ljava/text/SimpleDateFormat;

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/listener/ITimeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field public mTodayFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://settings/system"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SampleTimeManger"

    .line 25
    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mTodayFormat:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatServer:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime24:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "h:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime12:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MM/dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatDate:Ljava/text/SimpleDateFormat;

    .line 35
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime24:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger$1;-><init>(Lcom/yftech/btphone/lib/sample/SampleTimeManger;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mContentObserver:Landroid/database/ContentObserver;

    .line 94
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;

    invoke-direct {v0, p0}, Lcom/yftech/btphone/lib/sample/SampleTimeManger$2;-><init>(Lcom/yftech/btphone/lib/sample/SampleTimeManger;)V

    iput-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Lcom/yftech/btphone/lib/sample/SampleTimeManger;
    .locals 1

    .line 43
    sget-object v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mInstance:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    invoke-direct {v0}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;-><init>()V

    sput-object v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mInstance:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    .line 46
    :cond_0
    sget-object v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mInstance:Lcom/yftech/btphone/lib/sample/SampleTimeManger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/yftech/btphone/lib/listener/ITimeChangedListener;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
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

.method public getTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 167
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 171
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->isToday(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->update12Or24(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public is24HourFormat(Landroid/content/Context;)Z
    .locals 0

    .line 193
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isAm()Z
    .locals 2

    .line 201
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x9

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToday(Ljava/lang/String;)Z
    .locals 1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->strToDateLong(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->isToday(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public isToday(Ljava/util/Date;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 225
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mTodayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 228
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mTodayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mTodayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public notifyLanguageChanged()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/ITimeChangedListener;

    .line 138
    invoke-interface {v2}, Lcom/yftech/btphone/lib/listener/ITimeChangedListener;->onLanguageChanged()V

    goto :goto_0

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyTimeFormatChanged()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/ITimeChangedListener;

    .line 146
    invoke-interface {v2}, Lcom/yftech/btphone/lib/listener/ITimeChangedListener;->onTimeFormatChanged()V

    goto :goto_0

    .line 148
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyTimeZoneChanged()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/btphone/lib/listener/ITimeChangedListener;

    .line 130
    invoke-interface {v2}, Lcom/yftech/btphone/lib/listener/ITimeChangedListener;->onTimeZoneChanged()V

    goto :goto_0

    .line 132
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    const-string v1, "release: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public removeListener(Lcom/yftech/btphone/lib/listener/ITimeChangedListener;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
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

.method public setDateFormat12(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime12:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setDateFormat24(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime24:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setDateFormatDate(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatDate:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public strToDateLong(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 253
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatServer:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 265
    iget-object v2, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatServer:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatServer:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 271
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    return-object v0
.end method

.method public update12Or24(Landroid/content/Context;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    const-string v1, "update12Or24"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    const-string v0, "is24HourFormat"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime24:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->TAG:Ljava/lang/String;

    const-string v0, "is12HourFormat"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime12:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/yftech/btphone/lib/sample/SampleTimeManger;->mDateFormatTime:Ljava/text/SimpleDateFormat;

    :goto_0
    return-void
.end method
