package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class e {
    static final TimeInterpolator E = jx.c;
    static final int[] F = {16842919, 16842910};
    static final int[] G = {16843623, 16842908, 16842910};
    static final int[] H = {16842908, 16842910};
    static final int[] I = {16843623, 16842910};
    static final int[] J = {16842910};
    static final int[] K = new int[0];
    private final RectF A = new RectF();
    private final RectF B = new RectF();
    private final Matrix C = new Matrix();
    private ViewTreeObserver.OnPreDrawListener D;
    qy a;
    my b;
    Drawable c;
    c d;
    Drawable e;
    boolean f;
    float g;
    float h;
    float i;
    int j;
    private final com.google.android.material.internal.f k;
    private px l;
    private px m;
    private Animator n;
    private px o;
    private px p;
    private float q;
    private float r = 1.0f;
    private int s;
    private int t = 0;
    private ArrayList<Animator.AnimatorListener> u;
    private ArrayList<Animator.AnimatorListener> v;
    private ArrayList<g> w;
    final FloatingActionButton x;
    final fy y;
    private final Rect z = new Rect();

    /* access modifiers changed from: package-private */
    public class a extends AnimatorListenerAdapter {
        private boolean a;
        final /* synthetic */ boolean b;
        final /* synthetic */ h c;

        a(boolean z, h hVar) {
            this.b = z;
            this.c = hVar;
        }

        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        public void onAnimationEnd(Animator animator) {
            e.this.t = 0;
            e.this.n = null;
            if (!this.a) {
                FloatingActionButton floatingActionButton = e.this.x;
                boolean z = this.b;
                floatingActionButton.l(z ? 8 : 4, z);
                h hVar = this.c;
                if (hVar != null) {
                    hVar.b();
                }
            }
        }

        public void onAnimationStart(Animator animator) {
            e.this.x.l(0, this.b);
            e.this.t = 1;
            e.this.n = animator;
            this.a = false;
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;
        final /* synthetic */ h b;

        b(boolean z, h hVar) {
            this.a = z;
            this.b = hVar;
        }

        public void onAnimationEnd(Animator animator) {
            e.this.t = 0;
            e.this.n = null;
            h hVar = this.b;
            if (hVar != null) {
                hVar.a();
            }
        }

        public void onAnimationStart(Animator animator) {
            e.this.x.l(0, this.a);
            e.this.t = 2;
            e.this.n = animator;
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends ox {
        c() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            e.this.r = f;
            return super.a(f, matrix, matrix2);
        }
    }

    private class d extends j {
        d(e eVar) {
            super(null);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.material.floatingactionbutton.e.j
        public float a() {
            return 0.0f;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.e$e  reason: collision with other inner class name */
    private class C0077e extends j {
        C0077e() {
            super(null);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.material.floatingactionbutton.e.j
        public float a() {
            e eVar = e.this;
            return eVar.g + eVar.h;
        }
    }

    private class f extends j {
        f() {
            super(null);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.material.floatingactionbutton.e.j
        public float a() {
            e eVar = e.this;
            return eVar.g + eVar.i;
        }
    }

    /* access modifiers changed from: package-private */
    public interface g {
        void a();

        void b();
    }

    /* access modifiers changed from: package-private */
    public interface h {
        void a();

        void b();
    }

    private class i extends j {
        i() {
            super(null);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.material.floatingactionbutton.e.j
        public float a() {
            return e.this.g;
        }
    }

    private abstract class j extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        private boolean a;
        private float b;
        private float c;

        j(a aVar) {
        }

        /* access modifiers changed from: protected */
        public abstract float a();

        public void onAnimationEnd(Animator animator) {
            e.this.K((float) ((int) this.c));
            this.a = false;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.a) {
                my myVar = e.this.b;
                this.b = myVar == null ? 0.0f : myVar.q();
                this.c = a();
                this.a = true;
            }
            e eVar = e.this;
            float f = this.b;
            eVar.K((float) ((int) ((valueAnimator.getAnimatedFraction() * (this.c - f)) + f)));
        }
    }

    e(FloatingActionButton floatingActionButton, fy fyVar) {
        this.x = floatingActionButton;
        this.y = fyVar;
        com.google.android.material.internal.f fVar = new com.google.android.material.internal.f();
        this.k = fVar;
        fVar.a(F, i(new f()));
        fVar.a(G, i(new C0077e()));
        fVar.a(H, i(new C0077e()));
        fVar.a(I, i(new C0077e()));
        fVar.a(J, i(new i()));
        fVar.a(K, i(new d(this)));
        this.q = floatingActionButton.getRotation();
    }

    private boolean E() {
        FloatingActionButton floatingActionButton = this.x;
        int i2 = c3.g;
        return floatingActionButton.isLaidOut() && !this.x.isInEditMode();
    }

    private void g(float f2, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.x.getDrawable();
        if (drawable != null && this.s != 0) {
            RectF rectF = this.A;
            RectF rectF2 = this.B;
            rectF.set(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
            int i2 = this.s;
            rectF2.set(0.0f, 0.0f, (float) i2, (float) i2);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i3 = this.s;
            matrix.postScale(f2, f2, ((float) i3) / 2.0f, ((float) i3) / 2.0f);
        }
    }

    private AnimatorSet h(px pxVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.x, View.ALPHA, f2);
        pxVar.f("opacity").a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.x, View.SCALE_X, f3);
        pxVar.f("scale").a(ofFloat2);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 26) {
            ofFloat2.setEvaluator(new f(this));
        }
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.x, View.SCALE_Y, f3);
        pxVar.f("scale").a(ofFloat3);
        if (i2 == 26) {
            ofFloat3.setEvaluator(new f(this));
        }
        arrayList.add(ofFloat3);
        g(f4, this.C);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.x, new nx(), new c(), new Matrix(this.C));
        pxVar.f("iconScale").a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        androidx.core.app.b.p0(animatorSet, arrayList);
        return animatorSet;
    }

    private ValueAnimator i(j jVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(E);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(jVar);
        valueAnimator.addUpdateListener(jVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* access modifiers changed from: package-private */
    public final void A(int i2) {
        if (this.s != i2) {
            this.s = i2;
            z(this.r);
        }
    }

    /* access modifiers changed from: package-private */
    public final void B(qy qyVar) {
        this.a = qyVar;
        my myVar = this.b;
        if (myVar != null) {
            myVar.e(qyVar);
        }
        Drawable drawable = this.c;
        if (drawable instanceof ty) {
            ((ty) drawable).e(qyVar);
        }
        c cVar = this.d;
        if (cVar != null) {
            cVar.e(qyVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void C(px pxVar) {
        this.o = pxVar;
    }

    /* access modifiers changed from: package-private */
    public boolean D() {
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean F() {
        return !this.f || this.x.v() >= this.j;
    }

    /* access modifiers changed from: package-private */
    public void G(h hVar, boolean z2) {
        if (!o()) {
            Animator animator = this.n;
            if (animator != null) {
                animator.cancel();
            }
            if (E()) {
                if (this.x.getVisibility() != 0) {
                    this.x.setAlpha(0.0f);
                    this.x.setScaleY(0.0f);
                    this.x.setScaleX(0.0f);
                    z(0.0f);
                }
                px pxVar = this.o;
                if (pxVar == null) {
                    if (this.l == null) {
                        this.l = px.b(this.x.getContext(), R.animator.c);
                    }
                    pxVar = this.l;
                    Objects.requireNonNull(pxVar);
                }
                AnimatorSet h2 = h(pxVar, 1.0f, 1.0f, 1.0f);
                h2.addListener(new b(z2, null));
                ArrayList<Animator.AnimatorListener> arrayList = this.u;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        h2.addListener(it.next());
                    }
                }
                h2.start();
                return;
            }
            this.x.l(0, z2);
            this.x.setAlpha(1.0f);
            this.x.setScaleY(1.0f);
            this.x.setScaleX(1.0f);
            z(1.0f);
        }
    }

    /* access modifiers changed from: package-private */
    public void H() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.q % 90.0f != 0.0f) {
                if (this.x.getLayerType() != 1) {
                    this.x.setLayerType(1, null);
                }
            } else if (this.x.getLayerType() != 0) {
                this.x.setLayerType(0, null);
            }
        }
        my myVar = this.b;
        if (myVar != null) {
            myVar.L((int) this.q);
        }
    }

    /* access modifiers changed from: package-private */
    public final void I() {
        z(this.r);
    }

    /* access modifiers changed from: package-private */
    public final void J() {
        Rect rect = this.z;
        l(rect);
        androidx.core.app.b.l(this.e, "Didn't initialize content background");
        if (D()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.e, rect.left, rect.top, rect.right, rect.bottom);
            FloatingActionButton.b bVar = (FloatingActionButton.b) this.y;
            Objects.requireNonNull(bVar);
            e.super.setBackgroundDrawable(insetDrawable);
        } else {
            fy fyVar = this.y;
            Drawable drawable = this.e;
            FloatingActionButton.b bVar2 = (FloatingActionButton.b) fyVar;
            Objects.requireNonNull(bVar2);
            if (drawable != null) {
                e.super.setBackgroundDrawable(drawable);
            }
        }
        fy fyVar2 = this.y;
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        FloatingActionButton.b bVar3 = (FloatingActionButton.b) fyVar2;
        FloatingActionButton.this.n.set(i2, i3, i4, i5);
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        floatingActionButton.setPadding(i2 + floatingActionButton.k, i3 + FloatingActionButton.this.k, i4 + FloatingActionButton.this.k, i5 + FloatingActionButton.this.k);
    }

    /* access modifiers changed from: package-private */
    public void K(float f2) {
        my myVar = this.b;
        if (myVar != null) {
            myVar.E(f2);
        }
    }

    public void d(Animator.AnimatorListener animatorListener) {
        if (this.v == null) {
            this.v = new ArrayList<>();
        }
        this.v.add(animatorListener);
    }

    /* access modifiers changed from: package-private */
    public void e(Animator.AnimatorListener animatorListener) {
        if (this.u == null) {
            this.u = new ArrayList<>();
        }
        this.u.add(animatorListener);
    }

    /* access modifiers changed from: package-private */
    public void f(g gVar) {
        if (this.w == null) {
            this.w = new ArrayList<>();
        }
        this.w.add(gVar);
    }

    /* access modifiers changed from: package-private */
    public my j() {
        qy qyVar = this.a;
        Objects.requireNonNull(qyVar);
        return new my(qyVar);
    }

    /* access modifiers changed from: package-private */
    public float k() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public void l(Rect rect) {
        int v2 = this.f ? (this.j - this.x.v()) / 2 : 0;
        float k2 = k() + this.i;
        int max = Math.max(v2, (int) Math.ceil((double) k2));
        int max2 = Math.max(v2, (int) Math.ceil((double) (k2 * 1.5f)));
        rect.set(max, max2, max, max2);
    }

    /* access modifiers changed from: package-private */
    public void m(h hVar, boolean z2) {
        boolean z3 = true;
        if (this.x.getVisibility() != 0 ? this.t == 2 : this.t != 1) {
            z3 = false;
        }
        if (!z3) {
            Animator animator = this.n;
            if (animator != null) {
                animator.cancel();
            }
            if (E()) {
                px pxVar = this.p;
                if (pxVar == null) {
                    if (this.m == null) {
                        this.m = px.b(this.x.getContext(), R.animator.b);
                    }
                    pxVar = this.m;
                    Objects.requireNonNull(pxVar);
                }
                AnimatorSet h2 = h(pxVar, 0.0f, 0.0f, 0.0f);
                h2.addListener(new a(z2, null));
                ArrayList<Animator.AnimatorListener> arrayList = this.v;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        h2.addListener(it.next());
                    }
                }
                h2.start();
                return;
            }
            this.x.l(z2 ? 8 : 4, z2);
        }
    }

    /* access modifiers changed from: package-private */
    public void n(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        my j2 = j();
        this.b = j2;
        j2.setTintList(colorStateList);
        if (mode != null) {
            this.b.setTintMode(mode);
        }
        this.b.K(-12303292);
        this.b.A(this.x.getContext());
        cy cyVar = new cy(this.b.v());
        cyVar.setTintList(dy.c(colorStateList2));
        this.c = cyVar;
        my myVar = this.b;
        Objects.requireNonNull(myVar);
        this.e = new LayerDrawable(new Drawable[]{myVar, cyVar});
    }

    /* access modifiers changed from: package-private */
    public boolean o() {
        if (this.x.getVisibility() != 0) {
            if (this.t == 2) {
                return true;
            }
            return false;
        } else if (this.t != 1) {
            return true;
        } else {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public void p() {
        this.k.b();
    }

    /* access modifiers changed from: package-private */
    public void q() {
        my myVar = this.b;
        if (myVar != null) {
            ny.b(this.x, myVar);
        }
        if (x()) {
            ViewTreeObserver viewTreeObserver = this.x.getViewTreeObserver();
            if (this.D == null) {
                this.D = new g(this);
            }
            viewTreeObserver.addOnPreDrawListener(this.D);
        }
    }

    /* access modifiers changed from: package-private */
    public void r() {
        ViewTreeObserver viewTreeObserver = this.x.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.D;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.D = null;
        }
    }

    /* access modifiers changed from: package-private */
    public void s(int[] iArr) {
        this.k.c(iArr);
    }

    /* access modifiers changed from: package-private */
    public void t(float f2, float f3, float f4) {
        J();
        my myVar = this.b;
        if (myVar != null) {
            myVar.E(f2);
        }
    }

    /* access modifiers changed from: package-private */
    public void u() {
        float rotation = this.x.getRotation();
        if (this.q != rotation) {
            this.q = rotation;
            H();
        }
    }

    /* access modifiers changed from: package-private */
    public void v() {
        ArrayList<g> arrayList = this.w;
        if (arrayList != null) {
            Iterator<g> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void w() {
        ArrayList<g> arrayList = this.w;
        if (arrayList != null) {
            Iterator<g> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean x() {
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void y(px pxVar) {
        this.p = pxVar;
    }

    /* access modifiers changed from: package-private */
    public final void z(float f2) {
        this.r = f2;
        Matrix matrix = this.C;
        g(f2, matrix);
        this.x.setImageMatrix(matrix);
    }
}
