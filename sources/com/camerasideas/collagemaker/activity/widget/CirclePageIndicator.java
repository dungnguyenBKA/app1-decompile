package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.viewpager.widget.ViewPager;
import com.camerasideas.collagemaker.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public class CirclePageIndicator extends View implements ViewPager.g {
    private float b;
    private final Paint c;
    private final Paint d;
    private final Paint e;
    private int f;
    private int g;
    private float h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private int m;
    private float n;
    private int o;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int b;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
        }

        SavedState(Parcel parcel, a aVar) {
            super(parcel);
            this.b = parcel.readInt();
        }
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ve);
    }

    private int d(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (int) ((this.b * 2.0f) + ((float) getPaddingTop()) + ((float) getPaddingBottom()) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    @Override // androidx.viewpager.widget.ViewPager.g
    public void a(int i2, float f2, int i3) {
        this.f = i2;
        this.h = f2;
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.g
    public void b(int i2) {
        this.i = i2;
    }

    @Override // androidx.viewpager.widget.ViewPager.g
    public void c(int i2) {
        if (this.l || this.i == 0) {
            this.f = i2;
            this.g = i2;
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.j == 0) {
            View.MeasureSpec.getMode(i2);
            setMeasuredDimension(View.MeasureSpec.getSize(i2), d(i3));
            return;
        }
        int d2 = d(i2);
        View.MeasureSpec.getMode(i3);
        setMeasuredDimension(d2, View.MeasureSpec.getSize(i3));
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.b;
        this.f = i2;
        this.g = i2;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = this.f;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Paint paint = new Paint(1);
        this.c = paint;
        Paint paint2 = new Paint(1);
        this.d = paint2;
        Paint paint3 = new Paint(1);
        this.e = paint3;
        this.n = -1.0f;
        this.o = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(R.color.c4);
            int color2 = resources.getColor(R.color.c3);
            int integer = resources.getInteger(R.integer.n);
            int color3 = resources.getColor(R.color.c5);
            float dimension = resources.getDimension(R.dimen.mi);
            float dimension2 = resources.getDimension(R.dimen.mh);
            boolean z = resources.getBoolean(R.bool.f);
            boolean z2 = resources.getBoolean(R.bool.g);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a, i2, 0);
            this.k = obtainStyledAttributes.getBoolean(2, z);
            this.j = obtainStyledAttributes.getInt(0, integer);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(obtainStyledAttributes.getColor(4, color));
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(obtainStyledAttributes.getColor(7, color3));
            paint2.setStrokeWidth(obtainStyledAttributes.getDimension(8, dimension));
            paint3.setStyle(Paint.Style.FILL);
            paint3.setColor(obtainStyledAttributes.getColor(3, color2));
            this.b = obtainStyledAttributes.getDimension(5, dimension2);
            this.l = obtainStyledAttributes.getBoolean(6, z2);
            Drawable drawable = obtainStyledAttributes.getDrawable(1);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int i3 = g3.b;
            this.m = viewConfiguration.getScaledPagingTouchSlop();
        }
    }
}
