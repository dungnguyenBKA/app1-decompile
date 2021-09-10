package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import java.util.Objects;
import org.apache.http.HttpStatus;

public class c implements View.OnTouchListener, View.OnLayoutChangeListener {
    private Interpolator b = new AccelerateDecelerateInterpolator();
    private int c = HttpStatus.SC_OK;
    private float d = 1.0f;
    private float e = 1.75f;
    private float f = 3.0f;
    private boolean g = true;
    private boolean h = false;
    private ImageView i;
    private GestureDetector j;
    private a k;
    private final Matrix l = new Matrix();
    private final Matrix m = new Matrix();
    private final Matrix n = new Matrix();
    private final RectF o = new RectF();
    private final float[] p = new float[9];
    private View.OnClickListener q;
    private View.OnLongClickListener r;
    private f s;
    private int t = 2;
    private boolean u = true;
    private ImageView.ScaleType v = ImageView.ScaleType.FIT_CENTER;
    private b w = new a();

    /* access modifiers changed from: package-private */
    public class a implements b {
        a() {
        }

        public void a(float f, float f2, float f3) {
            if (c.this.D() >= c.this.f && f >= 1.0f) {
                return;
            }
            if (c.this.D() > c.this.d || f > 1.0f) {
                Objects.requireNonNull(c.this);
                c.this.n.postScale(f, f, f2, f3);
                c.this.s();
            }
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            Objects.requireNonNull(c.this);
            return false;
        }

        public void onLongPress(MotionEvent motionEvent) {
            if (c.this.r != null) {
                c.this.r.onLongClick(c.this.i);
            }
        }
    }

    /* renamed from: com.github.chrisbanes.photoview.c$c  reason: collision with other inner class name */
    class GestureDetector$OnDoubleTapListenerC0043c implements GestureDetector.OnDoubleTapListener {
        GestureDetector$OnDoubleTapListenerC0043c() {
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float D = c.this.D();
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (D < c.this.B()) {
                    c cVar = c.this;
                    cVar.I(cVar.B(), x, y, true);
                } else if (D < c.this.B() || D >= c.this.A()) {
                    c cVar2 = c.this;
                    cVar2.I(cVar2.C(), x, y, true);
                } else {
                    c cVar3 = c.this;
                    cVar3.I(cVar3.A(), x, y, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (c.this.q != null) {
                c.this.q.onClick(c.this.i);
            }
            RectF u = c.this.u();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            Objects.requireNonNull(c.this);
            if (u == null) {
                return false;
            }
            if (u.contains(x, y)) {
                u.width();
                u.height();
                Objects.requireNonNull(c.this);
                return true;
            }
            Objects.requireNonNull(c.this);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public static /* synthetic */ class d {
        static final /* synthetic */ int[] a;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        static {
            /*
                android.widget.ImageView$ScaleType[] r0 = android.widget.ImageView.ScaleType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                com.github.chrisbanes.photoview.c.d.a = r0
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_CENTER     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = com.github.chrisbanes.photoview.c.d.a     // Catch:{ NoSuchFieldError -> 0x001d }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_START     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = com.github.chrisbanes.photoview.c.d.a     // Catch:{ NoSuchFieldError -> 0x0028 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_END     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = com.github.chrisbanes.photoview.c.d.a     // Catch:{ NoSuchFieldError -> 0x0033 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.github.chrisbanes.photoview.c.d.<clinit>():void");
        }
    }

    /* access modifiers changed from: private */
    public class e implements Runnable {
        private final float b;
        private final float c;
        private final long d = System.currentTimeMillis();
        private final float e;
        private final float f;

        public e(float f2, float f3, float f4, float f5) {
            this.b = f4;
            this.c = f5;
            this.e = f2;
            this.f = f3;
        }

        public void run() {
            float interpolation = c.this.b.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.d)) * 1.0f) / ((float) c.this.c)));
            float f2 = this.e;
            float a = ic.a(this.f, f2, interpolation, f2) / c.this.D();
            ((a) c.this.w).a(a, this.b, this.c);
            if (interpolation < 1.0f) {
                c.this.i.postOnAnimation(this);
            }
        }
    }

    /* access modifiers changed from: private */
    public class f implements Runnable {
        private final OverScroller b;
        private int c;
        private int d;

        public f(Context context) {
            this.b = new OverScroller(context);
        }

        public void a() {
            this.b.forceFinished(true);
        }

        public void b(int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            int i7;
            int i8;
            RectF u = c.this.u();
            if (u != null) {
                int round = Math.round(-u.left);
                float f = (float) i;
                if (f < u.width()) {
                    i5 = Math.round(u.width() - f);
                    i6 = 0;
                } else {
                    i6 = round;
                    i5 = i6;
                }
                int round2 = Math.round(-u.top);
                float f2 = (float) i2;
                if (f2 < u.height()) {
                    i7 = Math.round(u.height() - f2);
                    i8 = 0;
                } else {
                    i8 = round2;
                    i7 = i8;
                }
                this.c = round;
                this.d = round2;
                if (round != i5 || round2 != i7) {
                    this.b.fling(round, round2, i3, i4, i6, i5, i8, i7, 0, 0);
                }
            }
        }

