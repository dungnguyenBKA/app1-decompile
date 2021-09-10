package com.camerasideas.collagemaker.activity.widget.roundimageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.camerasideas.collagemaker.R$styleable;

public class RoundedImageView extends AppCompatImageView {
    public static final Shader.TileMode t = Shader.TileMode.CLAMP;
    private static final ImageView.ScaleType[] u = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    private final float[] d;
    private Drawable e;
    private Drawable f;
    private ColorStateList g;
    private float h;
    private ColorFilter i;
    private boolean j;
    private Drawable k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private ImageView.ScaleType q;
    private Shader.TileMode r;
    private Shader.TileMode s;

    /* access modifiers changed from: package-private */
    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|4|5|6|7|8|9|10|11|12|(3:13|14|16)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(16:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|16) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x003e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0049 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0033 */
        static {
            /*
                android.widget.ImageView$ScaleType[] r0 = android.widget.ImageView.ScaleType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a = r0
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a     // Catch:{ NoSuchFieldError -> 0x001d }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_CROP     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a     // Catch:{ NoSuchFieldError -> 0x0028 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_INSIDE     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a     // Catch:{ NoSuchFieldError -> 0x0033 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_CENTER     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a     // Catch:{ NoSuchFieldError -> 0x003e }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_START     // Catch:{ NoSuchFieldError -> 0x003e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x003e }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x003e }
            L_0x003e:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a     // Catch:{ NoSuchFieldError -> 0x0049 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_END     // Catch:{ NoSuchFieldError -> 0x0049 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0049 }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0049 }
            L_0x0049:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.a     // Catch:{ NoSuchFieldError -> 0x0054 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x0054 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0054 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0054 }
            L_0x0054:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView.a.<clinit>():void");
        }
    }

    public RoundedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void k() {
        Drawable drawable = this.k;
        if (drawable != null && this.j) {
            Drawable mutate = drawable.mutate();
            this.k = mutate;
            if (this.l) {
                mutate.setColorFilter(this.i);
            }
        }
    }

    private static Shader.TileMode l(int i2) {
        if (i2 == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i2 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    private void m(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable != null) {
            if (drawable instanceof a) {
                a aVar = (a) drawable;
                aVar.h(scaleType);
                aVar.e(this.h);
                aVar.d(this.g);
                aVar.g(this.m);
                aVar.i(this.r);
                aVar.j(this.s);
                float[] fArr = this.d;
                if (fArr != null) {
                    aVar.f(fArr[0], fArr[1], fArr[2], fArr[3]);
                }
                k();
            } else if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    m(layerDrawable.getDrawable(i2), scaleType);
                }
            }
        }
    }

    private void n(boolean z) {
        if (this.n) {
            if (z) {
                this.f = a.b(this.f);
            }
            m(this.f, ImageView.ScaleType.FIT_XY);
        }
    }

    private void o() {
        m(this.k, this.q);
    }

    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
            Drawable drawable = this.e;
            if (drawable != null) {
                drawable.setHotspot(f2, f3);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatImageView
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setState(drawableState);
        }
        invalidate();
    }

    public ImageView.ScaleType getScaleType() {
        return this.q;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.e) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.e != null && isShown()) {
            this.e.draw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundColor(int i2) {
        ColorDrawable colorDrawable = new ColorDrawable(i2);
        this.f = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f = drawable;
        n(true);
        super.setBackgroundDrawable(this.f);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setBackgroundResource(int i2) {
        if (this.p != i2) {
            this.p = i2;
            Resources resources = getResources();
            Drawable drawable = null;
            if (resources != null) {
                int i3 = this.p;
                if (i3 != 0) {
                    try {
                        drawable = resources.getDrawable(i3);
                    } catch (Exception e2) {
                        StringBuilder q2 = ic.q("Unable to find resource: ");
                        q2.append(this.p);
                        Log.w("RoundedImageView", q2.toString(), e2);
                        this.p = 0;
                    }
                }
                drawable = a.b(drawable);
            }
            this.f = drawable;
            setBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.i != colorFilter) {
            this.i = colorFilter;
            this.l = true;
            this.j = true;
            k();
            invalidate();
        }
    }

    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.e);
        }
        if (drawable != null) {
            drawable.setCallback(this);
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            drawable.setVisible(getVisibility() == 0, false);
            drawable.setBounds(0, 0, getWidth(), getHeight());
        }
        this.e = drawable;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.o = 0;
        int i2 = a.u;
        this.k = bitmap != null ? new a(bitmap) : null;
        o();
        super.setImageDrawable(this.k);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageDrawable(Drawable drawable) {
        this.o = 0;
        this.k = a.b(drawable);
        o();
        super.setImageDrawable(this.k);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageResource(int i2) {
        if (this.o != i2) {
            this.o = i2;
            Resources resources = getResources();
            Drawable drawable = null;
            if (resources != null) {
                int i3 = this.o;
                if (i3 != 0) {
                    try {
                        drawable = resources.getDrawable(i3);
                    } catch (Exception e2) {
                        StringBuilder q2 = ic.q("Unable to find resource: ");
                        q2.append(this.o);
                        Log.w("RoundedImageView", q2.toString(), e2);
                        this.o = 0;
                    }
                }
                drawable = a.b(drawable);
            }
            this.k = drawable;
            o();
            super.setImageDrawable(this.k);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.q != scaleType) {
            this.q = scaleType;
            switch (a.a[scaleType.ordinal()]) {
                case 1:
                case 2:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                case 3:
                    super.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            o();
            n(false);
            invalidate();
        }
    }

    public RoundedImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Shader.TileMode l2;
        Shader.TileMode l3;
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        this.d = fArr;
        this.g = ColorStateList.valueOf(-16777216);
        this.h = 0.0f;
        this.i = null;
        this.j = false;
        this.l = false;
        this.m = false;
        this.n = false;
        Shader.TileMode tileMode = t;
        this.r = tileMode;
        this.s = tileMode;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.j, i2, 0);
        int i3 = obtainStyledAttributes.getInt(1, -1);
        if (i3 >= 0) {
            setScaleType(u[i3]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        float dimensionPixelSize = (float) obtainStyledAttributes.getDimensionPixelSize(4, -1);
        fArr[0] = (float) obtainStyledAttributes.getDimensionPixelSize(7, -1);
        fArr[1] = (float) obtainStyledAttributes.getDimensionPixelSize(8, -1);
        fArr[2] = (float) obtainStyledAttributes.getDimensionPixelSize(6, -1);
        fArr[3] = (float) obtainStyledAttributes.getDimensionPixelSize(5, -1);
        boolean z = false;
        for (int i4 = 0; i4 < 4; i4++) {
            float[] fArr2 = this.d;
            if (fArr2[i4] < 0.0f) {
                fArr2[i4] = 0.0f;
            } else {
                z = true;
            }
        }
        if (!z) {
            dimensionPixelSize = dimensionPixelSize < 0.0f ? 0.0f : dimensionPixelSize;
            int length = this.d.length;
            for (int i5 = 0; i5 < length; i5++) {
                this.d[i5] = dimensionPixelSize;
            }
        }
        float dimensionPixelSize2 = (float) obtainStyledAttributes.getDimensionPixelSize(3, -1);
        this.h = dimensionPixelSize2;
        if (dimensionPixelSize2 < 0.0f) {
            this.h = 0.0f;
        }
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(2);
        this.g = colorStateList;
        if (colorStateList == null) {
            this.g = ColorStateList.valueOf(-16777216);
        }
        this.n = obtainStyledAttributes.getBoolean(9, false);
        this.m = obtainStyledAttributes.getBoolean(10, false);
        int i6 = obtainStyledAttributes.getInt(11, -2);
        if (i6 != -2) {
            Shader.TileMode l4 = l(i6);
            if (this.r != l4) {
                this.r = l4;
                o();
                n(false);
                invalidate();
            }
            Shader.TileMode l5 = l(i6);
            if (this.s != l5) {
                this.s = l5;
                o();
                n(false);
                invalidate();
            }
        }
        int i7 = obtainStyledAttributes.getInt(12, -2);
        if (!(i7 == -2 || this.r == (l3 = l(i7)))) {
            this.r = l3;
            o();
            n(false);
            invalidate();
        }
        int i8 = obtainStyledAttributes.getInt(13, -2);
        if (!(i8 == -2 || this.s == (l2 = l(i8)))) {
            this.s = l2;
            o();
            n(false);
            invalidate();
        }
        o();
        n(true);
        if (this.n) {
            super.setBackgroundDrawable(this.f);
        }
        setForeground(obtainStyledAttributes.getDrawable(0));
        obtainStyledAttributes.recycle();
    }
}
