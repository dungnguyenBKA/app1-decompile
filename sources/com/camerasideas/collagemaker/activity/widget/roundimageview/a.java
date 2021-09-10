package com.camerasideas.collagemaker.activity.widget.roundimageview;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.widget.ImageView;
import java.util.HashSet;

public class a extends Drawable {
    public static final /* synthetic */ int u = 0;
    private final RectF a = new RectF();
    private final RectF b = new RectF();
    private final RectF c;
    private final Bitmap d;
    private final Paint e;
    private final int f;
    private final int g;
    private final RectF h;
    private final Paint i;
    private final Matrix j;
    private final RectF k;
    private Shader.TileMode l;
    private Shader.TileMode m;
    private boolean n;
    private float o;
    private final boolean[] p;
    private boolean q;
    private float r;
    private ColorStateList s;
    private ImageView.ScaleType t;

    /* access modifiers changed from: package-private */
    /* renamed from: com.camerasideas.collagemaker.activity.widget.roundimageview.a$a  reason: collision with other inner class name */
    public static /* synthetic */ class C0033a {
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
                com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a = r0
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a     // Catch:{ NoSuchFieldError -> 0x001d }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_CROP     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a     // Catch:{ NoSuchFieldError -> 0x0028 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_INSIDE     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a     // Catch:{ NoSuchFieldError -> 0x0033 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_CENTER     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a     // Catch:{ NoSuchFieldError -> 0x003e }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_END     // Catch:{ NoSuchFieldError -> 0x003e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x003e }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x003e }
            L_0x003e:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a     // Catch:{ NoSuchFieldError -> 0x0049 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_START     // Catch:{ NoSuchFieldError -> 0x0049 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0049 }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0049 }
            L_0x0049:
                int[] r0 = com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.a     // Catch:{ NoSuchFieldError -> 0x0054 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x0054 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0054 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0054 }
            L_0x0054:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.roundimageview.a.C0033a.<clinit>():void");
        }
    }

    public a(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.c = rectF;
        this.h = new RectF();
        this.j = new Matrix();
        this.k = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.l = tileMode;
        this.m = tileMode;
        this.n = true;
        this.o = 0.0f;
        this.p = new boolean[]{true, true, true, true};
        this.q = false;
        this.r = 0.0f;
        this.s = ColorStateList.valueOf(-16777216);
        this.t = ImageView.ScaleType.FIT_CENTER;
        this.d = bitmap;
        int width = bitmap.getWidth();
        this.f = width;
        int height = bitmap.getHeight();
        this.g = height;
        rectF.set(0.0f, 0.0f, (float) width, (float) height);
        Paint paint = new Paint();
        this.e = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.s.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.r);
    }

    private static boolean a(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return false;
            }
        }
        return true;
    }

    public static Drawable b(Drawable drawable) {
        Bitmap bitmap;
        if (drawable == null || (drawable instanceof a)) {
            return drawable;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable.setDrawableByLayerId(layerDrawable.getId(i2), b(layerDrawable.getDrawable(i2)));
            }
            return layerDrawable;
        } else if (drawable instanceof AnimationDrawable) {
            return drawable;
        } else {
            if (drawable instanceof BitmapDrawable) {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
            } else {
                bitmap = null;
                try {
                    bitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmap);
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    drawable.draw(canvas);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
                } catch (OutOfMemoryError e3) {
                    System.gc();
                    e3.printStackTrace();
                }
            }
            return bitmap != null ? new a(bitmap) : drawable;
        }
    }

    private void c(Canvas canvas) {
        if (!a(this.p) && this.o != 0.0f) {
            RectF rectF = this.b;
            float f2 = rectF.left;
            float f3 = rectF.top;
            float width = rectF.width() + f2;
            float height = this.b.height() + f3;
            float f4 = this.o;
            if (!this.p[0]) {
                this.k.set(f2, f3, f2 + f4, f3 + f4);
                canvas.drawRect(this.k, this.e);
            }
            if (!this.p[1]) {
                this.k.set(width - f4, f3, width, f4);
                canvas.drawRect(this.k, this.e);
            }
            if (!this.p[2]) {
                this.k.set(width - f4, height - f4, width, height);
                canvas.drawRect(this.k, this.e);
            }
            if (!this.p[3]) {
                this.k.set(f2, height - f4, f4 + f2, height);
                canvas.drawRect(this.k, this.e);
            }
        }
    }

    private void k() {
        float f2;
        float f3;
        float f4;
        int i2 = C0033a.a[this.t.ordinal()];
        if (i2 == 1) {
            this.h.set(this.a);
            RectF rectF = this.h;
            float f5 = this.r;
            rectF.inset(f5 / 2.0f, f5 / 2.0f);
            this.j.reset();
            this.j.setTranslate((float) ((int) ic.a(this.h.width(), (float) this.f, 0.5f, 0.5f)), (float) ((int) ic.a(this.h.height(), (float) this.g, 0.5f, 0.5f)));
        } else if (i2 == 2) {
            this.h.set(this.a);
            RectF rectF2 = this.h;
            float f6 = this.r;
            rectF2.inset(f6 / 2.0f, f6 / 2.0f);
            this.j.reset();
            float f7 = 0.0f;
            if (this.h.height() * ((float) this.f) > this.h.width() * ((float) this.g)) {
                f3 = this.h.height() / ((float) this.g);
                f7 = (this.h.width() - (((float) this.f) * f3)) * 0.5f;
                f2 = 0.0f;
            } else {
                f3 = this.h.width() / ((float) this.f);
                f2 = (this.h.height() - (((float) this.g) * f3)) * 0.5f;
            }
            this.j.setScale(f3, f3);
            Matrix matrix = this.j;
            float f8 = this.r;
            matrix.postTranslate((f8 / 2.0f) + ((float) ((int) (f7 + 0.5f))), (f8 / 2.0f) + ((float) ((int) (f2 + 0.5f))));
        } else if (i2 == 3) {
            this.j.reset();
            if (((float) this.f) > this.a.width() || ((float) this.g) > this.a.height()) {
                f4 = Math.min(this.a.width() / ((float) this.f), this.a.height() / ((float) this.g));
            } else {
                f4 = 1.0f;
            }
            this.j.setScale(f4, f4);
            this.j.postTranslate((float) ((int) (((this.a.width() - (((float) this.f) * f4)) * 0.5f) + 0.5f)), (float) ((int) (((this.a.height() - (((float) this.g) * f4)) * 0.5f) + 0.5f)));
            this.h.set(this.c);
            this.j.mapRect(this.h);
            RectF rectF3 = this.h;
            float f9 = this.r;
            rectF3.inset(f9 / 2.0f, f9 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 5) {
            this.h.set(this.c);
            this.j.setRectToRect(this.c, this.a, Matrix.ScaleToFit.END);
            this.j.mapRect(this.h);
            RectF rectF4 = this.h;
            float f10 = this.r;
            rectF4.inset(f10 / 2.0f, f10 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 6) {
            this.h.set(this.c);
            this.j.setRectToRect(this.c, this.a, Matrix.ScaleToFit.START);
            this.j.mapRect(this.h);
            RectF rectF5 = this.h;
            float f11 = this.r;
            rectF5.inset(f11 / 2.0f, f11 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else if (i2 != 7) {
            this.h.set(this.c);
            this.j.setRectToRect(this.c, this.a, Matrix.ScaleToFit.CENTER);
            this.j.mapRect(this.h);
            RectF rectF6 = this.h;
            float f12 = this.r;
            rectF6.inset(f12 / 2.0f, f12 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else {
            this.h.set(this.a);
            RectF rectF7 = this.h;
            float f13 = this.r;
            rectF7.inset(f13 / 2.0f, f13 / 2.0f);
            this.j.reset();
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        }
        this.b.set(this.h);
    }

    public a d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.s = colorStateList;
        this.i.setColor(colorStateList.getColorForState(getState(), -16777216));
        return this;
    }

    public void draw(Canvas canvas) {
        boolean z;
        if (this.n) {
            BitmapShader bitmapShader = new BitmapShader(this.d, this.l, this.m);
            Shader.TileMode tileMode = this.l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.m == tileMode2) {
                bitmapShader.setLocalMatrix(this.j);
            }
            this.e.setShader(bitmapShader);
            this.n = false;
        }
        if (!this.q) {
            boolean[] zArr = this.p;
            int length = zArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                } else if (zArr[i2]) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                float f2 = this.o;
                if (this.r > 0.0f) {
                    canvas.drawRoundRect(this.b, f2, f2, this.e);
                    canvas.drawRoundRect(this.h, f2, f2, this.i);
                    c(canvas);
                    if (!a(this.p) && this.o != 0.0f) {
                        RectF rectF = this.b;
                        float f3 = rectF.left;
                        float f4 = rectF.top;
                        float width = rectF.width() + f3;
                        float height = this.b.height() + f4;
                        float f5 = this.o;
                        float f6 = this.r / 2.0f;
                        if (!this.p[0]) {
                            canvas.drawLine(f3 - f6, f4, f3 + f5, f4, this.i);
                            canvas.drawLine(f3, f4 - f6, f3, f4 + f5, this.i);
                        }
                        if (!this.p[1]) {
                            canvas.drawLine((width - f5) - f6, f4, width, f4, this.i);
                            canvas.drawLine(width, f4 - f6, width, f4 + f5, this.i);
                        }
                        if (!this.p[2]) {
                            canvas.drawLine((width - f5) - f6, height, width + f6, height, this.i);
                            canvas.drawLine(width, height - f5, width, height, this.i);
                        }
                        if (!this.p[3]) {
                            canvas.drawLine(f3 - f6, height, f3 + f5, height, this.i);
                            canvas.drawLine(f3, height - f5, f3, height, this.i);
                            return;
                        }
                        return;
                    }
                    return;
                }
                canvas.drawRoundRect(this.b, f2, f2, this.e);
                c(canvas);
                return;
            }
            canvas.drawRect(this.b, this.e);
            if (this.r > 0.0f) {
                canvas.drawRect(this.h, this.i);
            }
        } else if (this.r > 0.0f) {
            canvas.drawOval(this.b, this.e);
            canvas.drawOval(this.h, this.i);
        } else {
            canvas.drawOval(this.b, this.e);
        }
    }

    public a e(float f2) {
        this.r = f2;
        this.i.setStrokeWidth(f2);
        return this;
    }

    public a f(float f2, float f3, float f4, float f5) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.add(Float.valueOf(f5));
        hashSet.remove(Float.valueOf(0.0f));
        boolean z = true;
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float floatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (Float.isInfinite(floatValue) || Float.isNaN(floatValue) || floatValue < 0.0f) {
                    throw new IllegalArgumentException("Invalid radius value: " + floatValue);
                }
                this.o = floatValue;
            } else {
                this.o = 0.0f;
            }
            boolean[] zArr = this.p;
            zArr[0] = f2 > 0.0f;
            zArr[1] = f3 > 0.0f;
            zArr[2] = f4 > 0.0f;
            if (f5 <= 0.0f) {
                z = false;
            }
            zArr[3] = z;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    public a g(boolean z) {
        this.q = z;
        return this;
    }

    public int getAlpha() {
        return this.e.getAlpha();
    }

    public ColorFilter getColorFilter() {
        return this.e.getColorFilter();
    }

    public int getIntrinsicHeight() {
        return this.g;
    }

    public int getIntrinsicWidth() {
        return this.f;
    }

    public int getOpacity() {
        return -3;
    }

    public a h(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.t != scaleType) {
            this.t = scaleType;
            k();
        }
        return this;
    }

    public a i(Shader.TileMode tileMode) {
        if (this.l != tileMode) {
            this.l = tileMode;
            this.n = true;
            invalidateSelf();
        }
        return this;
    }

    public boolean isStateful() {
        return this.s.isStateful();
    }

    public a j(Shader.TileMode tileMode) {
        if (this.m != tileMode) {
            this.m = tileMode;
            this.n = true;
            invalidateSelf();
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.a.set(rect);
        k();
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        int colorForState = this.s.getColorForState(iArr, 0);
        if (this.i.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.i.setColor(colorForState);
        return true;
    }

    public void setAlpha(int i2) {
        this.e.setAlpha(i2);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setDither(boolean z) {
        this.e.setDither(z);
        invalidateSelf();
    }

    public void setFilterBitmap(boolean z) {
        this.e.setFilterBitmap(z);
        invalidateSelf();
    }
}