        public void run() {
            if (!this.b.isFinished() && this.b.computeScrollOffset()) {
                int currX = this.b.getCurrX();
                int currY = this.b.getCurrY();
                c.this.n.postTranslate((float) (this.c - currX), (float) (this.d - currY));
                c.this.s();
                this.c = currX;
                this.d = currY;
                c.this.i.postOnAnimation(this);
            }
        }
    }

    public c(ImageView imageView) {
        this.i = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (!imageView.isInEditMode()) {
            this.k = new a(imageView.getContext(), this.w);
            GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new b());
            this.j = gestureDetector;
            gestureDetector.setOnDoubleTapListener(new GestureDetector$OnDoubleTapListenerC0043c());
        }
    }

    private void F() {
        this.n.reset();
        this.n.postRotate(0.0f);
        s();
        this.i.setImageMatrix(w());
        t();
    }

    private void L(Drawable drawable) {
        if (drawable != null) {
            float z = (float) z(this.i);
            float y = (float) y(this.i);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.l.reset();
            float f2 = (float) intrinsicWidth;
            float f3 = z / f2;
            float f4 = (float) intrinsicHeight;
            float f5 = y / f4;
            ImageView.ScaleType scaleType = this.v;
            if (scaleType == ImageView.ScaleType.CENTER) {
                this.l.postTranslate((z - f2) / 2.0f, (y - f4) / 2.0f);
            } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                float max = Math.max(f3, f5);
                this.l.postScale(max, max);
                this.l.postTranslate((z - (f2 * max)) / 2.0f, (y - (f4 * max)) / 2.0f);
            } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
                float min = Math.min(1.0f, Math.min(f3, f5));
                this.l.postScale(min, min);
                this.l.postTranslate((z - (f2 * min)) / 2.0f, (y - (f4 * min)) / 2.0f);
            } else {
                RectF rectF = new RectF(0.0f, 0.0f, f2, f4);
                RectF rectF2 = new RectF(0.0f, 0.0f, z, y);
                if (((int) 0.0f) % 180 != 0) {
                    rectF = new RectF(0.0f, 0.0f, f4, f2);
                }
                int i2 = d.a[this.v.ordinal()];
                if (i2 == 1) {
                    this.l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                } else if (i2 == 2) {
                    this.l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                } else if (i2 == 3) {
                    this.l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                } else if (i2 == 4) {
                    this.l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                }
            }
            F();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void s() {
        if (t()) {
            this.i.setImageMatrix(w());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean t() {
        /*
        // Method dump skipped, instructions count: 153
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.chrisbanes.photoview.c.t():boolean");
    }

    private RectF v(Matrix matrix) {
        Drawable drawable = this.i.getDrawable();
        if (drawable == null) {
            return null;
        }
        this.o.set(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
        matrix.mapRect(this.o);
        return this.o;
    }

    private Matrix w() {
        this.m.set(this.l);
        this.m.postConcat(this.n);
        return this.m;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private int y(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private int z(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    public float A() {
        return this.f;
    }

    public float B() {
        return this.e;
    }

    public float C() {
        return this.d;
    }

    public float D() {
        this.n.getValues(this.p);
        this.n.getValues(this.p);
        return (float) Math.sqrt((double) (((float) Math.pow((double) this.p[0], 2.0d)) + ((float) Math.pow((double) this.p[3], 2.0d))));
    }

    public ImageView.ScaleType E() {
        return this.v;
    }

    public void G(View.OnClickListener onClickListener) {
        this.q = onClickListener;
    }

    public void H(View.OnLongClickListener onLongClickListener) {
        this.r = onLongClickListener;
    }

    public void I(float f2, float f3, float f4, boolean z) {
        if (f2 < this.d || f2 > this.f) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        } else if (z) {
            this.i.post(new e(D(), f2, f3, f4));
        } else {
            this.n.setScale(f2, f2, f3, f4);
            s();
        }
    }

    public void J(ImageView.ScaleType scaleType) {
        boolean z;
        if (scaleType == null) {
            z = false;
        } else if (d.a[scaleType.ordinal()] != 1) {
            z = true;
        } else {
            throw new IllegalStateException("Matrix scale type is not supported");
        }
        if (z && scaleType != this.v) {
            this.v = scaleType;
            K();
        }
    }

    public void K() {
        if (this.u) {
            L(this.i.getDrawable());
        } else {
            F();
        }
    }

    public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i2 != i6 || i3 != i7 || i4 != i8 || i5 != i9) {
            L(this.i.getDrawable());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00bd  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
        // Method dump skipped, instructions count: 202
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.chrisbanes.photoview.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public RectF u() {
        t();
        return v(w());
    }

    public Matrix x() {
        return this.m;
    }
}
