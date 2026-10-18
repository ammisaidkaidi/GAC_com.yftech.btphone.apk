package com.yftech.btphone.lib.sample;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import com.yftech.btphone.lib.listener.ITimeChangedListener;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleTimeManger {
    public static final Uri CONTENT_URI = Uri.parse("content://settings/system");
    protected static SampleTimeManger mInstance;
    protected String TAG = "SampleTimeManger";
    public SimpleDateFormat mTodayFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    public SimpleDateFormat mDateFormatServer = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
    protected SimpleDateFormat mDateFormatTime24 = new SimpleDateFormat("HH:mm", Locale.ENGLISH);
    protected SimpleDateFormat mDateFormatTime12 = new SimpleDateFormat("h:mm a", Locale.ENGLISH);
    protected SimpleDateFormat mDateFormatDate = new SimpleDateFormat("MM/dd", Locale.ENGLISH);
    protected SimpleDateFormat mDateFormatTime = this.mDateFormatTime24;
    protected ArrayList<ITimeChangedListener> mListeners = new ArrayList<>();
    private ContentObserver mContentObserver = new ContentObserver(new Handler()) { // from class: com.yftech.btphone.lib.sample.SampleTimeManger.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            Log.d(SampleTimeManger.this.TAG, "onChange: uri:" + uri + ",selfChange:" + z);
            if (uri.toString().contains("time_12_24")) {
                SampleTimeManger.this.update12Or24(SampleApplication.getInstance());
                SampleTimeManger.this.notifyTimeFormatChanged();
            }
        }
    };
    protected BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.yftech.btphone.lib.sample.SampleTimeManger.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d(SampleTimeManger.this.TAG, "onReceive: " + action);
            if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
                SampleTimeManger.this.notifyLanguageChanged();
            } else if ("android.intent.action.TIMEZONE_CHANGED".equals(action)) {
                SampleTimeManger.this.update12Or24(context);
                SampleTimeManger.this.notifyTimeZoneChanged();
            }
        }
    };

    public static SampleTimeManger getInstance() {
        if (mInstance == null) {
            mInstance = new SampleTimeManger();
        }
        return mInstance;
    }

    public void init(Context context) {
        update12Or24(context);
        registerReceiver(context);
    }

    public void setDateFormat24(SimpleDateFormat simpleDateFormat) {
        this.mDateFormatTime24 = simpleDateFormat;
    }

    public void setDateFormat12(SimpleDateFormat simpleDateFormat) {
        this.mDateFormatTime12 = simpleDateFormat;
    }

    public void setDateFormatDate(SimpleDateFormat simpleDateFormat) {
        this.mDateFormatDate = simpleDateFormat;
    }

    public void registerReceiver(Context context) {
        Log.d(this.TAG, "registerReceiver: ");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        context.registerReceiver(this.mReceiver, intentFilter);
        context.getContentResolver().registerContentObserver(CONTENT_URI, true, this.mContentObserver);
    }

    public void release(Context context) {
        Log.d(this.TAG, "release: ");
        context.unregisterReceiver(this.mReceiver);
        context.getContentResolver().unregisterContentObserver(this.mContentObserver);
    }

    public void addListener(ITimeChangedListener iTimeChangedListener) {
        Log.d(this.TAG, "addListener: " + iTimeChangedListener);
        synchronized (this.mListeners) {
            if (!this.mListeners.contains(iTimeChangedListener)) {
                this.mListeners.add(iTimeChangedListener);
            }
        }
    }

    public void removeListener(ITimeChangedListener iTimeChangedListener) {
        Log.d(this.TAG, "removeListener: " + iTimeChangedListener);
        synchronized (this.mListeners) {
            if (this.mListeners.contains(iTimeChangedListener)) {
                this.mListeners.remove(iTimeChangedListener);
            }
        }
    }

    public void notifyTimeZoneChanged() {
        synchronized (this.mListeners) {
            Iterator<ITimeChangedListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onTimeZoneChanged();
            }
        }
    }

    public void notifyLanguageChanged() {
        synchronized (this.mListeners) {
            Iterator<ITimeChangedListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onLanguageChanged();
            }
        }
    }

    public void notifyTimeFormatChanged() {
        synchronized (this.mListeners) {
            Iterator<ITimeChangedListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onTimeFormatChanged();
            }
        }
    }

    public void update12Or24(Context context) {
        Log.d(this.TAG, "update12Or24");
        if (is24HourFormat(context)) {
            Log.d(this.TAG, "is24HourFormat");
            this.mDateFormatTime = this.mDateFormatTime24;
        } else {
            Log.d(this.TAG, "is12HourFormat");
            this.mDateFormatTime = this.mDateFormatTime12;
        }
    }

    public String getTime(Date date) {
        String format;
        try {
            TimeZone timeZone = TimeZone.getDefault();
            if (!isToday(date)) {
                this.mDateFormatDate.setTimeZone(timeZone);
                format = this.mDateFormatDate.format(date);
            } else {
                this.mDateFormatTime.setTimeZone(timeZone);
                format = this.mDateFormatTime.format(date);
            }
            return format;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public boolean is24HourFormat(Context context) {
        return DateFormat.is24HourFormat(context);
    }

    public boolean isAm() {
        return Calendar.getInstance(Locale.CHINA).get(9) == 0;
    }

    public boolean isToday(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return isToday(strToDateLong(str));
    }

    public boolean isToday(Date date) {
        if (date == null) {
            return false;
        }
        this.mTodayFormat.setTimeZone(TimeZone.getDefault());
        return this.mTodayFormat.format(date).startsWith(this.mTodayFormat.format(new Date()));
    }

    public Date strToDateLong(String str) {
        ParsePosition parsePosition = new ParsePosition(0);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        TimeZone timeZone = TimeZone.getDefault();
        this.mDateFormatServer.setTimeZone(timeZone);
        Date parse = this.mDateFormatServer.parse(str, parsePosition);
        parse.getTime();
        timeZone.getRawOffset();
        try {
            return new Date(this.mDateFormatServer.parse(str).getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            return parse;
        }
    }
}
