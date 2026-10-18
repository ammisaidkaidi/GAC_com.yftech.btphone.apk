package com.yftech.btphone.utils;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.yftech.btphone.R;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.app.Config;
import com.yftech.btphone.view.FontTextView;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Calendar;
import java.util.Date;

/* loaded from: /home/user/work/dex/classes.dex */
public class CommonUtils {
    public static final int SPLIT_INDEX_2 = 2;
    public static final int SPLIT_INDEX_3 = 3;
    public static final int SPLIT_INDEX_6 = 6;
    public static final int SPLIT_INDEX_7 = 7;
    public static final int SPLIT_LENGTH_MAX = 11;
    public static final int SPLIT_LENGTH_MIN = 7;
    public static final int WEEK_DAY_NUM = 7;

    private static boolean isEmojiCharacter(char c) {
        return !(c == 0 || c == '\t' || c == '\n' || c == '\r' || (c >= ' ' && c <= 55295) || ((c >= 57344 && c <= 65533) || (c >= 0 && c <= 65535)));
    }

    public static String getFirstText(String str) {
        if (!TextUtils.isEmpty(str)) {
            String substring = str.substring(0, 1);
            if (isLetterOrChinese(substring)) {
                return substring;
            }
        }
        return "";
    }

    public static boolean isLetterOrChinese(String str) {
        return str.matches("^[a-zA-Z一-龥]+$");
    }

    public static boolean containsEmoji(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (isEmojiCharacter(str.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static String subStr(String str, int i, String str2) throws UnsupportedEncodingException {
        if (str == null || "".equals(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length() && i > 0) {
            char charAt = str.charAt(i2);
            if (String.valueOf(charAt).getBytes(StandardCharsets.UTF_8).length > 1) {
                i -= 2;
            } else {
                isEmojiCharacter(charAt);
                i--;
            }
            if (i < 0) {
                break;
            }
            sb.append(charAt);
            i3 = i2;
            i2++;
        }
        i2 = i3;
        if (str.length() - 1 > i2 && !TextUtils.isEmpty(str2)) {
            sb.append(str2);
        }
        return sb.toString();
    }

    public static String getLimitDeviceName(String str) {
        try {
            return subStr(str, 14, "...");
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String getDeviceName(BluetoothDevice bluetoothDevice) {
        String name = bluetoothDevice.getName();
        if (TextUtils.isEmpty(name)) {
            name = bluetoothDevice.getAddress();
        }
        return getLimitDeviceName(name);
    }

    public static String getCallingTime(PhoneCall phoneCall) {
        long elapsedRealtime = (SystemClock.elapsedRealtime() - phoneCall.getCallConnectTime()) / 1000;
        if (elapsedRealtime < 3600) {
            return String.format(Config.TimeFormat2, Long.valueOf((elapsedRealtime / 60) % 60), Long.valueOf(elapsedRealtime % 60));
        }
        long j = elapsedRealtime / 60;
        return String.format(Config.TimeFormat, Long.valueOf(j / 60), Long.valueOf(j % 60), Long.valueOf(elapsedRealtime % 60));
    }

    public static String getNumberWithSplit(String str) {
        int i;
        if (str == null || str.length() == 0) {
            return " ";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        try {
            int i2 = 0;
            if (!str.startsWith("0") || str.startsWith("00")) {
                i = 0;
            } else {
                if (!str.startsWith("01") && !str.startsWith("02")) {
                    i = 4;
                }
                i = 3;
            }
            if (i > 0 && sb.length() > i) {
                sb.insert(i, " ");
                i2 = 1;
            }
            int i3 = i + 7;
            if (str.length() >= i3 && str.length() < i + 11) {
                sb.insert(i + 4 + i2, " ");
                if (str.length() > i + 8) {
                    sb.insert(i + 9 + i2, " ");
                }
            } else if (str.length() >= i + 11) {
                sb.insert(i + 3 + i2, " ");
                int i4 = i2 + 1;
                while (str.length() - i3 > 0) {
                    sb.insert(i4 + i3, " ");
                    i3 += 4;
                    i4++;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    public static String getKeyWithSplit(String str, String str2) {
        int length = str.length();
        if (length < 7) {
            return str2;
        }
        int indexOf = str.trim().replace(" ", "").indexOf(str2);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (length >= 11) {
            while (i < str2.length()) {
                sb.append(str2.charAt(i));
                if (indexOf <= 2 && 2 - indexOf == i) {
                    sb.append(" ");
                }
                if (6 - indexOf == i) {
                    sb.append(" ");
                }
                i++;
            }
        } else {
            while (i < str2.length()) {
                sb.append(str2.charAt(i));
                if (indexOf <= 3 && 3 - indexOf == i) {
                    sb.append(" ");
                }
                if (7 - indexOf == i) {
                    sb.append(" ");
                }
                i++;
            }
        }
        return sb.toString();
    }

    private static Integer getDayNumForYear(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return Integer.valueOf(calendar.get(6));
    }

    public static int getYear() {
        return Calendar.getInstance().get(1);
    }

    public static String getWeekDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        switch (calendar.get(7)) {
            case 1:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_sun);
            case 2:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_mon);
            case 3:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_tue);
            case 4:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_wed);
            case 5:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_thur);
            case 6:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_fri);
            case 7:
                return BluetoothApplication.getInstance().getResources().getString(R.string.name_sat);
            default:
                return "";
        }
    }

    public static boolean isWeekday(Date date) {
        return getDayNumForYear(new Date()).intValue() - getDayNumForYear(date).intValue() <= 7;
    }

    public static boolean isYesterday(Date date) {
        return getDayNumForYear(new Date()).intValue() - getDayNumForYear(date).intValue() == 1;
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String secToTime(long j) {
        if (j <= 0) {
            return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, 0) + ":" + String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, 0);
        }
        long j2 = j / 60;
        if (j2 < 60) {
            return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Long.valueOf(j2)) + ":" + String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Long.valueOf(j % 60));
        }
        long j3 = j2 / 60;
        long j4 = j2 % 60;
        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Long.valueOf(j3)) + ":" + String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Long.valueOf(j4)) + ":" + String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Long.valueOf((j - (3600 * j3)) - (60 * j4)));
    }

    public static boolean setBackground(View view, byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                view.setBackground(new BitmapDrawable(getRoundedCornerBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length), 90.0f)));
                if (view instanceof FontTextView) {
                    ((FontTextView) view).setText("");
                    return true;
                }
                if (!(view instanceof TextView)) {
                    return true;
                }
                ((TextView) view).setText("");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    private static Bitmap getRoundedCornerBitmap(Bitmap bitmap, float f) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = width / 2;
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, width, height);
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }
}
