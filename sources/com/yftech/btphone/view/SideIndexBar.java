package com.yftech.btphone.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.yftech.btphone.R;
import com.yftech.btphone.utils.CommonUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SideIndexBar extends View {
    private static final String[] DEFAULT_INDEX_ITEMS = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#"};
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private String TAG;
    private Paint bgPaint;
    private boolean isShowLetterTip;
    private float letterHeight;
    private final float letterSize;
    private final float letterSizeTip;
    private float letterWidth;
    private float mCY;
    private int mCurrentIndex;
    private float mCx;
    private int mDefaultColor;
    private List<String> mIndexItems;
    private OnIndexTouchedChangedListener mOnIndexChangedListener;
    private int mOrientation;
    private Paint mPaint;
    private int mSelectBgColor;
    private int mSelectColor;
    private float singleHeight;
    private float singleWidth;
    private float tipCircleR;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnIndexTouchedChangedListener {
        void onIndexChanged(String str, int i);
    }

    public SideIndexBar(Context context) {
        this(context, null);
    }

    public SideIndexBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SideIndexBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "SideIndexBar";
        this.mOrientation = 1;
        this.mIndexItems = new ArrayList();
        this.mCurrentIndex = -1;
        this.isShowLetterTip = false;
        this.tipCircleR = 48.0f;
        this.mCY = 110.0f;
        this.letterSize = 24.0f;
        this.letterSizeTip = 70.0f;
        this.letterHeight = 28.0f;
        this.letterWidth = 14.0f;
        this.singleHeight = 28.0f;
        context.obtainStyledAttributes(attributeSet, R.styleable.SlideIndexBar).recycle();
        init(context);
    }

    private void init(Context context) {
        this.mIndexItems = new ArrayList();
        this.mIndexItems.addAll(Arrays.asList(DEFAULT_INDEX_ITEMS));
        this.mSelectColor = -1;
        this.mDefaultColor = Color.parseColor("#88FFFFFF");
        this.mSelectBgColor = context.getColor(R.color.yellowLight);
        this.mPaint = new Paint(1);
        this.mPaint.setTextSize(24.0f);
        this.mPaint.setColor(this.mDefaultColor);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.bgPaint = new Paint();
        this.bgPaint.setStyle(Paint.Style.FILL);
        this.bgPaint.setAntiAlias(true);
        this.bgPaint.setColor(this.mSelectBgColor);
    }

    public void setCurrentIndex(int i) {
        Log.d(this.TAG, "setCurrentIndex: " + i);
        this.isShowLetterTip = false;
        this.mCurrentIndex = i;
        invalidate();
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public int getIndex(String str) {
        return Arrays.asList(DEFAULT_INDEX_ITEMS).indexOf(str);
    }

    public int getCurrentIndex() {
        return this.mCurrentIndex;
    }

    public void setIndexItems(List<String> list) {
        this.mIndexItems.clear();
        if (list != null && !list.isEmpty()) {
            this.mCurrentIndex = -1;
            this.mPaint.setColor(this.mSelectColor);
            this.mIndexItems.addAll(list);
            setEnabled(true);
        } else {
            this.mPaint.setColor(this.mDefaultColor);
            setEnabled(false);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (1 == this.mOrientation) {
            drawVSimple(canvas);
        } else {
            drawHSimple(canvas);
        }
    }

    private void drawVSimple(Canvas canvas) {
        this.singleHeight = getHeight() / (DEFAULT_INDEX_ITEMS.length + 1);
        if (this.singleHeight > this.letterHeight) {
            this.singleHeight = (int) r1;
        }
        float f = (this.singleHeight * 3.0f) / 2.0f;
        for (int i = 0; i < DEFAULT_INDEX_ITEMS.length; i++) {
            Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
            float f2 = ((fontMetrics.descent - fontMetrics.ascent) / 2.0f) - fontMetrics.descent;
            float f3 = (this.letterHeight * 4.0f) / 5.0f;
            float f4 = this.singleHeight;
            float f5 = i;
            float f6 = (f4 * f5) + f + f2;
            String str = DEFAULT_INDEX_ITEMS[i];
            if (this.mCurrentIndex == i) {
                canvas.drawCircle(f3, (f4 * f5) + f, f4 / 2.0f, this.bgPaint);
                if (this.isShowLetterTip) {
                    this.mPaint.setTextSize(70.0f);
                    this.mPaint.setColor(this.mSelectColor);
                    Paint.FontMetrics fontMetrics2 = this.mPaint.getFontMetrics();
                    canvas.drawText(str, this.mCx, (this.singleHeight * f5) + f + (((fontMetrics2.descent - fontMetrics2.ascent) / 2.0f) - fontMetrics2.descent), this.mPaint);
                }
            }
            this.mPaint.setTextSize((this.singleHeight * 24.0f) / this.letterHeight);
            if (this.mIndexItems.contains(str)) {
                this.mPaint.setColor(this.mSelectColor);
            } else {
                this.mPaint.setColor(this.mDefaultColor);
            }
            canvas.drawText(str, f3, f6, this.mPaint);
        }
    }

    private void drawVWaterSimple(Canvas canvas) {
        float f = this.mCurrentIndex * this.singleHeight;
        float f2 = this.letterHeight;
        this.tipCircleR = f2 - 5.0f;
        float f3 = this.tipCircleR * 2.0f;
        float dp2px = f2 + CommonUtils.dp2px(getContext(), 6.0f);
        this.mCx = this.letterHeight + CommonUtils.dp2px(getContext(), 6.0f) + f3;
        float f4 = (f3 + dp2px) - (this.tipCircleR / 2.0f);
        float sqrt = ((((float) Math.sqrt(3.0d)) * this.tipCircleR) / 2.0f) + f;
        float sqrt2 = f - ((((float) Math.sqrt(3.0d)) * this.tipCircleR) / 2.0f);
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        path.moveTo(dp2px, f);
        path.lineTo(f4, sqrt);
        path.lineTo(f4, sqrt2);
        path.lineTo(dp2px, f);
        path.close();
        canvas.drawPath(path, this.bgPaint);
        canvas.drawCircle(this.mCx, f, this.tipCircleR, this.bgPaint);
    }

    private void drawHSimple(Canvas canvas) {
        this.singleWidth = (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 1.0f) / (DEFAULT_INDEX_ITEMS.length + 1);
        this.mPaint.setTextSize(24.0f);
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        this.singleHeight = fontMetrics.descent - fontMetrics.ascent;
        this.letterHeight = this.singleHeight;
        float f = this.singleWidth / 2.0f;
        int i = 0;
        while (true) {
            String[] strArr = DEFAULT_INDEX_ITEMS;
            if (i >= strArr.length) {
                return;
            }
            String str = strArr[i];
            this.mPaint.setTextSize(24.0f);
            float f2 = fontMetrics.descent;
            float f3 = fontMetrics.ascent;
            float f4 = fontMetrics.descent;
            this.mPaint.measureText(str);
            float height = getHeight() - getPaddingBottom();
            float f5 = this.singleWidth;
            float paddingLeft = (i * f5) + (f5 / 2.0f) + getPaddingLeft();
            if (this.mCurrentIndex == i) {
                canvas.drawCircle(paddingLeft, height - (f / 2.0f), f, this.bgPaint);
                drawHWaterSimple(canvas, str, i);
            }
            if (this.mIndexItems.contains(str)) {
                this.mPaint.setColor(-1);
            } else {
                this.mPaint.setColor(-7829368);
            }
            this.mPaint.setTextSize(24.0f);
            canvas.drawText(str, paddingLeft, height, this.mPaint);
            i++;
        }
    }

    private void drawHWaterSimple(Canvas canvas, String str, int i) {
        if (this.isShowLetterTip) {
            this.mPaint.setColor(this.mSelectColor);
            this.mPaint.setTextSize(70.0f);
            float f = this.singleWidth;
            float paddingLeft = (i * f) + (f / 2.0f) + getPaddingLeft();
            float f2 = this.mCY;
            float f3 = this.tipCircleR;
            canvas.drawCircle(paddingLeft, f2 - (f3 / 2.0f), f3, this.bgPaint);
            canvas.drawText(str, paddingLeft, this.mCY, this.mPaint);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0015, code lost:
    
        if (r0 != 3) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            playSoundEffect(0);
        } else {
            if (action != 1) {
                if (action == 2) {
                    this.isShowLetterTip = true;
                    if (1 == this.mOrientation) {
                        handlerVMove(motionEvent);
                    } else {
                        handlerHMove(motionEvent);
                    }
                }
            }
            Log.i("SideIndexBar", "MotionEvent.ACTION_CANCEL");
            this.isShowLetterTip = false;
            invalidate();
        }
        return true;
    }

    private void handlerVMove(MotionEvent motionEvent) {
        float y = motionEvent.getY();
        float f = this.singleHeight;
        float f2 = y - f;
        int length = DEFAULT_INDEX_ITEMS.length;
        int i = (int) (f2 / f);
        Log.i("SideIndexBar", " y = " + f2 + "  singleHeight = " + this.singleHeight + " touchedIndex = " + i);
        if (i < 0) {
            i = 0;
        } else if (i >= length) {
            i = length - 1;
        }
        Log.i("SideIndexBar", "touchedIndex = " + i + ", indexSize = " + length + ", mCurrentIndex=" + this.mCurrentIndex);
        if (this.mOnIndexChangedListener == null || i < 0 || i >= length || i == this.mCurrentIndex) {
            return;
        }
        String str = DEFAULT_INDEX_ITEMS[i];
        if (this.mIndexItems.contains(str)) {
            this.mCurrentIndex = i;
            this.mOnIndexChangedListener.onIndexChanged(str, i);
            invalidate();
        }
    }

    private void handlerHMove(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float f = this.singleWidth;
        float f2 = x - f;
        int length = DEFAULT_INDEX_ITEMS.length;
        int i = (int) (f2 / f);
        Log.i("SideIndexBar", "x=" + f2 + ",singleHeight=" + this.singleWidth + ",touchedIndex=" + i);
        if (i < 0) {
            i = 0;
        } else if (i >= length) {
            i = length - 1;
        }
        Log.i("SideIndexBar", "touchedIndex = " + i + ", indexSize = " + length + ", mCurrentIndex=" + this.mCurrentIndex);
        if (this.mOnIndexChangedListener == null || i < 0 || i >= length || i == this.mCurrentIndex) {
            return;
        }
        String str = DEFAULT_INDEX_ITEMS[i];
        if (this.mIndexItems.contains(str)) {
            this.mCurrentIndex = i;
            this.mOnIndexChangedListener.onIndexChanged(str, i);
            invalidate();
        }
    }

    public void setOnIndexChangedListener(OnIndexTouchedChangedListener onIndexTouchedChangedListener) {
        this.mOnIndexChangedListener = onIndexTouchedChangedListener;
    }

    private void drawWater(Canvas canvas, float f, float f2) {
        float f3 = this.letterHeight;
        this.tipCircleR = f3;
        float f4 = f3 * 2.0f;
        float dp2px = f + CommonUtils.dp2px(getContext(), 6.0f);
        this.mCx = f + CommonUtils.dp2px(getContext(), 6.0f) + f4;
        float f5 = this.tipCircleR;
        double sqrt = Math.sqrt((f4 * f4) - (f5 * f5));
        float f6 = (this.mCx - dp2px) / f4;
        double asin = Math.asin(this.tipCircleR / f4);
        double d = f6;
        double cos = Math.cos(asin) * d;
        double sin = Math.sin(asin) * d;
        double d2 = -asin;
        double cos2 = Math.cos(d2) * d;
        double sin2 = d * Math.sin(d2);
        double d3 = dp2px;
        double d4 = f2;
        double d5 = (sin * sqrt) + d4;
        double d6 = (sin2 * sqrt) + d4;
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        path.moveTo(dp2px, f2);
        float f7 = (float) ((cos * sqrt) + d3);
        float f8 = (float) d5;
        path.lineTo(f7, f8);
        path.lineTo((float) (d3 + (cos2 * sqrt)), (float) d6);
        path.lineTo(dp2px, f2);
        path.close();
        canvas.drawPath(path, this.bgPaint);
        canvas.drawLine(dp2px, f2, f7, f8, this.bgPaint);
        canvas.drawCircle(this.mCx, f2, this.tipCircleR, this.bgPaint);
    }
}
