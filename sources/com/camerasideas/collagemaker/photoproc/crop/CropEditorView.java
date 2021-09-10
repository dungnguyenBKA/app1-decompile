package com.camerasideas.collagemaker.photoproc.crop;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.camerasideas.collagemaker.activity.ImageCropActivity;
import com.camerasideas.collagemaker.filter.ISCropFilter;
import defpackage.dp;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class CropEditorView extends View {
    private static int[] a0;
    private int A;
    private int B;
    private int C;
    private Drawable D;
    private AnimatorSet E;
    private ValueAnimator F;
    private boolean G;
    private Paint H;
    private Paint I;
    private Paint J;
    private d K;
    private PointF L;
    private RectF M;
    private f N;
    private yo O;
    private dp P;
    private ValueAnimator Q;
    private PropertyValuesHolder R;
    private PropertyValuesHolder S;
    private e T;
    private Animator.AnimatorListener U;
    private ValueAnimator.AnimatorUpdateListener V;
    private ValueAnimator.AnimatorUpdateListener W;
    private int b;
    private Bitmap c;
    private Matrix d;
    private Matrix e;
    private Matrix f;
    private Matrix g;
    private Matrix h;
    private Matrix i;
    private RectF j;
    private Rect k;
    private RectF l;
    private int m;
    private Rect n;
    private RectF o;
    private RectF p;
    private RectF q;
    private Rect r;
    private RectF s;
    private RectF t;
    private RectF u;
    private float v;
    private float w;
    private int x;
    private int y;
    private int z;

    /* access modifiers changed from: package-private */
    public class a implements Animator.AnimatorListener {
        a() {
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            CropEditorView.this.G();
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CropEditorView.this.g.set((Matrix) CropEditorView.this.F.getAnimatedValue());
            CropEditorView.this.invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends b {
        c() {
        }

        public void onAnimationEnd(Animator animator) {
            animator.removeListener(this);
            CropEditorView cropEditorView = CropEditorView.this;
            cropEditorView.D(cropEditorView.s, false);
        }
    }

    /* access modifiers changed from: private */
    public enum d {
        IDLE,
        RESIZE,
        SCALE,
        TRANSLATE,
        ANIMATOR,
        SKIP
    }

    public interface e {
    }

    /* access modifiers changed from: private */
    public class f {
        private RectF a = new RectF();
        private int b = 0;
        private PointF c = new PointF();

        f(a aVar) {
        }

        /* JADX WARNING: Removed duplicated region for block: B:100:0x0379  */
        /* JADX WARNING: Removed duplicated region for block: B:106:0x039a  */
        /* JADX WARNING: Removed duplicated region for block: B:111:0x03a5  */
        /* JADX WARNING: Removed duplicated region for block: B:112:0x03a8  */
        /* JADX WARNING: Removed duplicated region for block: B:115:0x03ae  */
        /* JADX WARNING: Removed duplicated region for block: B:116:0x03b1  */
        /* JADX WARNING: Removed duplicated region for block: B:119:0x03b7  */
        /* JADX WARNING: Removed duplicated region for block: B:120:0x03c5  */
        /* JADX WARNING: Removed duplicated region for block: B:123:0x041c  */
        /* JADX WARNING: Removed duplicated region for block: B:56:0x01c7  */
        /* JADX WARNING: Removed duplicated region for block: B:57:0x01e0  */
        /* JADX WARNING: Removed duplicated region for block: B:60:0x0216  */
        /* JADX WARNING: Removed duplicated region for block: B:66:0x0237  */
        /* JADX WARNING: Removed duplicated region for block: B:71:0x0242  */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x0245  */
        /* JADX WARNING: Removed duplicated region for block: B:75:0x024b  */
        /* JADX WARNING: Removed duplicated region for block: B:76:0x024e  */
        /* JADX WARNING: Removed duplicated region for block: B:79:0x0254  */
        /* JADX WARNING: Removed duplicated region for block: B:80:0x0262  */
        /* JADX WARNING: Removed duplicated region for block: B:83:0x02b9  */
        /* JADX WARNING: Removed duplicated region for block: B:96:0x032a  */
        /* JADX WARNING: Removed duplicated region for block: B:97:0x0343  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        static boolean a(com.camerasideas.collagemaker.photoproc.crop.CropEditorView.f r14, android.view.MotionEvent r15) {
            /*
            // Method dump skipped, instructions count: 2549
            */
            throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.photoproc.crop.CropEditorView.f.a(com.camerasideas.collagemaker.photoproc.crop.CropEditorView$f, android.view.MotionEvent):boolean");
        }

        private boolean b(float f, float f2) {
            return f > f2 - ((float) CropEditorView.this.x) && f < f2 + ((float) CropEditorView.this.x);
        }

        private int c() {
            return Math.max((int) (CropEditorView.this.g.mapRadius((float) CropEditorView.this.b) + 0.5f), CropEditorView.this.y);
        }

        private float d(float f, float f2) {
            float f3 = f2 + f;
            if (f * f3 < 0.0f) {
                return 0.0f;
            }
            return f3;
        }
    }

    /* access modifiers changed from: private */
    public class g implements zo {
        g(a aVar) {
        }

        @Override // defpackage.zo
        public void a(MotionEvent motionEvent, float f, float f2) {
        }

        @Override // defpackage.zo
        public void b(MotionEvent motionEvent, float f, float f2, float f3, float f4) {
        }

        @Override // defpackage.zo
        public void c(MotionEvent motionEvent, float f, float f2, float f3) {
            CropEditorView.this.K = d.SCALE;
            float mapRadius = CropEditorView.this.g.mapRadius((float) CropEditorView.this.b);
            float min = Math.min(CropEditorView.this.s.width(), CropEditorView.this.s.height());
            if (f * mapRadius > min) {
                f = min / mapRadius;
            }
            CropEditorView.this.g.postScale(f, f, f2, f3);
            CropEditorView.this.invalidate();
            if (CropEditorView.this.T != null) {
                CropEditorView.this.G = true;
                CropEditorView.this.g.invert(CropEditorView.this.e);
                CropEditorView.this.e.mapRect(CropEditorView.this.t, CropEditorView.this.s);
                CropEditorView.m(CropEditorView.this);
            }
        }

        @Override // defpackage.zo
        public void d() {
            CropEditorView cropEditorView = CropEditorView.this;
            CropEditorView.u(cropEditorView, cropEditorView.s);
            CropEditorView.this.K = d.SKIP;
        }

        @Override // defpackage.zo
        public void e() {
            CropEditorView.t(CropEditorView.this);
        }
    }

    /* access modifiers changed from: private */
    public class h implements dp.a {
        h(a aVar) {
        }

        @Override // defpackage.dp.a
        public boolean a() {
            if (CropEditorView.this.K != d.IDLE) {
                return false;
            }
            CropEditorView.this.K = d.TRANSLATE;
            CropEditorView.t(CropEditorView.this);
            return true;
        }

        @Override // defpackage.dp.a
        public void b(float f, float f2) {
            CropEditorView.this.g.postTranslate(f, f2);
            CropEditorView.this.invalidate();
        }

        @Override // defpackage.dp.a
        public void c() {
            CropEditorView cropEditorView = CropEditorView.this;
            CropEditorView.u(cropEditorView, cropEditorView.s);
            CropEditorView.this.K = d.IDLE;
        }
    }

    public CropEditorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void D(RectF rectF, boolean z2) {
        Matrix matrix = new Matrix();
        this.g.invert(matrix);
        RectF rectF2 = new RectF();
        matrix.mapRect(rectF2, rectF);
        if (!this.l.contains(rectF2)) {
            Matrix matrix2 = new Matrix(this.g);
            Matrix matrix3 = new Matrix(this.g);
            if (rectF2.width() > this.l.width() || rectF2.height() > this.l.height()) {
                float I2 = I(this.l, rectF2);
                matrix3.preScale(I2, I2, rectF2.centerX(), rectF2.centerY());
            }
            matrix3.invert(matrix);
            matrix.mapRect(rectF2, rectF);
            if (!this.l.contains(rectF2)) {
                PointF pointF = new PointF();
                J(this.l, rectF2, pointF);
                matrix3.preTranslate(pointF.x, pointF.y);
            }
            if (z2) {
                N(matrix2, matrix3, true);
                this.F.start();
                return;
            }
            this.g.set(matrix3);
            G();
            invalidate();
            return;
        }
        G();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void G() {
        if (this.G && this.T != null) {
            this.g.invert(this.e);
            this.e.mapRect(this.t, this.s);
            Objects.requireNonNull((ImageCropActivity) this.T);
            this.G = false;
        }
    }

    private void H() {
        this.g.setRectToRect(this.l, this.o, Matrix.ScaleToFit.CENTER);
        this.h.setRectToRect(this.l, this.o, Matrix.ScaleToFit.CENTER);
        this.g.mapRect(this.s, this.l);
        this.i.set(this.g);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private float I(RectF rectF, RectF rectF2) {
        float width = rectF2.width() > rectF.width() ? rectF2.width() / rectF.width() : 1.0f;
        return rectF2.height() > rectF.height() ? Math.max(width, rectF2.height() / rectF.height()) : width;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x002b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void J(android.graphics.RectF r6, android.graphics.RectF r7, android.graphics.PointF r8) {
        /*
            r5 = this;
            boolean r0 = r6.contains(r7)
            r1 = 0
            if (r0 == 0) goto L_0x000c
            r8.x = r1
            r8.y = r1
            return
        L_0x000c:
            float r0 = r7.top
            float r2 = r6.top
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 >= 0) goto L_0x0016
        L_0x0014:
            float r0 = r0 - r2
            goto L_0x0020
        L_0x0016:
            float r0 = r7.bottom
            float r2 = r6.bottom
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 <= 0) goto L_0x001f
            goto L_0x0014
        L_0x001f:
            r0 = 0
        L_0x0020:
            float r2 = r7.left
            float r3 = r6.left
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L_0x002b
            float r1 = r2 - r3
            goto L_0x0035
        L_0x002b:
            float r7 = r7.right
            float r6 = r6.right
            int r2 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
            if (r2 <= 0) goto L_0x0035
            float r1 = r7 - r6
        L_0x0035:
            r8.x = r1
            r8.y = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.photoproc.crop.CropEditorView.J(android.graphics.RectF, android.graphics.RectF, android.graphics.PointF):void");
    }

    private void M(Animator animator, Animator animator2, b bVar) {
        if (this.E == null) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.E = animatorSet;
            animatorSet.playTogether(animator, animator2);
        }
        this.E.setDuration(150L);
        if (bVar != null) {
            this.E.addListener(bVar);
        }
    }

    private void N(Matrix matrix, Matrix matrix2, boolean z2) {
        if (this.F == null) {
            this.F = new ValueAnimator();
            PropertyValuesHolder ofObject = PropertyValuesHolder.ofObject("matrix", new d(), matrix, matrix2);
            this.R = ofObject;
            this.F.setObjectValues(ofObject);
            this.F.addUpdateListener(this.V);
        }
        if (z2) {
            this.F.addListener(this.U);
        } else {
            this.F.removeAllListeners();
        }
        this.R.setObjectValues(matrix, matrix2);
        this.F.setDuration(150L);
        this.F.setValues(this.R);
    }

    private void O(RectF rectF, RectF rectF2) {
        if (this.Q == null) {
            this.Q = new ValueAnimator();
            this.S = PropertyValuesHolder.ofObject("window", new c(), rectF, rectF2);
            this.Q.addUpdateListener(this.W);
        }
        this.Q.setDuration(150L);
        this.S.setObjectValues(rectF, rectF2);
        this.Q.setValues(this.S);
    }

    static void c(CropEditorView cropEditorView) {
        if (cropEditorView.G) {
            Matrix matrix = new Matrix(cropEditorView.g);
            Matrix matrix2 = new Matrix(cropEditorView.g);
            RectF rectF = new RectF(cropEditorView.s);
            RectF rectF2 = new RectF();
            cropEditorView.d.setRectToRect(cropEditorView.s, cropEditorView.o, Matrix.ScaleToFit.CENTER);
            cropEditorView.d.mapRect(rectF2, cropEditorView.s);
            matrix2.postConcat(cropEditorView.d);
            cropEditorView.N(matrix, matrix2, false);
            cropEditorView.O(rectF, rectF2);
            cropEditorView.M(cropEditorView.F, cropEditorView.Q, null);
            cropEditorView.E.start();
        }
    }

    static void m(CropEditorView cropEditorView) {
        Objects.requireNonNull((ImageCropActivity) cropEditorView.T);
    }

    static void t(CropEditorView cropEditorView) {
        ValueAnimator valueAnimator = cropEditorView.F;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            cropEditorView.F.cancel();
        }
    }

    static void u(CropEditorView cropEditorView, RectF rectF) {
        cropEditorView.D(rectF, true);
    }

    public void C(float f2, float f3, boolean z2) {
        if (!(f2 == 0.0f || f3 == -1.0f)) {
            double d2 = (double) f2;
            Double.isNaN(d2);
            double d3 = (double) f3;
            Double.isNaN(d3);
            double d4 = (d2 * 1.0d) / d3;
            double d5 = (double) this.v;
            Double.isNaN(d5);
            double d6 = (double) this.w;
            Double.isNaN(d6);
            if (d4 == (d5 * 1.0d) / d6) {
                return;
            }
        }
        ValueAnimator valueAnimator = this.Q;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            this.Q.end();
        }
        ValueAnimator valueAnimator2 = this.F;
        if (valueAnimator2 != null && valueAnimator2.isStarted()) {
            this.F.end();
        }
        AnimatorSet animatorSet = this.E;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.E.end();
        }
        this.v = f2;
        this.w = f3;
        if (z2) {
            this.v = 0.0f;
            this.w = 0.0f;
        }
        if ((f2 != 0.0f && f3 != 0.0f) || z2) {
            float width = this.s.width() / this.s.height();
            float f4 = f2 / f3;
            if (Math.abs(width - f4) > Float.MIN_NORMAL) {
                RectF rectF = new RectF(this.s);
                if (width > f4) {
                    float width2 = ((rectF.width() / f4) - rectF.height()) / 2.0f;
                    rectF.top -= width2;
                    rectF.bottom += width2;
                } else {
                    float height = ((rectF.height() * f4) - rectF.width()) / 2.0f;
                    rectF.left -= height;
                    rectF.right += height;
                }
                if (!this.o.contains(rectF)) {
                    float I2 = I(this.o, rectF);
                    Matrix matrix = new Matrix();
                    float f5 = 1.0f / I2;
                    matrix.postScale(f5, f5, rectF.centerX(), rectF.centerY());
                    matrix.mapRect(rectF);
                }
                Matrix matrix2 = new Matrix(this.g);
                Matrix matrix3 = new Matrix(this.g);
                this.g.invert(this.e);
                this.e.mapRect(this.t, rectF);
                float I3 = I(this.l, this.t);
                matrix3.preScale(I3, I3, this.t.centerX(), this.t.centerY());
                this.d.setScale(I3, I3, this.t.centerX(), this.t.centerY());
                this.d.mapRect(this.j, this.l);
                J(this.j, this.t, this.L);
                PointF pointF = this.L;
                matrix3.preTranslate(pointF.x, pointF.y);
                this.d.setRectToRect(rectF, this.o, Matrix.ScaleToFit.CENTER);
                matrix3.postConcat(this.d);
                this.d.mapRect(rectF);
                this.G = true;
                O(new RectF(this.s), rectF);
                N(matrix2, matrix3, false);
                M(this.F, this.Q, new c());
                this.E.start();
            }
        } else if (f2 == 0.0f && f3 == 0.0f) {
            H();
            invalidate();
        }
    }

    public ISCropFilter E() {
        this.g.invert(this.e);
        this.e.mapRect(this.t, this.s);
        if (this.t.isEmpty()) {
            return null;
        }
        float width = this.t.width() / this.t.height();
        float width2 = this.l.width();
        float height = this.l.height();
        float q2 = androidx.core.app.b.q(0.0f, 1.0f, this.t.left / width2);
        float q3 = androidx.core.app.b.q(0.0f, 1.0f, this.t.top / height);
        float q4 = androidx.core.app.b.q(0.0f, 1.0f, this.t.width() / width2);
        float q5 = androidx.core.app.b.q(0.0f, 1.0f, this.t.height() / height);
        ISCropFilter iSCropFilter = new ISCropFilter(q2 + q4 > 1.0f ? 1.0f - q4 : q2, q3 + q5 > 1.0f ? 1.0f - q5 : q3, q4, q5, width);
        if (cm.l(this.c)) {
            iSCropFilter.s(this.c.getWidth());
        }
        return iSCropFilter;
    }

    public /* synthetic */ void F(ValueAnimator valueAnimator) {
        this.s.set((RectF) this.Q.getAnimatedValue());
        invalidate();
    }

    public void K(Bitmap bitmap) {
        this.c = bitmap;
        if (bitmap == null) {
            RectF rectF = this.l;
            rectF.right = 0.0f;
            rectF.bottom = 0.0f;
        } else {
            this.l.right = (float) bitmap.getWidth();
            this.l.bottom = (float) bitmap.getHeight();
        }
        H();
        invalidate();
    }

    public void L(e eVar) {
        this.T = eVar;
    }

    public void P() {
        this.g.mapRect(this.s, this.l);
        this.i.set(this.g);
        this.P = new dp(new h(null));
        Context context = getContext();
        g gVar = new g(null);
        xo xoVar = new xo(context);
        xoVar.f(2);
        xoVar.d(gVar);
        this.O = xoVar;
        this.N = new f(null);
        this.u.set(this.o);
        RectF rectF = this.u;
        float f2 = (float) (-this.x);
        rectF.inset(f2, f2);
        invalidate();
    }

    public void Q() {
        this.C = 0;
        this.c = null;
        this.k.setEmpty();
        this.o.setEmpty();
        this.g.reset();
        this.l.setEmpty();
        this.u.setEmpty();
        AnimatorSet animatorSet = this.E;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.E.cancel();
        }
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            this.F.cancel();
        }
        ValueAnimator valueAnimator2 = this.Q;
        if (valueAnimator2 != null && valueAnimator2.isStarted()) {
            this.Q.cancel();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.concat(this.f);
        this.I.setColor(androidx.core.content.a.b(getContext(), R.color.e7));
        canvas.drawRect(this.s, this.I);
        if (cm.l(this.c)) {
            canvas.drawBitmap(this.c, this.g, this.H);
        }
        canvas.drawColor(this.B);
        int saveLayer = canvas.saveLayer(null, this.I, 31);
        canvas.drawRect(this.s, this.I);
        this.I.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        if (cm.l(this.c)) {
            canvas.drawBitmap(this.c, this.g, this.I);
        }
        this.I.setXfermode(null);
        canvas.restoreToCount(saveLayer);
        this.n.set(Math.round(this.s.left - ((float) this.m)), Math.round(this.s.top - ((float) this.m)), Math.round(this.s.right + ((float) this.m)), Math.round(this.s.bottom + ((float) this.m)));
        this.D.setBounds(this.n);
        this.D.draw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.o.isEmpty()) {
            Rect rect = this.k;
            rect.left = i2;
            rect.top = i3;
            rect.right = i4;
            rect.bottom = i5;
            RectF rectF = this.o;
            int i6 = this.A;
            rectF.left = ((float) i2) + ((float) i6);
            rectF.top = ((float) i3) + ((float) i6);
            rectF.right = ((float) i4) - ((float) i6);
            rectF.bottom = ((float) i5) - ((float) (i6 * 2));
            H();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i4 = paddingLeft + paddingRight;
        Bitmap bitmap = this.c;
        if (bitmap != null) {
            i4 += bitmap.getWidth();
        }
        int i5 = paddingTop + paddingBottom;
        Bitmap bitmap2 = this.c;
        if (bitmap2 != null) {
            i5 += bitmap2.getHeight();
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i4, getSuggestedMinimumWidth()), i2, 0), View.resolveSizeAndState(Math.max(i5, getSuggestedMinimumHeight()), i3, 0));
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.K = d.IDLE;
            if (!this.u.contains(motionEvent.getX(), motionEvent.getY())) {
                this.K = d.SKIP;
            }
        }
        int[] iArr = a0;
        if (iArr == null) {
            d.values();
            iArr = new int[]{2, 3, 4, 6, 1, 5};
            a0 = iArr;
        }
        int i2 = iArr[this.K.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                ValueAnimator valueAnimator = this.F;
                if (valueAnimator != null && valueAnimator.isStarted()) {
                    this.F.cancel();
                }
                f.a(this.N, motionEvent);
                this.P.a(motionEvent);
                this.O.onTouchEvent(motionEvent);
            } else if (i2 == 3) {
                f.a(this.N, motionEvent);
            } else if (i2 == 4) {
                this.O.onTouchEvent(motionEvent);
            } else if (i2 != 6) {
                return false;
            } else {
                this.P.a(motionEvent);
            }
        }
        return true;
    }

    public CropEditorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = 50;
        this.d = new Matrix();
        this.e = new Matrix();
        this.f = new Matrix();
        this.g = new Matrix();
        this.h = new Matrix();
        this.i = new Matrix();
        this.j = new RectF();
        this.k = new Rect();
        this.l = new RectF();
        this.n = new Rect();
        this.o = new RectF();
        this.p = new RectF();
        this.q = new RectF();
        this.r = new Rect();
        this.s = new RectF();
        this.t = new RectF();
        this.u = new RectF();
        this.G = false;
        this.K = d.IDLE;
        this.L = new PointF();
        this.M = new RectF();
        new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.U = new a();
        this.V = new b();
        this.W = new a(this);
        Paint paint = new Paint(7);
        this.H = paint;
        paint.setColor(androidx.core.content.a.b(context, R.color.e7));
        this.I = new Paint(3);
        Paint paint2 = new Paint(3);
        this.J = paint2;
        paint2.setStrokeWidth((float) this.z);
        this.J.setColor(-1);
        this.J.setStyle(Paint.Style.STROKE);
        setBackground(null);
        this.D = context.getResources().getDrawable(R.drawable.ef);
        this.B = context.getResources().getColor(R.color.c0);
        this.z = c2.b(context, 0.5f);
        this.A = c2.b(context, 20.0f);
        this.x = c2.b(context, 25.0f);
        this.y = c2.b(context, 40.0f);
        this.m = c2.b(context, 6.0f) + 1;
    }
}
