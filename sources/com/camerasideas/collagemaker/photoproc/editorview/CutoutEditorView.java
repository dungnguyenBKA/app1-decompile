package com.camerasideas.collagemaker.photoproc.editorview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.camerasideas.collagemaker.activity.ImageCutoutActivity;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageTextFragment;
import com.camerasideas.collagemaker.filter.ISCropFilter;
import com.camerasideas.collagemaker.photoproc.graphicsitems.f;
import com.camerasideas.collagemaker.photoproc.graphicsitems.h;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import com.camerasideas.collagemaker.photoproc.graphicsitems.j;
import defpackage.ap;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class CutoutEditorView extends View implements zo {
    private static int K1;
    private static int L1;
    private RectF A;
    private long A0;
    private boolean A1;
    private int B;
    private long B0;
    private final List<String> B1;
    private int C;
    private int C0;
    private final List<String> C1;
    private float D;
    private PointF D0;
    private int D1;
    private Context E;
    private float E0;
    private boolean E1;
    private Bitmap F;
    private int F0;
    private boolean F1;
    private Bitmap G;
    private float G0;
    private boolean G1;
    private boolean H;
    private float H0;
    private Runnable H1;
    private boolean I;
    private PointF I0;
    private GestureDetector.SimpleOnGestureListener I1;
    private Matrix J;
    private p2 J0;
    private Path J1;
    private Matrix K;
    private boolean K0;
    private Matrix L;
    private boolean L0;
    private int M;
    private Paint M0;
    private int N;
    private final Paint N0;
    private int O;
    private float O0;
    private int P;
    private fp P0;
    private yo Q;
    private qm Q0;
    private Bitmap R;
    private gp R0;
    private Bitmap S;
    private boolean S0;
    private Bitmap T;
    private jn T0;
    private Canvas U;
    private String U0;
    private Paint V;
    private ISCropFilter V0;
    private com.camerasideas.collagemaker.photoproc.graphicsitems.d W;
    private int W0;
    private boolean X0;
    private d Y0;
    private Bitmap Z0;
    private com.camerasideas.collagemaker.photoproc.graphicsitems.d a0;
    private Point a1;
    private int b;
    private boolean b0;
    private int b1;
    private Uri c;
    private boolean c0;
    private int c1;
    private Paint d;
    private int d0;
    private int d1;
    private Paint e;
    private boolean e0;
    private int e1;
    private Paint f;
    private float f0;
    private Paint f1;
    private Paint g;
    private float g0;
    private boolean g1;
    private Paint h;
    private float h0;
    private Path h1;
    private boolean i;
    private float i0;
    private Path i1;
    private Bitmap j;
    private f j0;
    private Matrix j1;
    private Bitmap k;
    private Bitmap k0;
    private int k1;
    private Bitmap l;
    private Bitmap l0;
    private int l1;
    private Bitmap m;
    private Rect m0;
    private RectF m1;
    private Bitmap n;
    private mn n0;
    private Uri n1;
    private tq o;
    private float o0;
    private Uri o1;
    private tq p;
    private PaintFlagsDrawFilter p0;
    private float p1;
    private Bitmap q;
    private Path q0;
    private boolean q1;
    private Bitmap r;
    private float r0;
    private Paint r1;
    private Bitmap s;
    private float s0;
    private i s1;
    private Bitmap t;
    private RectF t0;
    private float t1;
    private Bitmap u;
    private float u0;
    private String u1;
    private Bitmap v;
    private Rect v0;
    private PointF v1;
    private RectF w;
    private Rect w0;
    private int w1;
    private RectF x;
    private c x0;
    private ISCropFilter x1;
    private RectF y;
    private com.camerasideas.collagemaker.photoproc.graphicsitems.b y0;
    private int y1;
    private RectF z;
    private com.camerasideas.collagemaker.photoproc.graphicsitems.b z0;
    private int z1;

    class a implements Runnable {
        a() {
        }

        public void run() {
            if (CutoutEditorView.this.x0 != null) {
                c cVar = CutoutEditorView.this.x0;
                com.camerasideas.collagemaker.photoproc.graphicsitems.b unused = CutoutEditorView.this.y0;
                com.camerasideas.collagemaker.photoproc.graphicsitems.b unused2 = CutoutEditorView.this.z0;
                Objects.requireNonNull((ImageCutoutActivity) cVar);
            }
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (CutoutEditorView.this.b != 0 && CutoutEditorView.this.b != 3 && CutoutEditorView.this.b != 4) {
                return true;
            }
            CutoutEditorView cutoutEditorView = CutoutEditorView.this;
            cutoutEditorView.s0(cutoutEditorView.s0);
            CutoutEditorView.this.K.set(CutoutEditorView.this.J);
            return true;
        }
    }

    public interface c {
    }

    public interface d {
    }

    private class e extends ap.b {
        e(a aVar) {
        }

        @Override // defpackage.ap.a
        public boolean c(ap apVar) {
            com.camerasideas.collagemaker.photoproc.graphicsitems.b m;
            float b = apVar.b();
            if (CutoutEditorView.this.b == 0 || CutoutEditorView.this.b == 3 || CutoutEditorView.this.b == 4) {
                CutoutEditorView.this.K.postRotate(-b, CutoutEditorView.this.m1.centerX(), CutoutEditorView.this.m1.centerY());
            } else if (CutoutEditorView.this.b == 1) {
                CutoutEditorView.this.L.postRotate(-b, CutoutEditorView.this.m1.centerX(), CutoutEditorView.this.m1.centerY());
            } else if (CutoutEditorView.this.b == 2 && (m = CutoutEditorView.this.s1.m()) != null) {
                float b2 = CutoutEditorView.this.P0.b(m, b);
                CutoutEditorView cutoutEditorView = CutoutEditorView.this;
                cutoutEditorView.K0 = cutoutEditorView.P0.c();
                m.v(b2, m.f(), m.g());
            }
            return true;
        }
    }

    public CutoutEditorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void B0() {
        int i2;
        int i3;
        if (wq.o(this.l)) {
            float width = this.t0.width() / this.t0.height();
            if (width >= ((float) this.l.getWidth()) / ((float) this.l.getHeight())) {
                i2 = this.l.getWidth();
                i3 = (int) (((float) i2) / width);
            } else {
                int height = this.l.getHeight();
                i2 = (int) (((float) height) * width);
                i3 = height;
            }
            int i4 = i2 / 2;
            int i5 = i3 / 2;
            this.v0.set((this.l.getWidth() / 2) - i4, (this.l.getHeight() / 2) - i5, ((this.l.getWidth() / 2) - i4) + i2, ((this.l.getHeight() / 2) - i5) + i3);
        }
    }

    private void E0() {
        if (wq.o(this.T)) {
            Bitmap bitmap = this.S;
            if (bitmap != null && Build.VERSION.SDK_INT < 21) {
                bitmap.recycle();
            }
            try {
                this.S = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused) {
                System.gc();
                em.h("CutoutEditorView", "updateEraserBitmap createBitmap OOM");
            }
            if (wq.o(this.S)) {
                Canvas canvas = new Canvas(this.S);
                canvas.drawARGB(0, 0, 0, 0);
                canvas.drawBitmap(this.T, 0.0f, 0.0f, (Paint) null);
                H0(canvas);
            }
        }
    }

    private void H0(Canvas canvas) {
        if (this.W != null) {
            this.V.setAntiAlias(true);
            this.V.setFilterBitmap(true);
            this.V.setDither(true);
            this.V.setStrokeWidth(this.W.d());
            this.V.setMaskFilter(new BlurMaskFilter(this.W.c(), BlurMaskFilter.Blur.NORMAL));
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            if (this.W.b() == f.ERASE) {
                this.V.setColor(0);
                this.V.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
                canvas.drawPath(this.W, this.V);
                return;
            }
            this.V.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
            this.V.setColor(-16776961);
            com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar = this.W;
            if (dVar != null && wq.o(this.j)) {
                canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                canvas.drawPath(dVar, this.V);
                canvas.drawBitmap(this.j, 0.0f, 0.0f, this.r1);
            }
        }
    }

    private void I0() {
        Bitmap bitmap;
        if (this.O <= 0 || this.P <= 0) {
            em.h("CutoutEditorView", "updatePathBitmap bitmap width or height not valid");
            return;
        }
        Bitmap bitmap2 = this.R;
        if (bitmap2 != null && Build.VERSION.SDK_INT < 21) {
            bitmap2.recycle();
        }
        try {
            bitmap = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
            try {
                this.R = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused) {
            }
        } catch (OutOfMemoryError unused2) {
            bitmap = null;
            System.gc();
            em.h("CutoutEditorView", "updatePathBitmap createBitmap OOM");
            if (wq.o(bitmap)) {
                return;
            }
        }
        if (wq.o(bitmap) && wq.o(this.R)) {
            Canvas canvas = new Canvas(bitmap);
            H0(canvas);
            canvas.setBitmap(this.R);
            canvas.drawARGB(0, 0, 0, 0);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            if (Build.VERSION.SDK_INT < 21) {
                bitmap.recycle();
            }
        }
    }

    private boolean W(MotionEvent motionEvent) {
        boolean z2;
        com.camerasideas.collagemaker.photoproc.graphicsitems.b m2;
        f fVar = f.ERASE;
        if (O() || this.b == 2) {
            this.w1 = 0;
        } else {
            this.w1 = this.y1;
        }
        int i2 = this.b;
        if (i2 == 0 || i2 == 3) {
            this.v1.set(motionEvent.getX(), motionEvent.getY());
        }
        float x2 = motionEvent.getX();
        this.f0 = x2;
        this.h0 = x2;
        float y2 = motionEvent.getY() - ((float) this.w1);
        this.g0 = y2;
        this.i0 = y2;
        int i3 = this.b;
        if (i3 == 0 || (i3 == 3 && (this.j0 != fVar || O()))) {
            this.c0 = false;
            Matrix matrix = new Matrix(this.K);
            Matrix matrix2 = new Matrix();
            matrix.invert(matrix2);
            float[] fArr = {this.h0, this.i0};
            matrix2.mapPoints(fArr);
            float f2 = fArr[0];
            float f3 = fArr[1];
            if (this.b0 || this.H) {
                com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar = new com.camerasideas.collagemaker.photoproc.graphicsitems.d(this.E);
                this.W = dVar;
                dVar.a(new PointF(f2, f3));
                this.W.g(this.D / this.r0);
                this.W.f((float) this.C);
                this.W.e(this.j0);
            } else {
                this.g1 = true;
                this.c0 = false;
                com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar2 = new com.camerasideas.collagemaker.photoproc.graphicsitems.d(this.E);
                this.a0 = dVar2;
                dVar2.a(new PointF(f2, f3));
            }
            if (this.j0 == fVar) {
                Bitmap bitmap = this.T;
                if (bitmap != null && Build.VERSION.SDK_INT < 21) {
                    bitmap.recycle();
                }
                try {
                    if (wq.o(this.k0)) {
                        this.T = this.k0.copy(Bitmap.Config.ARGB_8888, true);
                    }
                } catch (OutOfMemoryError unused) {
                    System.gc();
                    em.h("CutoutEditorView", "touchDown copy Bitmap for EraserLayer occur OOM");
                    return false;
                }
            }
            return true;
        }
        if (this.b == 2) {
            this.F0 |= 0;
            if (this.s1.o() && (m2 = this.s1.m()) != null) {
                if (this.x.contains(this.h0, this.i0)) {
                    this.I0.set(this.h0, this.i0);
                    float[] fArr2 = m2.l;
                    PointF pointF = new PointF((fArr2[2] + fArr2[4]) / 2.0f, (fArr2[3] + fArr2[5]) / 2.0f);
                    float f4 = pointF.x;
                    float[] fArr3 = m2.l;
                    m2.n = androidx.core.app.b.A(new PointF(f4 - fArr3[8], fArr3[9] - pointF.y));
                    this.D0 = new PointF(this.h0, this.i0);
                    this.E0 = 0.0f;
                    this.H0 = androidx.core.app.b.p(new PointF((float) ((int) this.h0), (float) ((int) this.i0)), m2.e());
                    return true;
                } else if (this.y.contains(this.h0, this.i0)) {
                    this.I0.set(this.h0, this.i0);
                    c cVar = this.x0;
                    if (cVar != null) {
                        ((ImageCutoutActivity) cVar).s(m2);
                    }
                    return false;
                } else if (this.w.contains(this.h0, this.i0)) {
                    c cVar2 = this.x0;
                    if (cVar2 != null) {
                        ((ImageCutoutActivity) cVar2).t(m2);
                    }
                    return false;
                } else if (this.z.contains(this.h0, this.i0)) {
                    this.I0.set(this.h0, this.i0);
                    m2.y(!m2.q());
                    invalidate();
                    return false;
                } else if (this.A.contains(this.h0, this.i0)) {
                    this.i = true;
                    return true;
                }
            }
            this.y0 = this.s1.m();
            float f5 = this.h0;
            float f6 = this.i0;
            int size = this.s1.l().size() - 1;
            while (true) {
                if (size >= 0) {
                    com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar = this.s1.l().get(size);
                    if (bVar.s(f5, f6)) {
                        this.s1.s(size);
                        bVar.i = true;
                        z2 = true;
                        break;
                    }
                    size--;
                } else {
                    this.s1.s(-1);
                    for (com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar2 : this.s1.l()) {
                        bVar2.i = false;
                    }
                    z2 = false;
                }
            }
            if (z2) {
                this.C0 = 1;
                this.z0 = this.s1.m();
                if (System.currentTimeMillis() - this.B0 < 200) {
                    com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar3 = this.z0;
                    PointF pointF2 = this.I0;
                    if (bVar3.s(pointF2.x, pointF2.y)) {
                        removeCallbacks(this.H1);
                        c cVar3 = this.x0;
                        if (cVar3 != null) {
                            ImageCutoutActivity imageCutoutActivity = (ImageCutoutActivity) cVar3;
                            if (this.z0 instanceof j) {
                                androidx.core.app.b.s(imageCutoutActivity, ImageTextFragment.class, null, R.id.hl, true, true);
                            }
                        }
                        this.I0.set(this.h0, this.i0);
                    }
                }
                if (this.y0 == this.z0 && System.currentTimeMillis() - this.B0 >= 200) {
                    this.S0 = true;
                }
                this.I0.set(this.h0, this.i0);
            } else {
                this.z0 = null;
                this.C0 = 0;
            }
            this.A0 = System.currentTimeMillis();
            this.B0 = System.currentTimeMillis();
            c cVar4 = this.x0;
            if (cVar4 != null) {
                ((ImageCutoutActivity) cVar4).A(this, this.y0, this.z0);
            }
        }
        return false;
    }

    private void Z() {
        if (wq.o(this.k0)) {
            if (this.B1.size() > 0) {
                Bitmap bitmap = this.k0;
                List<String> list = this.B1;
                if (wq.c(bitmap, c.a.get(list.get(list.size() - 1)))) {
                    return;
                }
            } else if (wq.c(this.k0, c.a.get("Original"))) {
                return;
            }
            this.C1.clear();
            String str = "Undo_" + System.currentTimeMillis() + "_" + this.B1.size();
            this.B1.add(str);
            try {
                c.b(str, this.k0.copy(Bitmap.Config.ARGB_8888, true));
            } catch (OutOfMemoryError unused) {
                em.h("CutoutEditorView", "saveOverlayDrawingCache OutOfMemoryError");
                System.gc();
            }
            if (this.B1.size() > 0) {
                am.a().b(new com.camerasideas.collagemaker.message.f(1));
            }
        }
    }

    private boolean a0(boolean z2, boolean z3) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (!this.e0 || this.U == null) {
            return false;
        }
        this.e0 = false;
        if (z2 && wq.o(this.F)) {
            try {
                bitmap2 = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused) {
                System.gc();
                em.h("CutoutEditorView", "updateEraserBitmap createBitmap OOM");
                bitmap2 = null;
            }
            if (wq.o(bitmap2)) {
                Canvas canvas = new Canvas(bitmap2);
                if (wq.o(this.F) && wq.o(this.j)) {
                    Paint paint = new Paint(1);
                    paint.setAntiAlias(true);
                    paint.setFilterBitmap(true);
                    paint.setDither(true);
                    canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                    canvas.drawBitmap(this.F, 0.0f, 0.0f, (Paint) null);
                    paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                    canvas.drawBitmap(this.j, 0.0f, 0.0f, paint);
                }
                this.U.drawColor(0, PorterDuff.Mode.CLEAR);
                this.U.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
            }
        } else if (!z3 || !this.b0 || !wq.o(this.G)) {
            f fVar = this.j0;
            if (fVar == f.ERASE) {
                E0();
                if (wq.o(this.S)) {
                    this.U.drawColor(0, PorterDuff.Mode.CLEAR);
                    this.U.drawBitmap(this.S, 0.0f, 0.0f, (Paint) null);
                    this.S.recycle();
                }
            } else if (fVar == f.NORMAL) {
                I0();
                if (wq.o(this.R)) {
                    this.U.drawBitmap(this.R, 0.0f, 0.0f, (Paint) null);
                    this.R.recycle();
                }
            }
        } else {
            try {
                bitmap = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused2) {
                System.gc();
                em.h("CutoutEditorView", "updateEraserBitmap createBitmap OOM");
                bitmap = null;
            }
            if (wq.o(bitmap)) {
                Canvas canvas2 = new Canvas(bitmap);
                if (wq.o(this.G) && wq.o(this.j)) {
                    Paint paint2 = new Paint(1);
                    paint2.setAntiAlias(true);
                    paint2.setFilterBitmap(true);
                    paint2.setDither(true);
                    canvas2.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                    canvas2.drawBitmap(this.G, 0.0f, 0.0f, (Paint) null);
                    paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                    canvas2.drawBitmap(this.j, 0.0f, 0.0f, paint2);
                }
                this.U.drawColor(0, PorterDuff.Mode.CLEAR);
                this.U.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            }
        }
        Z();
        return true;
    }

    private void x(int i2, int i3) {
        if (wq.o(this.Z0)) {
            try {
                this.a1.set(i2, i3);
                int pixel = this.Z0.getPixel(i2, i3);
                this.b1 = pixel;
                d dVar = this.Y0;
                if (dVar == null || pixel == 0) {
                    invalidate();
                } else {
                    ((com.camerasideas.collagemaker.activity.fragment.imagefragment.a) dVar).a(pixel);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void z0() {
        try {
            if (wq.o(this.k0)) {
                int width = this.k0.getWidth();
                int height = this.k0.getHeight();
                int[] iArr = new int[(width * height)];
                this.k0.getPixels(iArr, 0, width, 0, 0, width, height);
                int[] iArr2 = (int[]) iArr.clone();
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                NativeProc.nativeSmooth(iArr, iArr2, width, height);
                this.k0.setPixels(iArr2, 0, width, 0, 0, width, height);
            }
        } catch (OutOfMemoryError unused) {
            em.h("CutoutEditorView", "smoothOverlayDrawingCache OutOfMemoryError");
            System.gc();
        }
    }

    public ISCropFilter A() {
        return this.V0;
    }

    public boolean A0(d dVar) {
        if (!wq.o(this.Z0)) {
            try {
                this.Z0 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (wq.o(this.Z0)) {
            try {
                this.X0 = true;
                draw(new Canvas(this.Z0));
                this.X0 = false;
                this.Y0 = dVar;
                this.a1 = new Point();
                this.c1 = c2.b(getContext(), 3.0f);
                this.d1 = c2.b(getContext(), 2.0f);
                this.e1 = c2.b(getContext(), 35.0f);
                x(getWidth() / 2, getHeight() / 2);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public Uri B() {
        return this.c;
    }

    public float C() {
        return this.t1;
    }

    public void C0() {
        em.h("CutoutEditorView", "updateAutoAiCutout");
        M();
        this.a0 = null;
        this.c0 = false;
        this.b0 = false;
        this.H = true;
        this.e0 = true;
        this.W = new com.camerasideas.collagemaker.photoproc.graphicsitems.d(this.E);
        F0();
        a0(true, false);
        this.E1 = false;
        this.F1 = false;
        this.G1 = false;
    }

    public jn D() {
        return this.T0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x004b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void D0() {
        /*
        // Method dump skipped, instructions count: 205
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView.D0():void");
    }

    public String E() {
        boolean z2 = this.H;
        if (!z2) {
            return "Mannual";
        }
        if (z2) {
            return "AI";
        }
        return null;
    }

    public float F() {
        int i2;
        float f2;
        int i3;
        float f3 = this.p1;
        if (f3 != 0.0f) {
            return f3;
        }
        int i4 = this.O;
        if (i4 != 0 && (i3 = this.P) != 0) {
            return ((float) i4) / ((float) i3);
        }
        Context context = this.E;
        Uri uri = this.n1;
        if (context == null || uri == null) {
            return 1.0f;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            wq.p(context, uri, options);
            String k2 = cm.k(context, uri);
            if (k2 == null) {
                k2 = rq.c(context, uri);
            }
            if (wq.n(k2) % 180 != 0) {
                f2 = (float) options.outHeight;
                i2 = options.outWidth;
            } else {
                f2 = (float) options.outWidth;
                i2 = options.outHeight;
            }
            return f2 / ((float) i2);
        } catch (Exception | OutOfMemoryError e2) {
            e2.printStackTrace();
            return 1.0f;
        }
    }

    public void F0() {
        this.B1.clear();
        this.C1.clear();
        c.a.evictAll();
        this.E1 = false;
        this.F1 = false;
        this.G1 = false;
        if (this.O > 0 && this.P > 0) {
            try {
                Bitmap bitmap = this.k0;
                if (bitmap != null && Build.VERSION.SDK_INT < 21) {
                    bitmap.recycle();
                }
                this.k0 = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.k0);
                this.U = canvas;
                canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                float min = Math.min((((float) this.M) * 1.0f) / ((float) this.O), (((float) this.N) * 1.0f) / ((float) this.P));
                this.r0 = min;
                this.s0 = min;
                w0(null);
                this.K.set(this.J);
                if (wq.o(this.j)) {
                    this.U.drawBitmap(this.j, 0.0f, 0.0f, (Paint) null);
                    try {
                        c.b("Original", this.k0.copy(Bitmap.Config.ARGB_8888, true));
                    } catch (OutOfMemoryError unused) {
                        em.h("CutoutEditorView", "saveOverlayDrawingCache OutOfMemoryError");
                        System.gc();
                    }
                }
            } catch (OutOfMemoryError unused2) {
                System.gc();
                em.h("CutoutEditorView", "OOM occurred when setOrgBitmap, return");
            }
        }
    }

    public Point G(int i2) {
        if (this.b == 2 && this.n1 != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            wq.p(this.E, this.n1, options);
            int i3 = options.outWidth;
            if (i3 > 0 && i3 < i2) {
                i2 = i3;
            }
            return new Point(i2, (int) (((float) i2) / this.t1));
        } else if (wq.o(this.j)) {
            return new Point(this.j.getWidth(), this.j.getHeight());
        } else {
            StringBuilder q2 = ic.q("getImageSizeForSaving return null, mCutoutEditMode = ");
            q2.append(this.b);
            q2.append(", mBitmapBg = ");
            q2.append(this.m);
            q2.append(", mBitmapOrg = ");
            q2.append(this.j);
            em.h("CutoutEditorView", q2.toString());
            return null;
        }
    }

    public void G0() {
        this.v1.set(0.0f, 0.0f);
        float min = Math.min((((float) this.M) * 1.0f) / ((float) this.O), (((float) this.N) * 1.0f) / ((float) this.P));
        this.r0 = min;
        this.s0 = min;
        w0(null);
        this.K.set(this.J);
    }

    public Bitmap H() {
        return this.j;
    }

    public String I() {
        if (TextUtils.isEmpty(this.u1)) {
            return this.E.getString(R.string.c_);
        }
        return this.u1;
    }

    public String J() {
        return this.U0;
    }

    public void J0(int i2) {
        this.D1 = i2;
        if (wq.o(this.k0) && wq.o(this.l0)) {
            int width = this.k0.getWidth();
            int height = this.k0.getHeight();
            if (i2 == 0) {
                int[] iArr = new int[(width * height)];
                this.k0.getPixels(iArr, 0, width, 0, 0, width, height);
                this.l0.setPixels(iArr, 0, width, 0, 0, width, height);
                return;
            }
            try {
                this.G1 = true;
                int[] iArr2 = new int[(width * height)];
                this.k0.getPixels(iArr2, 0, width, 0, 0, width, height);
                int[] iArr3 = (int[]) iArr2.clone();
                while (true) {
                    NativeProc.nativeRemoveSpike(iArr2, iArr3, width, height);
                    System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                    if (i2 >= 2) {
                        NativeProc.nativeClip1Px(iArr2, iArr3, width, height);
                        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                        i2--;
                    } else {
                        NativeProc.nativeSmooth(iArr2, iArr3, width, height);
                        this.l0.setPixels(iArr3, 0, width, 0, 0, width, height);
                        return;
                    }
                }
            } catch (OutOfMemoryError unused) {
                System.gc();
                em.h("CutoutEditorView", "updateSmoothBitmap OOM");
            }
        }
    }

    public mn K() {
        return this.n0;
    }

    public int L() {
        return this.D1;
    }

    public void M() {
        this.v1.set(((float) this.M) * 0.67f, ((float) this.N) * 0.3f);
    }

    public boolean N() {
        return this.A1;
    }

    public boolean O() {
        return !this.H && !this.b0;
    }

    public boolean P() {
        return !this.H;
    }

    public boolean Q() {
        return this.b0;
    }

    public boolean R() {
        return this.E1;
    }

    public boolean S() {
        return this.F1;
    }

    public boolean T() {
        return this.G1;
    }

    public void U() {
        try {
            if (getWidth() > 0 && getHeight() > 0) {
                this.Z0 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean V() {
        return this.o1 != null && this.q1;
    }

    public void X() {
        this.v1.set(0.0f, 0.0f);
    }

    public int Y(Bitmap bitmap) {
        Bitmap bitmap2;
        float f2;
        float f3;
        float f4;
        int i2;
        int i3;
        Bitmap e2;
        im.b("CutoutEditorView/Save");
        Canvas canvas = new Canvas(bitmap);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        wq.p(this.E, this.n1, options);
        int a2 = wq.a(Math.max(width, height), Math.max(width, height), options.outWidth, options.outHeight);
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = a2;
        Bitmap q2 = wq.q(this.E, this.n1, options2, 1);
        if (!wq.o(q2)) {
            return 773;
        }
        int n2 = wq.n(rq.h(this.E, this.n1));
        if (!(n2 == 0 || (e2 = wq.e(q2, n2)) == null)) {
            q2 = e2;
        }
        if (!wq.o(q2)) {
            return 773;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect(0, 0, width, height);
        if (wq.o(this.m)) {
            float f5 = ((float) width) / ((float) height);
            if (f5 >= ((float) this.m.getWidth()) / ((float) this.m.getHeight())) {
                i2 = this.m.getWidth();
                i3 = (int) (((float) i2) / f5);
            } else {
                int height2 = this.m.getHeight();
                i2 = (int) (((float) height2) * f5);
                i3 = height2;
            }
            int i4 = i2 / 2;
            int i5 = i3 / 2;
            rect.set((this.m.getWidth() / 2) - i4, (this.m.getHeight() / 2) - i5, ((this.m.getWidth() / 2) - i4) + i2, ((this.m.getHeight() / 2) - i5) + i3);
            canvas.drawBitmap(this.m, rect, rect2, (Paint) null);
        }
        try {
            bitmap2 = Bitmap.createBitmap(q2.getWidth(), q2.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmap2);
            if (this.n0 != null) {
                Matrix matrix = new Matrix();
                matrix.postScale(0.9f, 0.9f);
                matrix.postTranslate((((float) canvas2.getWidth()) * 0.100000024f) / 2.0f, (((float) canvas2.getHeight()) * 0.100000024f) / 2.0f);
                canvas2.drawBitmap(q2, matrix, null);
            } else {
                canvas2.drawBitmap(q2, 0.0f, 0.0f, (Paint) null);
            }
            Rect rect3 = new Rect(0, 0, q2.getWidth(), q2.getHeight());
            Rect rect4 = new Rect(0, 0, this.q.getWidth(), this.q.getHeight());
            Paint paint = new Paint(3);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            if (wq.o(this.q)) {
                canvas2.drawBitmap(this.q, rect4, rect3, paint);
            }
            if (this.x1.r()) {
                bitmap2 = this.x1.p(bitmap2);
            }
        } catch (OutOfMemoryError unused) {
            em.h("CutoutEditorView", "Save BitmapSticker fail!");
            if (this.x1.r()) {
                bitmap2 = this.x1.p(this.q);
            } else {
                bitmap2 = this.q;
            }
        }
        for (com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar : this.s1.l()) {
            float n3 = (float) bVar.n();
            float l2 = (float) bVar.l();
            float f6 = n3 / l2;
            float f7 = (float) width;
            float f8 = (float) height;
            if (f7 / f8 > f6) {
                f4 = f7 / n3;
                f2 = (-((f7 / f6) - f8)) / 2.0f;
                f3 = 0.0f;
            } else {
                f4 = f8 / l2;
                f3 = (-((f8 * f6) - f7)) / 2.0f;
                f2 = 0.0f;
            }
            if (bVar instanceof h) {
                ((h) bVar).F(canvas, bitmap2, f4, f3, f2);
            } else if (bVar instanceof j) {
                ((j) bVar).L(canvas, f4, f3, f2);
            }
        }
        if (!this.I || !wq.o(this.n)) {
            return 0;
        }
        canvas.drawBitmap(this.n, rect, rect2, (Paint) null);
        return 0;
    }

    @Override // defpackage.zo
    public void a(MotionEvent motionEvent, float f2, float f3) {
        int i2 = this.b;
        if (i2 == 0 || i2 == 3 || i2 == 4) {
            if (motionEvent.getPointerCount() != 1) {
                this.K.postTranslate(f2, f3);
            }
        } else if (i2 == 1 && this.q0 != null) {
            Path path = new Path(this.q0);
            path.transform(this.L);
            RectF rectF = new RectF();
            path.computeBounds(rectF, true);
            Region region = new Region();
            region.setPath(path, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
            int i3 = (region.getBounds().right + region.getBounds().left) / 2;
            float f4 = (float) ((region.getBounds().bottom + region.getBounds().top) / 2);
            RectF rectF2 = this.m1;
            float f5 = rectF2.top;
            if (f4 + f3 < f5) {
                f3 = f5 - f4;
            }
            float f6 = rectF2.bottom;
            if (f4 + f3 > f6) {
                f3 = f6 - f4;
            }
            float f7 = (float) i3;
            float f8 = rectF2.left;
            if (f7 + f2 < f8) {
                f2 = f8 - f7;
            }
            float f9 = rectF2.right;
            if (f7 + f2 > f9) {
                f2 = f9 - f7;
            }
            this.L.postTranslate(f2, f3);
        } else if (i2 == 2 && motionEvent.getPointerCount() != 1 && this.s1.o()) {
            this.s1.m().w(f2, f3);
        }
    }

    @Override // defpackage.zo
    public void b(MotionEvent motionEvent, float f2, float f3, float f4, float f5) {
    }

    public void b0(int i2) {
        this.C = i2;
    }

    @Override // defpackage.zo
    public void c(MotionEvent motionEvent, float f2, float f3, float f4) {
        if (motionEvent.getPointerCount() != 1) {
            int i2 = this.b;
            if (i2 == 0 || i2 == 3 || i2 == 4) {
                float f5 = this.r0;
                float f6 = this.s0;
                if (f5 * f2 >= 0.5f * f6 && f5 * f2 <= f6 * 10.0f) {
                    this.r0 = f5 * f2;
                    this.K.postScale(f2, f2, f3, f4);
                }
            } else if (i2 == 1) {
                float f7 = this.o0;
                if (f7 * f2 >= 0.1f && f7 * f2 <= 2.0f) {
                    this.o0 = f7 * f2;
                    this.L.postScale(f2, f2, f3, f4);
                }
            } else if (i2 == 2 && this.s1.o()) {
                com.camerasideas.collagemaker.photoproc.graphicsitems.b m2 = this.s1.m();
                if (((double) (m2.h() * f2)) >= m2.p() * 0.20000000298023224d && ((double) (m2.h() * f2)) <= m2.p() * 10.0d) {
                    m2.u(f2, f3, f4);
                }
            }
        }
    }

    public void c0(boolean z2) {
        this.H = z2;
        this.b0 = false;
        if (!z2) {
            this.W = null;
        }
    }

    @Override // defpackage.zo
    public void d() {
    }

    public void d0(int i2) {
        this.W0 = i2;
    }

    @Override // defpackage.zo
    public void e() {
    }

    public void e0(ISCropFilter iSCropFilter) {
        this.V0 = iSCropFilter;
    }

    public void f0(Uri uri) {
        this.c = uri;
    }

    public void g0(qm qmVar) {
        this.Q0 = qmVar;
    }

    public void h0(Bitmap bitmap) {
        M();
        this.H = true;
        this.F = bitmap;
        this.e0 = true;
        this.W = new com.camerasideas.collagemaker.photoproc.graphicsitems.d(this.E);
        a0(true, false);
    }

    public void i0(int i2, boolean z2) {
        Bitmap bitmap = null;
        this.T0 = null;
        this.o1 = null;
        this.n = null;
        this.I = false;
        Bitmap d2 = wq.d((int) this.t0.width(), (int) this.t0.height(), Bitmap.Config.ARGB_8888);
        if (wq.o(d2)) {
            new Canvas(d2).drawColor(i2);
            bitmap = d2;
        }
        this.m = bitmap;
        if (wq.o(bitmap)) {
            this.w0.set(0, 0, this.m.getWidth(), this.m.getHeight());
        } else {
            em.h("CutoutEditorView", "Load Cutout Bg Failed!");
        }
        int i3 = c3.g;
        postInvalidateOnAnimation();
    }

    public boolean j0(Uri uri, ISCropFilter iSCropFilter) {
        int i2;
        int i3;
        this.n = null;
        this.m = null;
        this.I = false;
        this.T0 = null;
        this.o1 = uri;
        if (uri != null || !wq.o(this.j) || !wq.o(this.l)) {
            try {
                Uri uri2 = this.o1;
                if (uri2 != null) {
                    this.q1 = rq.h(this.E, cm.c(uri2)).endsWith(".png");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Bitmap s2 = wq.s(this.E, this.M, this.N, uri, Bitmap.Config.ARGB_8888);
            this.m = s2;
            if (wq.o(s2) && iSCropFilter != null) {
                this.m = iSCropFilter.p(this.m);
            }
            if (!wq.o(this.m) || this.t0.width() <= 0.0f || this.t0.height() <= 0.0f) {
                em.h("CutoutEditorView", "Load Cutout Bg Failed!");
                return false;
            }
            float width = this.t0.width() / this.t0.height();
            if (width >= ((float) this.m.getWidth()) / ((float) this.m.getHeight())) {
                i2 = this.m.getWidth();
                i3 = (int) (((float) i2) / width);
            } else {
                int height = this.m.getHeight();
                i2 = (int) (((float) height) * width);
                i3 = height;
            }
            int i4 = i2 / 2;
            int i5 = i3 / 2;
            this.w0.set((this.m.getWidth() / 2) - i4, (this.m.getHeight() / 2) - i5, ((this.m.getWidth() / 2) - i4) + i2, ((this.m.getHeight() / 2) - i5) + i3);
            int i6 = c3.g;
            postInvalidateOnAnimation();
            return true;
        }
        B0();
        int i7 = c3.g;
        postInvalidateOnAnimation();
        return false;
    }

    public void k0(float f2) {
        this.D = f2;
        invalidate();
    }

    public boolean l0(jn jnVar) {
        int i2;
        int i3;
        boolean z2 = false;
        if (jnVar != null && bm.e(jnVar.a())) {
            this.T0 = jnVar;
            this.o1 = null;
            this.I = !TextUtils.isEmpty(jnVar.d()) && bm.e(jnVar.d());
            Uri e2 = cm.e(jnVar.a());
            if (jnVar.g()) {
                if (this.o == null) {
                    this.o = new tq();
                }
                if (this.I) {
                    if (this.p == null) {
                        this.p = new tq();
                    }
                    this.n = this.p.b(this.E, this.M, this.N, jnVar.d(), 1);
                }
                this.m = this.o.b(this.E, this.M, this.N, jnVar.a(), 1);
            } else {
                this.n = wq.s(this.E, this.M, this.N, cm.e(jnVar.d()), Bitmap.Config.ARGB_8888);
                this.m = wq.s(this.E, this.M, this.N, e2, Bitmap.Config.ARGB_8888);
            }
            if (jnVar.b() != null) {
                this.m = jnVar.b().p(this.m);
                if (this.I && wq.o(this.n)) {
                    this.n = jnVar.b().p(this.n);
                }
            }
            float width = this.t0.width();
            float height = this.t0.height();
            if (wq.o(this.m) && width > 0.0f && height > 0.0f) {
                int width2 = this.m.getWidth();
                int height2 = this.m.getHeight();
                float f2 = width / height;
                float f3 = (float) width2;
                float f4 = (float) height2;
                if (f2 >= f3 / f4) {
                    i3 = (int) (f3 / f2);
                    i2 = width2;
                } else {
                    i2 = (int) (f4 * f2);
                    i3 = height2;
                }
                int i4 = (width2 / 2) - (i2 / 2);
                int i5 = (height2 / 2) - (i3 / 2);
                this.w0.set(i4, i5, i2 + i4, i3 + i5);
                z2 = true;
            }
            int i6 = c3.g;
            postInvalidateOnAnimation();
        }
        return z2;
    }

    public boolean m0(int i2) {
        return n0(i2, false);
    }

    public boolean n0(int i2, boolean z2) {
        int i3;
        float f2;
        float f3;
        float f4;
        int i4 = this.b;
        int i5 = 0;
        if (i2 == i4) {
            return false;
        }
        Rect rect = null;
        if (i2 == 1) {
            this.H = false;
            this.a0 = null;
            if (i4 == 0) {
                this.K.set(this.J);
                this.o0 = 0.9f;
            }
        } else if (i2 == 0 || i2 == -1 || i2 == 3) {
            if (i4 == 1) {
                w0(this.n0);
                this.K.set(this.J);
                this.r0 = Math.min((((float) this.M) * 1.0f) / ((float) this.O), (((float) this.N) * 1.0f) / ((float) this.P));
            } else if (i4 == 4 && wq.o(this.l0) && this.D1 > 0) {
                try {
                    this.k0 = this.l0.copy(Bitmap.Config.ARGB_8888, true);
                } catch (OutOfMemoryError unused) {
                    em.h("CutoutEditorView", "setCutoutMode OutOfMemoryError");
                    System.gc();
                }
                if (wq.o(this.k0)) {
                    Canvas canvas = new Canvas(this.k0);
                    this.U = canvas;
                    canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                    Z();
                }
                this.l0 = null;
            }
        } else if (i2 == 2) {
            if (wq.o(this.j) && wq.o(this.l)) {
                this.m = null;
                int i6 = this.M;
                int i7 = this.N;
                float f5 = ((float) i6) / this.t1;
                float f6 = ((float) i7) / 1.0f;
                float min = Math.min(f6, f5);
                float f7 = this.t1;
                if (f6 > f5) {
                    RectF rectF = this.t0;
                    float f8 = ((float) this.N) / 2.0f;
                    float f9 = (min * 1.0f) / 2.0f;
                    rectF.set(0.0f, f8 - f9, (float) this.M, f8 + f9);
                } else {
                    RectF rectF2 = this.t0;
                    float f10 = ((float) this.M) / 2.0f;
                    float f11 = (f7 * min) / 2.0f;
                    rectF2.set(f10 - f11, 0.0f, f10 + f11, (float) this.N);
                }
                B0();
            }
            int i8 = this.b;
            im.b("CutoutEditorView/SaveToSticker");
            int i9 = this.O;
            if (i9 > 0 && (i3 = this.P) > 0) {
                Bitmap createBitmap = Bitmap.createBitmap(i9, i3, Bitmap.Config.ARGB_8888);
                this.q = createBitmap;
                if (wq.o(createBitmap) && wq.o(this.j)) {
                    Canvas canvas2 = new Canvas(this.q);
                    int width = canvas2.getWidth();
                    int height = canvas2.getHeight();
                    if (i8 == 4) {
                        if (wq.o(this.l0)) {
                            canvas2.drawBitmap(this.l0, 0.0f, 0.0f, (Paint) null);
                        } else if (wq.o(this.k0)) {
                            canvas2.drawBitmap(this.k0, 0.0f, 0.0f, (Paint) null);
                        } else {
                            canvas2.drawBitmap(this.j, 0.0f, 0.0f, (Paint) null);
                        }
                    } else if (i8 == 3) {
                        if (wq.o(this.k0)) {
                            canvas2.drawBitmap(this.k0, 0.0f, 0.0f, (Paint) null);
                        } else {
                            canvas2.drawBitmap(this.j, 0.0f, 0.0f, (Paint) null);
                        }
                    } else if (i8 == 0) {
                        if (!this.H && !this.b0) {
                            canvas2.drawBitmap(this.j, 0.0f, 0.0f, (Paint) null);
                        } else if (wq.o(this.k0)) {
                            canvas2.drawBitmap(this.k0, 0.0f, 0.0f, (Paint) null);
                        }
                    } else if (i8 == 1) {
                        Matrix matrix = new Matrix();
                        matrix.postScale(0.9f, 0.9f);
                        float f12 = (float) width;
                        float f13 = (float) height;
                        matrix.postTranslate((f12 / 2.0f) - ((((float) this.O) * 0.9f) / 2.0f), (f13 / 2.0f) - ((((float) this.P) * 0.9f) / 2.0f));
                        RectF rectF3 = new RectF(0.0f, 0.0f, f12, f13);
                        RectF rectF4 = new RectF();
                        matrix.mapRect(rectF4, rectF3);
                        canvas2.clipRect(rectF4);
                        int saveLayer = canvas2.saveLayer(null, this.f, 31);
                        Matrix matrix2 = new Matrix(this.L);
                        int width2 = canvas2.getWidth();
                        int height2 = canvas2.getHeight();
                        float f14 = (float) this.M;
                        float f15 = (float) this.N;
                        float f16 = f14 / f15;
                        float f17 = (float) width2;
                        float f18 = (float) height2;
                        if (f17 / f18 > f16) {
                            f2 = f17 / f14;
                            f4 = (-((f17 / f16) - f18)) / 2.0f;
                            f3 = 0.0f;
                        } else {
                            f2 = f18 / f15;
                            f3 = (-((f18 * f16) - f17)) / 2.0f;
                            f4 = 0.0f;
                        }
                        matrix2.postScale(f2, f2, 0.0f, 0.0f);
                        matrix2.postTranslate(f3, f4);
                        if (!(this.n0 == null || this.q0 == null)) {
                            Path path = new Path(this.q0);
                            path.transform(matrix2);
                            canvas2.drawPath(path, this.f);
                            this.f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
                        }
                        canvas2.drawBitmap(this.j, matrix, this.f);
                        this.f.setXfermode(null);
                        canvas2.restoreToCount(saveLayer);
                    }
                    h hVar = new h();
                    hVar.A(this.M);
                    hVar.z(this.N);
                    hVar.G(this.t0);
                    Bitmap bitmap = this.q;
                    Rect rect2 = new Rect();
                    if (bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
                        int width3 = bitmap.getWidth();
                        int height3 = bitmap.getHeight();
                        try {
                            int[] iArr = new int[(width3 * height3)];
                            bitmap.getPixels(iArr, 0, width3, 0, 0, width3, height3);
                            int i10 = 0;
                            int i11 = 0;
                            int i12 = 0;
                            int i13 = 0;
                            int i14 = 0;
                            while (i10 < height3) {
                                while (i5 < width3) {
                                    if (((iArr[(i10 * width3) + i5] >> 24) & 255) > 80) {
                                        if (i14 == i12 && i12 == 0) {
                                            i12 = i10;
                                            i14 = i12;
                                        } else {
                                            if (i10 < i12) {
                                                i12 = i10;
                                            }
                                            if (i10 > i14) {
                                                i14 = i10;
                                            }
                                        }
                                        if (i13 == i11 && i11 == 0) {
                                            i11 = i5;
                                            i13 = i11;
                                        } else {
                                            if (i5 < i11) {
                                                i11 = i5;
                                            }
                                            if (i5 > i13) {
                                                i13 = i5;
                                            }
                                        }
                                    }
                                    i5++;
                                }
                                i10++;
                                i5 = 0;
                            }
                            rect2.left = i11;
                            rect2.top = i12;
                            rect2.right = i13;
                            rect2.bottom = i14;
                        } catch (OutOfMemoryError unused2) {
                            em.h("ImageUtils", "calcBitmapNoAlphaBox occur OOM !");
                        }
                    }
                    rect = rect2;
                    if (rect != null && !rect.isEmpty() && rect.right <= this.q.getWidth() && rect.bottom <= this.q.getHeight()) {
                        hVar.H(Bitmap.createBitmap(this.q, rect.left, rect.top, rect.width(), rect.height()));
                        if (!rect.isEmpty()) {
                            float width4 = ((float) rect.width()) / ((float) rect.height());
                            float width5 = (float) this.q.getWidth();
                            float height4 = (float) this.q.getHeight();
                            float q2 = androidx.core.app.b.q(0.0f, 1.0f, ((float) rect.left) / width5);
                            float q3 = androidx.core.app.b.q(0.0f, 1.0f, ((float) rect.top) / height4);
                            float q4 = androidx.core.app.b.q(0.0f, 1.0f, ((float) rect.width()) / width5);
                            float q5 = androidx.core.app.b.q(0.0f, 1.0f, ((float) rect.height()) / height4);
                            this.x1.t(q2 + q4 > 1.0f ? 1.0f - q4 : q2, q3 + q5 > 1.0f ? 1.0f - q5 : q3, q4, q5, width4);
                        }
                    } else {
                        hVar.H(this.q);
                    }
                    this.s1.b();
                    this.s1.a(hVar);
                }
            }
        } else if (i2 == 4 && wq.o(this.k0) && !z2) {
            try {
                this.l0 = this.k0.copy(Bitmap.Config.ARGB_8888, true);
            } catch (OutOfMemoryError unused3) {
                em.h("CutoutEditorView", "setCutoutMode OutOfMemoryError");
                System.gc();
            }
        }
        this.b = i2;
        int i15 = c3.g;
        postInvalidateOnAnimation();
        return true;
    }

    public void o0(c cVar) {
        this.x0 = cVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x0527  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onDraw(android.graphics.Canvas r23) {
        /*
        // Method dump skipped, instructions count: 2088
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView.onDraw(android.graphics.Canvas):void");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2;
        com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar;
        float f2;
        f fVar = f.ERASE;
        c cVar = this.x0;
        if (cVar != null && !(!((ImageCutoutActivity) cVar).v())) {
            return false;
        }
        if (this.a1 != null) {
            x((int) motionEvent.getX(), (int) motionEvent.getY());
            if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                this.X0 = false;
                this.Y0 = null;
                this.a1 = null;
                invalidate();
            }
            return true;
        }
        this.k1 = (int) motionEvent.getX();
        this.l1 = (int) motionEvent.getY();
        this.J0.a(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            this.d0++;
                            int i3 = this.b;
                            if (i3 == 3 && this.j0 == fVar) {
                                z0();
                                Z();
                            } else if (i3 == 0 && !this.H && !this.b0) {
                                this.a0 = null;
                            } else if (i3 == 0 || i3 == 3) {
                                a0(false, false);
                            }
                        }
                    }
                } else if (this.d0 < 2) {
                    if (this.f0 == 0.0f && this.g0 == 0.0f) {
                        W(motionEvent);
                    } else {
                        if (O() || this.b == 2) {
                            this.w1 = 0;
                        } else {
                            this.w1 = this.y1;
                        }
                        int i4 = this.b;
                        if (i4 == 0 || i4 == 3) {
                            this.v1.set(motionEvent.getX(), motionEvent.getY());
                        }
                        float x2 = motionEvent.getX();
                        float y2 = motionEvent.getY() - ((float) this.w1);
                        int i5 = this.b;
                        if (i5 == 0 || (i5 == 3 && (this.j0 != fVar || O()))) {
                            float f3 = y2 - this.g0;
                            Matrix matrix = new Matrix(this.K);
                            Matrix matrix2 = new Matrix();
                            matrix.invert(matrix2);
                            float[] fArr = {x2, y2};
                            matrix2.mapPoints(fArr);
                            float f4 = fArr[0];
                            float f5 = fArr[1];
                            float f6 = (float) 4;
                            if (Math.abs(x2 - this.f0) >= f6 || Math.abs(f3) >= f6) {
                                if (this.b0 || this.H) {
                                    com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar2 = this.W;
                                    if (dVar2 != null) {
                                        dVar2.a(new PointF(f4, f5));
                                    }
                                } else {
                                    this.g1 = true;
                                    com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar3 = this.a0;
                                    if (dVar3 != null) {
                                        this.c0 = true;
                                        dVar3.a(new PointF(f4, f5));
                                    }
                                }
                                this.f0 = x2;
                                this.g0 = y2;
                                this.e0 = true;
                            }
                        } else {
                            int i6 = this.b;
                            if (i6 == 3) {
                                float f7 = y2 - this.g0;
                                Matrix matrix3 = new Matrix(this.K);
                                Matrix matrix4 = new Matrix();
                                matrix3.invert(matrix4);
                                float[] fArr2 = {x2, y2};
                                matrix4.mapPoints(fArr2);
                                float f8 = fArr2[0];
                                float f9 = fArr2[1];
                                float f10 = (float) 4;
                                if (Math.abs(x2 - this.f0) >= f10 || Math.abs(f7) >= f10) {
                                    if (wq.o(this.k0) && wq.o(this.j)) {
                                        this.F1 = true;
                                        int width = this.k0.getWidth();
                                        int height = this.k0.getHeight();
                                        int i7 = (int) f8;
                                        int i8 = (int) f9;
                                        if (i7 >= 0 && i8 >= 0 && i7 < width && i8 < height) {
                                            float f11 = this.D / 2.0f;
                                            float f12 = 30.0f;
                                            if (f11 >= 30.0f) {
                                                f12 = Math.min(f11, 150.0f);
                                            }
                                            int i9 = (int) (((float) ((int) f12)) / this.r0);
                                            int max = Math.max(0, i7 - i9);
                                            int max2 = Math.max(0, i8 - i9);
                                            int min = (Math.min(this.j.getWidth() - 1, i7 + i9) - max) + 1;
                                            int min2 = (Math.min(this.j.getHeight() - 1, i8 + i9) - max2) + 1;
                                            int i10 = min * min2;
                                            int min3 = Math.min(i7, i9);
                                            int min4 = Math.min(i8, i9);
                                            int[] iArr = new int[i10];
                                            this.j.getPixels(iArr, 0, min, max, max2, min, min2);
                                            int[] iArr2 = new int[i10];
                                            this.k0.getPixels(iArr2, 0, min, max, max2, min, min2);
                                            if (NativeProc.nativeMagic(iArr, iArr2, min, min2, min3, min4, i9) == 1) {
                                                this.k0.setPixels(iArr2, 0, min, max, max2, min, min2);
                                                int i11 = c3.g;
                                                postInvalidateOnAnimation();
                                            }
                                        }
                                    }
                                    this.f0 = x2;
                                    this.g0 = y2;
                                    this.e0 = true;
                                }
                            } else if (i6 == 2) {
                                if (this.e0) {
                                    if (!this.i && !(this.I0.x == motionEvent.getX() && this.I0.y == motionEvent.getY())) {
                                        this.F0 |= 2;
                                        if (this.s1.o()) {
                                            this.L0 = true;
                                            f2 = y2;
                                            if (System.currentTimeMillis() - this.A0 > 200) {
                                                this.S0 = false;
                                                com.camerasideas.collagemaker.photoproc.graphicsitems.b m2 = this.s1.m();
                                                PointF e2 = m2.e();
                                                if (this.D0 != null && motionEvent.getPointerCount() != 2) {
                                                    float p2 = androidx.core.app.b.p(new PointF((float) ((int) motionEvent.getX()), (float) ((int) motionEvent.getY())), e2);
                                                    this.G0 = p2;
                                                    float f13 = this.H0 - p2;
                                                    if (Math.abs(f13) > 300.0f) {
                                                        f13 = (360.0f - Math.abs(f13)) * ((-f13) / Math.abs(f13));
                                                    }
                                                    float b2 = this.P0.b(m2, -f13);
                                                    this.K0 = this.P0.c();
                                                    m2.x(b2);
                                                    m2.v(b2, m2.f(), m2.g());
                                                    m2.m = androidx.core.app.b.A(new PointF(m2.l[4] - m2.e().x, m2.e().y - m2.l[5]));
                                                    this.H0 = this.G0;
                                                    float J2 = androidx.core.app.b.J(motionEvent.getX(), motionEvent.getY(), e2.x, e2.y);
                                                    float f14 = this.E0;
                                                    if (f14 != 0.0f) {
                                                        float f15 = J2 / f14;
                                                        if (f15 > 1.0f) {
                                                            m2.u(f15, e2.x, e2.y);
                                                        } else if (m2.j() >= 60 && m2.i() >= 60) {
                                                            m2.u(J2 / this.E0, e2.x, e2.y);
                                                        }
                                                    }
                                                    this.E0 = J2;
                                                } else if (this.C0 == 1) {
                                                    if (motionEvent.getPointerCount() != 2) {
                                                        if (this.I0 != null) {
                                                            PointF a2 = this.R0.a(motionEvent.getX() - this.I0.x, motionEvent.getY() - this.I0.y, m2.m(), m2.k());
                                                            m2.w(a2.x, a2.y);
                                                            boolean b3 = this.R0.b();
                                                            boolean c2 = this.R0.c();
                                                            qm qmVar = this.Q0;
                                                            if (qmVar != null) {
                                                                ((ImageCutoutActivity) qmVar).y(b3, c2);
                                                            }
                                                            this.I0.set(motionEvent.getX(), motionEvent.getY());
                                                        }
                                                    }
                                                }
                                                invalidate();
                                            }
                                            if (Math.abs(this.f0 - x2) > 4.0f || Math.abs(this.g0 - f2) > 4.0f) {
                                                this.f0 = x2;
                                                this.g0 = f2;
                                                this.e0 = true;
                                            }
                                        }
                                    }
                                }
                                f2 = y2;
                                this.f0 = x2;
                                this.g0 = f2;
                                this.e0 = true;
                            }
                        }
                    }
                }
            }
            if (O() || this.b == 2) {
                this.w1 = 0;
            } else {
                this.w1 = this.y1;
            }
            int i12 = this.b;
            if (i12 == 0 || (i12 == 3 && (this.j0 != fVar || O()))) {
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY() - ((float) this.w1);
                this.g1 = false;
                if (this.d0 < 2) {
                    if (Math.abs(x3 - this.h0) > 4.0f || Math.abs(y3 - this.i0) > 4.0f) {
                        if (this.b0 || (dVar = this.a0) == null) {
                            a0(false, false);
                        } else {
                            dVar.close();
                            this.b0 = true;
                            D0();
                            this.e0 = true;
                            this.W = new com.camerasideas.collagemaker.photoproc.graphicsitems.d(this.E);
                            a0(false, true);
                            am.a().b(new com.camerasideas.collagemaker.message.e(true));
                        }
                    } else if (this.c0) {
                        com.camerasideas.collagemaker.photoproc.graphicsitems.d dVar4 = this.a0;
                        if (dVar4 != null) {
                            dVar4.close();
                        }
                        this.b0 = true;
                        this.c0 = false;
                        D0();
                        this.e0 = true;
                        this.W = new com.camerasideas.collagemaker.photoproc.graphicsitems.d(this.E);
                        a0(false, true);
                        am.a().b(new com.camerasideas.collagemaker.message.e(true));
                    }
                }
            } else {
                int i13 = this.b;
                if (i13 == 3) {
                    if (this.d0 < 2) {
                        z0();
                        Z();
                    }
                } else if (i13 == 2) {
                    this.F0 |= 1;
                    com.camerasideas.collagemaker.photoproc.graphicsitems.b m3 = this.s1.m();
                    if (m3 instanceof h) {
                        h hVar = (h) m3;
                        if (hVar.B(hVar.m())) {
                            post(new ip(this, hVar));
                        }
                    }
                    if (!this.i && this.d0 < 2) {
                        if (this.S0) {
                            com.camerasideas.collagemaker.photoproc.graphicsitems.b m4 = this.s1.m();
                            c cVar2 = this.x0;
                            if (cVar2 != null) {
                                ((ImageCutoutActivity) cVar2).z(this, m4);
                            }
                        } else if (this.F0 == 1) {
                            removeCallbacks(this.H1);
                            postDelayed(this.H1, 200);
                        }
                    }
                    this.S0 = false;
                    this.D0 = null;
                    if (this.i && this.x0 != null) {
                        this.s1.m();
                        ImageCutoutActivity imageCutoutActivity = (ImageCutoutActivity) this.x0;
                        Objects.requireNonNull(imageCutoutActivity);
                        androidx.core.app.b.s(imageCutoutActivity, ImageTextFragment.class, null, R.id.hl, true, true);
                        int i14 = c3.g;
                        postInvalidateOnAnimation();
                        this.K0 = false;
                        this.L0 = false;
                        this.R0.d();
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                }
            }
            qm qmVar2 = this.Q0;
            if (qmVar2 != null) {
                ((ImageCutoutActivity) qmVar2).y(true, true);
            }
            this.F0 = 0;
            this.f0 = 0.0f;
            this.h0 = 0.0f;
            this.g0 = 0.0f;
            this.i0 = 0.0f;
            this.A0 = 0;
            this.K0 = false;
            this.L0 = false;
            this.R0.d();
            getParent().requestDisallowInterceptTouchEvent(false);
        } else {
            getParent().requestDisallowInterceptTouchEvent(true);
            this.d0 = 1;
            this.e0 = false;
            this.i = false;
            W(motionEvent);
        }
        if (this.e0 && this.W != null && ((i2 = this.b) == 0 || (i2 == 3 && this.j0 != fVar))) {
            if (this.j0 == fVar) {
                this.E1 = true;
                E0();
            } else {
                I0();
            }
        }
        boolean onTouchEvent = this.Q.onTouchEvent(motionEvent);
        if (onTouchEvent || this.g1) {
            int i15 = c3.g;
            postInvalidateOnAnimation();
        }
        return onTouchEvent;
    }

    public void p0(int i2) {
        this.y1 = i2;
    }

    public void q0(boolean z2) {
        this.j0 = z2 ? f.ERASE : f.NORMAL;
        int i2 = c3.g;
        postInvalidateOnAnimation();
    }

    public boolean r(boolean z2) {
        this.A1 = z2;
        if (wq.o(this.l)) {
            if (this.A1) {
                this.l = wq.k(this.E, R.drawable.c_, this.l.getWidth(), this.l.getHeight());
            } else {
                this.l = wq.k(this.E, R.drawable.c9, this.l.getWidth(), this.l.getHeight());
            }
            invalidate();
        }
        return this.A1;
    }

    public void r0(int i2) {
        Bitmap bitmap = null;
        this.T0 = null;
        this.o1 = null;
        this.n = null;
        this.I = false;
        int width = (int) this.t0.width();
        int height = (int) this.t0.height();
        if (androidx.core.content.a.c(this.E, i2) == null) {
            em.h("CutoutEditorView", "onSelectedGradientChanged failed: drawable == null");
            return;
        }
        List<on> a2 = rn.a();
        int i3 = 0;
        while (true) {
            if (i3 >= a2.size()) {
                break;
            }
            qn qnVar = (qn) a2.get(i3);
            if (qnVar == null || qnVar.a() != i2) {
                i3++;
            } else {
                GradientDrawable.Orientation a3 = hp.a(qnVar.c(), 0.0f);
                int[] b2 = qnVar.b();
                if (!(a3 == null || b2 == null || b2.length <= 0)) {
                    GradientDrawable gradientDrawable = new GradientDrawable(a3, b2);
                    try {
                        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap);
                        gradientDrawable.setBounds(0, 0, width, height);
                        gradientDrawable.draw(canvas);
                        bitmap = createBitmap;
                    } catch (Exception | OutOfMemoryError e2) {
                        e2.printStackTrace();
                    }
                }
                this.m = bitmap;
            }
        }
        if (wq.o(this.m)) {
            this.w0.set(0, 0, this.m.getWidth(), this.m.getHeight());
        } else {
            em.h("CutoutEditorView", "Load Cutout Bg Failed!");
        }
        int i4 = c3.g;
        postInvalidateOnAnimation();
    }

    public void s(float f2, float f3, boolean z2, boolean z3) {
        int i2;
        int i3;
        if (f2 == 0.0f && f3 == 0.0f) {
            this.t1 = F();
        } else if (f2 > 0.0f && f3 > 0.0f) {
            this.t1 = f2 / f3;
        }
        if (wq.o(this.j)) {
            if (f2 == 0.0f && f3 == 0.0f) {
                f2 = (float) this.j.getWidth();
                f3 = (float) this.j.getHeight();
            } else if (f2 <= 0.0f || f3 <= 0.0f) {
                f2 = 0.0f;
                f3 = 0.0f;
            }
            float f4 = (float) this.M;
            float f5 = f4 / f2;
            float f6 = (float) this.N;
            float f7 = f6 / f3;
            float min = Math.min(f7, f5);
            if (f7 > f5) {
                float f8 = f6 / 2.0f;
                float f9 = (f3 * min) / 2.0f;
                this.t0.set(0.0f, f8 - f9, f4, f8 + f9);
            } else {
                float f10 = f4 / 2.0f;
                float f11 = (f2 * min) / 2.0f;
                this.t0.set(f10 - f11, 0.0f, f10 + f11, f6);
            }
            if (wq.o(this.m)) {
                int width = this.m.getWidth();
                int height = this.m.getHeight();
                float width2 = this.t0.width() / this.t0.height();
                float f12 = (float) width;
                float f13 = (float) height;
                if (width2 >= f12 / f13) {
                    i2 = (int) (f12 / width2);
                    i3 = width;
                } else {
                    i3 = (int) (f13 * width2);
                    i2 = height;
                }
                int i4 = (width / 2) - (i3 / 2);
                int i5 = (height / 2) - (i2 / 2);
                this.w0.set(i4, i5, i3 + i4, i2 + i5);
                B0();
            } else if (wq.o(this.l) && wq.o(this.j)) {
                B0();
            }
            List<com.camerasideas.collagemaker.photoproc.graphicsitems.b> l2 = this.s1.l();
            if (l2.size() > 0 && z2) {
                int b2 = c2.b(this.E, 10.0f);
                for (int i6 = 0; i6 < l2.size(); i6++) {
                    if (l2.get(i6) instanceof h) {
                        ((h) l2.get(i6)).E(this.t0, this.M, this.N);
                        float f14 = (float) (b2 * i6);
                        l2.get(i6).w(f14, f14);
                    }
                }
            }
            if (z3) {
                invalidate();
            }
        }
    }

    public void s0(float f2) {
        this.r0 = f2;
    }

    public void t(com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar) {
        h hVar = null;
        try {
            hVar = ((h) bVar).clone();
        } catch (CloneNotSupportedException e2) {
            e2.printStackTrace();
        }
        if (hVar != null) {
            this.s1.a(hVar);
            this.s1.r(hVar);
            invalidate();
        }
    }

    public boolean t0(Uri uri) {
        Bitmap bitmap;
        if (!((uri == null || TextUtils.isEmpty(uri.toString())) ? false : bm.e(uri.toString()))) {
            return false;
        }
        this.n1 = uri;
        this.t1 = F();
        Bitmap s2 = wq.s(this.E, this.M, this.N, uri, Bitmap.Config.ARGB_8888);
        this.j = s2;
        if (wq.o(s2)) {
            this.p1 = ((float) this.j.getWidth()) / ((float) this.j.getHeight());
            if (this.M <= 0 || this.N <= 0) {
                em.h("CutoutEditorView", "Load Cutout Sticker Failed!");
                return false;
            }
            Bitmap bitmap2 = this.j;
            int b2 = androidx.core.content.a.b(this.E, R.color.e8);
            if (wq.o(bitmap2)) {
                bitmap = wq.d(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
                if (wq.o(bitmap)) {
                    Canvas canvas = new Canvas(bitmap);
                    canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                    Paint paint = new Paint(3);
                    paint.setAntiAlias(true);
                    int saveLayer = canvas.saveLayer(null, paint, 31);
                    canvas.drawColor(b2);
                    paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
                    canvas.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
                    canvas.restoreToCount(saveLayer);
                    this.k = bitmap;
                    int i2 = this.M;
                    int i3 = this.N;
                    this.O = this.j.getWidth();
                    int height = this.j.getHeight();
                    this.P = height;
                    float min = Math.min(((float) i3) / ((float) height), ((float) i2) / ((float) this.O)) * 0.9f;
                    this.K.reset();
                    this.K.postScale(min, min);
                    this.K.postTranslate((((float) this.M) / 2.0f) - ((((float) this.O) * min) / 2.0f), (((float) this.N) / 2.0f) - ((((float) this.P) * min) / 2.0f));
                    this.J = new Matrix(this.K);
                    this.m1.set(0.0f, 0.0f, ((float) this.O) * min, ((float) this.P) * min);
                    this.m1.offset((((float) this.M) / 2.0f) - ((((float) this.O) * min) / 2.0f), (((float) this.N) / 2.0f) - ((((float) this.P) * min) / 2.0f));
                    this.l = wq.k(this.E, R.drawable.c9, this.M, this.N);
                    this.m0.set(0, 0, this.j.getWidth(), this.j.getHeight());
                    this.O = this.j.getWidth();
                    int height2 = this.j.getHeight();
                    this.P = height2;
                    this.k0 = Bitmap.createBitmap(this.O, height2, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(this.k0);
                    this.U = canvas2;
                    canvas2.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                    float min2 = Math.min((((float) this.M) * 1.0f) / ((float) this.O), (((float) this.N) * 1.0f) / ((float) this.P));
                    this.r0 = min2;
                    this.s0 = min2;
                    this.U.drawBitmap(this.j, 0.0f, 0.0f, (Paint) null);
                    c.b("Original", this.k0.copy(Bitmap.Config.ARGB_8888, true));
                    w0(null);
                }
            }
            bitmap = null;
            this.k = bitmap;
            int i22 = this.M;
            int i32 = this.N;
            this.O = this.j.getWidth();
            int height3 = this.j.getHeight();
            this.P = height3;
            float min3 = Math.min(((float) i32) / ((float) height3), ((float) i22) / ((float) this.O)) * 0.9f;
            this.K.reset();
            this.K.postScale(min3, min3);
            this.K.postTranslate((((float) this.M) / 2.0f) - ((((float) this.O) * min3) / 2.0f), (((float) this.N) / 2.0f) - ((((float) this.P) * min3) / 2.0f));
            this.J = new Matrix(this.K);
            this.m1.set(0.0f, 0.0f, ((float) this.O) * min3, ((float) this.P) * min3);
            this.m1.offset((((float) this.M) / 2.0f) - ((((float) this.O) * min3) / 2.0f), (((float) this.N) / 2.0f) - ((((float) this.P) * min3) / 2.0f));
            try {
                this.l = wq.k(this.E, R.drawable.c9, this.M, this.N);
                this.m0.set(0, 0, this.j.getWidth(), this.j.getHeight());
                this.O = this.j.getWidth();
                int height22 = this.j.getHeight();
                this.P = height22;
                this.k0 = Bitmap.createBitmap(this.O, height22, Bitmap.Config.ARGB_8888);
                Canvas canvas22 = new Canvas(this.k0);
                this.U = canvas22;
                canvas22.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                float min22 = Math.min((((float) this.M) * 1.0f) / ((float) this.O), (((float) this.N) * 1.0f) / ((float) this.P));
                this.r0 = min22;
                this.s0 = min22;
                this.U.drawBitmap(this.j, 0.0f, 0.0f, (Paint) null);
                c.b("Original", this.k0.copy(Bitmap.Config.ARGB_8888, true));
                w0(null);
            } catch (OutOfMemoryError unused) {
                System.gc();
                em.h("CutoutEditorView", "OOM occurred when setOrgImageUri, return");
                return false;
            }
        }
        return true;
    }

    public void u() {
        if (this.C1.size() > 0) {
            List<String> list = this.C1;
            int i2 = 1;
            String remove = list.remove(list.size() - 1);
            this.B1.add(remove);
            if (!this.H) {
                this.b0 = true;
            }
            Bitmap bitmap = this.k0;
            if (bitmap != null && Build.VERSION.SDK_INT < 21) {
                bitmap.recycle();
            }
            try {
                this.k0 = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.k0);
                this.U = canvas;
                canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                Bitmap a2 = c.a(remove);
                if (wq.o(a2)) {
                    this.U.drawBitmap(a2, 0.0f, 0.0f, (Paint) null);
                }
                int i3 = c3.g;
                postInvalidateOnAnimation();
                if (this.C1.size() > 0) {
                    i2 = 3;
                }
                am.a().b(new com.camerasideas.collagemaker.message.f(i2));
            } catch (OutOfMemoryError unused) {
                System.gc();
                em.h("CutoutEditorView", "OOM occurred when drawSavePaths, return");
            }
        }
    }

    public void u0(String str) {
        this.u1 = str;
    }

    public void v() {
        String str;
        if (this.B1.size() > 0) {
            List<String> list = this.B1;
            this.C1.add(list.remove(list.size() - 1));
            if (this.B1.size() == 0) {
                if (!this.H) {
                    this.b0 = false;
                    this.a0 = null;
                    this.W = null;
                }
                str = "Original";
            } else {
                if (!this.H) {
                    this.b0 = true;
                }
                List<String> list2 = this.B1;
                str = list2.get(list2.size() - 1);
            }
            Bitmap bitmap = this.k0;
            if (bitmap != null && Build.VERSION.SDK_INT < 21) {
                bitmap.recycle();
            }
            try {
                this.k0 = Bitmap.createBitmap(this.O, this.P, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.k0);
                this.U = canvas;
                int i2 = 3;
                canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                Bitmap a2 = c.a(str);
                if (wq.o(a2)) {
                    this.U.drawBitmap(a2, 0.0f, 0.0f, (Paint) null);
                }
                int i3 = c3.g;
                postInvalidateOnAnimation();
                if (this.B1.size() <= 0) {
                    i2 = 2;
                }
                am.a().b(new com.camerasideas.collagemaker.message.f(i2));
            } catch (OutOfMemoryError unused) {
                System.gc();
                em.h("CutoutEditorView", "OOM occurred when drawSavePaths, return");
            }
        }
    }

    public void v0(String str) {
        this.U0 = str;
    }

    public void w() {
        this.X0 = false;
        this.Y0 = null;
        this.a1 = null;
    }

    public void w0(mn mnVar) {
        this.n0 = mnVar;
        this.o0 = 0.9f;
        this.L.reset();
        if (this.n0 != null) {
            float f2 = 1.0f;
            if (wq.o(this.j)) {
                float f3 = ((float) this.M) / ((float) this.N);
                float width = ((float) this.j.getWidth()) / ((float) this.j.getHeight());
                f2 = width > f3 ? 1.0f / width : width / f3;
            }
            double d2 = (double) (f2 * 0.7f);
            double min = (double) Math.min(this.M, this.N);
            Double.isNaN(min);
            Double.isNaN(d2);
            float f4 = (float) ((min / 35.0d) * d2);
            this.L.postTranslate(((float) (this.M - 35)) / 2.0f, ((float) (this.N - 35)) / 2.0f);
            this.q0 = this.n0.c();
            this.L.postScale(f4, f4, ((float) this.M) / 2.0f, ((float) this.N) / 2.0f);
        }
        int i2 = c3.g;
        postInvalidateOnAnimation();
    }

    public void x0(int i2) {
        this.N = i2;
    }

    public String y() {
        String I2 = I();
        if (TextUtils.equals(I2, this.E.getString(R.string.c_))) {
            return "Original";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.bg))) {
            return "Custom";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.g1))) {
            return "IG Story";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.g5))) {
            return "Screen";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.g4))) {
            return "Profile";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.fw))) {
            return "Event";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.fu))) {
            return "AD";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.g3))) {
            return "Post";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.fy))) {
            return "Header";
        }
        if (TextUtils.equals(I2, this.E.getString(R.string.g2))) {
            return "Letter";
        }
        return TextUtils.equals(I2, this.E.getString(R.string.i4)) ? "Free" : I2;
    }

    public void y0(int i2) {
        this.M = i2;
    }

    public int z() {
        return this.W0;
    }

    public CutoutEditorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = -1;
        this.i = false;
        this.w = new RectF();
        this.x = new RectF();
        this.y = new RectF();
        this.z = new RectF();
        this.A = new RectF();
        this.B = 5;
        this.C = 10;
        this.I = false;
        this.J = new Matrix();
        this.K = new Matrix();
        this.L = new Matrix();
        new PaintFlagsDrawFilter(0, 7);
        this.b0 = false;
        this.c0 = false;
        this.j0 = f.NORMAL;
        this.m0 = new Rect();
        this.o0 = 0.9f;
        this.r0 = 1.0f;
        this.s0 = 1.0f;
        new Matrix();
        this.t0 = new RectF();
        this.v0 = new Rect();
        this.w0 = new Rect();
        this.B0 = 0;
        this.E0 = 1.0f;
        this.F0 = 0;
        this.G0 = 0.0f;
        this.H0 = 0.0f;
        this.I0 = new PointF(-1.0f, -1.0f);
        this.K0 = false;
        this.L0 = false;
        this.M0 = new Paint();
        Paint paint = new Paint();
        this.N0 = paint;
        this.P0 = new fp();
        this.S0 = false;
        this.X0 = false;
        this.f1 = new Paint(1);
        this.g1 = false;
        this.h1 = new Path();
        this.i1 = new Path();
        this.j1 = new Matrix();
        this.m1 = new RectF();
        this.w1 = 0;
        this.x1 = new ISCropFilter();
        this.y1 = 0;
        this.A1 = false;
        this.B1 = new ArrayList();
        this.C1 = new ArrayList();
        this.D1 = 0;
        this.H1 = new a();
        this.I1 = new b();
        this.J1 = new Path();
        this.s1 = i.k();
        this.z1 = context.getResources().getDimensionPixelSize(R.dimen.pj);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.nx);
        K1 = dimensionPixelSize;
        L1 = context.getResources().getDimensionPixelSize(R.dimen.ob) + dimensionPixelSize;
        this.B = context.getResources().getDimensionPixelSize(R.dimen.om);
        this.u0 = (float) c2.b(context, 0.7f);
        this.E = context;
        this.J0 = new p2(context, this.I1);
        this.p0 = new PaintFlagsDrawFilter(0, 3);
        this.D = (float) c2.b(context, 34.6f);
        this.d = new Paint(3);
        Paint paint2 = new Paint(3);
        this.f = paint2;
        paint2.setAntiAlias(true);
        this.f.setColor(androidx.core.content.a.b(this.E, R.color.e7));
        this.f.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.h = paint3;
        paint3.setAntiAlias(true);
        this.h.setColor(androidx.core.content.a.b(this.E, R.color.b7));
        this.h.setStyle(Paint.Style.FILL);
        Paint paint4 = new Paint(3);
        this.e = paint4;
        paint4.setAntiAlias(true);
        this.e.setColor(androidx.core.content.a.b(this.E, R.color.b6));
        this.e.setStrokeWidth(10.0f);
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setPathEffect(new DashPathEffect(new float[]{20.0f, 10.0f}, 1.0f));
        Paint paint5 = new Paint(7);
        this.V = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        this.V.setStrokeJoin(Paint.Join.ROUND);
        this.V.setStrokeCap(Paint.Cap.ROUND);
        this.V.setPathEffect(new CornerPathEffect(20.0f));
        this.V.setStrokeWidth(this.D);
        Paint paint6 = new Paint(3);
        this.g = paint6;
        paint6.setColor(androidx.core.content.a.b(context, R.color.at));
        this.g.setShadowLayer(2.0f, 0.0f, 0.0f, androidx.core.content.a.b(context, R.color.at));
        Paint paint7 = new Paint(1);
        this.r1 = paint7;
        paint7.setAntiAlias(true);
        this.r1.setFilterBitmap(true);
        this.r1.setDither(true);
        this.r1.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        e eVar = new e(null);
        xo xoVar = new xo(context);
        xoVar.f(2);
        xoVar.d(this);
        xoVar.e(eVar);
        this.Q = xoVar;
        this.r = wq.m(getResources(), R.drawable.ew);
        this.s = wq.m(getResources(), R.drawable.ey);
        this.t = wq.m(getResources(), R.drawable.ev);
        this.u = wq.m(getResources(), R.drawable.ex);
        this.v = wq.m(getResources(), R.drawable.ez);
        float f2 = context.getResources().getDisplayMetrics().density * 2.0f;
        this.O0 = f2;
        if (f2 < 2.0f) {
            this.O0 = 2.0f;
        }
        this.M0.setStyle(Paint.Style.STROKE);
        this.M0.setStrokeWidth(this.O0);
        this.M0.setColor(getResources().getColor(R.color.b6));
        this.R0 = new gp(c2.b(context, 5.0f), c2.b(context, 5.0f));
        Path path = this.h1;
        float f3 = (float) K1;
        path.addRoundRect(new RectF(0.0f, 0.0f, f3, f3), (float) c2.b(this.E, 4.0f), (float) c2.b(this.E, 4.0f), Path.Direction.CW);
        Path path2 = this.i1;
        float f4 = (float) L1;
        path2.addRoundRect(new RectF(0.0f, 0.0f, f4, f4), (float) c2.b(this.E, 4.0f), (float) c2.b(this.E, 4.0f), Path.Direction.CW);
        setLayerType(1, null);
        paint.setColor(-1);
        paint.setStrokeWidth((float) c2.b(context, 0.7f));
        paint.setStyle(Paint.Style.STROKE);
        paint.setShadowLayer(2.0f, 1.0f, 1.0f, androidx.core.content.a.b(context, R.color.at));
        paint.setAlpha(178);
        this.v1 = new PointF();
    }
}
