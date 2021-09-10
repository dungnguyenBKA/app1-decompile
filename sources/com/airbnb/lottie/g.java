package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import defpackage.ca;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class g extends Drawable implements Drawable.Callback, Animatable {
    private final Matrix b = new Matrix();
    private e c;
    private final ac d;
    private float e;
    private boolean f;
    private final ArrayList<AbstractC0029g> g;
    private final ValueAnimator.AnimatorUpdateListener h;
    private ImageView.ScaleType i;
    private j8 j;
    private String k;
    private i8 l;
    private boolean m;
    private aa n;
    private int o;
    private boolean p;
    private boolean q;

    /* access modifiers changed from: package-private */
    public class a implements AbstractC0029g {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }

        @Override // com.airbnb.lottie.g.AbstractC0029g
        public void a(e eVar) {
            g.this.x(this.a);
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements AbstractC0029g {
        final /* synthetic */ float a;

        b(float f) {
            this.a = f;
        }

        @Override // com.airbnb.lottie.g.AbstractC0029g
        public void a(e eVar) {
            g.this.z(this.a);
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements AbstractC0029g {
        final /* synthetic */ o8 a;
        final /* synthetic */ Object b;
        final /* synthetic */ gc c;

        c(o8 o8Var, Object obj, gc gcVar) {
            this.a = o8Var;
            this.b = obj;
            this.c = gcVar;
        }

        @Override // com.airbnb.lottie.g.AbstractC0029g
        public void a(e eVar) {
            g.this.e(this.a, this.b, this.c);
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (g.this.n != null) {
                g.this.n.s(g.this.d.h());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class e implements AbstractC0029g {
        e() {
        }

        @Override // com.airbnb.lottie.g.AbstractC0029g
        public void a(e eVar) {
            g.this.u();
        }
    }

    /* access modifiers changed from: package-private */
    public class f implements AbstractC0029g {
        f() {
        }

        @Override // com.airbnb.lottie.g.AbstractC0029g
        public void a(e eVar) {
            g.this.v();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: com.airbnb.lottie.g$g  reason: collision with other inner class name */
    public interface AbstractC0029g {
        void a(e eVar);
    }

    public g() {
        ac acVar = new ac();
        this.d = acVar;
        this.e = 1.0f;
        this.f = true;
        new HashSet();
        this.g = new ArrayList<>();
        d dVar = new d();
        this.h = dVar;
        this.o = 255;
        this.p = true;
        this.q = false;
        acVar.addUpdateListener(dVar);
    }

    private void G() {
        e eVar = this.c;
        if (eVar != null) {
            float f2 = this.e;
            setBounds(0, 0, (int) (((float) eVar.b().width()) * f2), (int) (((float) this.c.b().height()) * f2));
        }
    }

    private void f() {
        e eVar = this.c;
        int i2 = cb.d;
        Rect b2 = eVar.b();
        this.n = new aa(this, new ca(Collections.emptyList(), eVar, "__container", -1, ca.a.PRE_COMP, -1, null, Collections.emptyList(), new e9(null, null, null, null, null, null, null, null, null), 0, 0, 0, 0.0f, 0.0f, b2.width(), b2.height(), null, null, Collections.emptyList(), ca.b.NONE, null, false), this.c.j(), this.c);
    }

    private void i(Canvas canvas) {
        float f2;
        float f3;
        int i2 = -1;
        if (ImageView.ScaleType.FIT_XY == this.i) {
            if (this.n != null) {
                Rect bounds = getBounds();
                float width = ((float) bounds.width()) / ((float) this.c.b().width());
                float height = ((float) bounds.height()) / ((float) this.c.b().height());
                if (this.p) {
                    float min = Math.min(width, height);
                    if (min < 1.0f) {
                        f3 = 1.0f / min;
                        width /= f3;
                        height /= f3;
                    } else {
                        f3 = 1.0f;
                    }
                    if (f3 > 1.0f) {
                        i2 = canvas.save();
                        float width2 = ((float) bounds.width()) / 2.0f;
                        float height2 = ((float) bounds.height()) / 2.0f;
                        float f4 = width2 * min;
                        float f5 = min * height2;
                        canvas.translate(width2 - f4, height2 - f5);
                        canvas.scale(f3, f3, f4, f5);
                    }
                }
                this.b.reset();
                this.b.preScale(width, height);
                this.n.f(canvas, this.b, this.o);
                if (i2 > 0) {
                    canvas.restoreToCount(i2);
                }
            }
        } else if (this.n != null) {
            float f6 = this.e;
            float min2 = Math.min(((float) canvas.getWidth()) / ((float) this.c.b().width()), ((float) canvas.getHeight()) / ((float) this.c.b().height()));
            if (f6 > min2) {
                f2 = this.e / min2;
            } else {
                min2 = f6;
                f2 = 1.0f;
            }
            if (f2 > 1.0f) {
                i2 = canvas.save();
                float width3 = ((float) this.c.b().width()) / 2.0f;
                float height3 = ((float) this.c.b().height()) / 2.0f;
                float f7 = width3 * min2;
                float f8 = height3 * min2;
                float f9 = this.e;
                canvas.translate((width3 * f9) - f7, (f9 * height3) - f8);
                canvas.scale(f2, f2, f7, f8);
            }
            this.b.reset();
            this.b.preScale(min2, min2);
            this.n.f(canvas, this.b, this.o);
            if (i2 > 0) {
                canvas.restoreToCount(i2);
            }
        }
    }

    public void A(int i2) {
        this.d.setRepeatCount(i2);
    }

    public void B(int i2) {
        this.d.setRepeatMode(i2);
    }

    public void C(float f2) {
        this.e = f2;
        G();
    }

    /* access modifiers changed from: package-private */
    public void D(ImageView.ScaleType scaleType) {
        this.i = scaleType;
    }

    public void E(float f2) {
        this.d.v(f2);
    }

    /* access modifiers changed from: package-private */
    public void F(Boolean bool) {
        this.f = bool.booleanValue();
    }

    public boolean H() {
        return this.c.c().l() > 0;
    }

    public void c(Animator.AnimatorListener animatorListener) {
        this.d.addListener(animatorListener);
    }

    public void d(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.d.addUpdateListener(animatorUpdateListener);
    }

    public void draw(Canvas canvas) {
        this.q = false;
        i(canvas);
        b.a("Drawable#draw");
    }

    public <T> void e(o8 o8Var, T t, gc<T> gcVar) {
        List list;
        aa aaVar = this.n;
        if (aaVar == null) {
            this.g.add(new c(o8Var, t, gcVar));
            return;
        }
        boolean z = true;
        if (o8Var == o8.c) {
            aaVar.g(t, gcVar);
        } else if (o8Var.d() != null) {
            o8Var.d().g(t, gcVar);
        } else {
            if (this.n == null) {
                zb.b("Cannot resolve KeyPath. Composition is not set yet.");
                list = Collections.emptyList();
            } else {
                ArrayList arrayList = new ArrayList();
                this.n.c(o8Var, 0, arrayList, new o8(new String[0]));
                list = arrayList;
            }
            for (int i2 = 0; i2 < list.size(); i2++) {
                ((o8) list.get(i2)).d().g(t, gcVar);
            }
            z = true ^ list.isEmpty();
        }
        if (z) {
            invalidateSelf();
            if (t == l.A) {
                z(this.d.h());
            }
        }
    }

    public void g() {
        this.g.clear();
        this.d.cancel();
    }

    public int getAlpha() {
        return this.o;
    }

    public int getIntrinsicHeight() {
        e eVar = this.c;
        if (eVar == null) {
            return -1;
        }
        return (int) (((float) eVar.b().height()) * this.e);
    }

    public int getIntrinsicWidth() {
        e eVar = this.c;
        if (eVar == null) {
            return -1;
        }
        return (int) (((float) eVar.b().width()) * this.e);
    }

    public int getOpacity() {
        return -3;
    }

    public void h() {
        if (this.d.isRunning()) {
            this.d.cancel();
        }
        this.c = null;
        this.n = null;
        this.j = null;
        this.d.f();
        invalidateSelf();
    }

    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public void invalidateSelf() {
        if (!this.q) {
            this.q = true;
            Drawable.Callback callback = getCallback();
            if (callback != null) {
                callback.invalidateDrawable(this);
            }
        }
    }

    public boolean isRunning() {
        return s();
    }

    public void j(boolean z) {
        if (this.m != z) {
            this.m = z;
            if (this.c != null) {
                f();
            }
        }
    }

    public boolean k() {
        return this.m;
    }

    public e l() {
        return this.c;
    }

    public Bitmap m(String str) {
        j8 j8Var;
        if (getCallback() == null) {
            j8Var = null;
        } else {
            j8 j8Var2 = this.j;
            if (j8Var2 != null) {
                Drawable.Callback callback = getCallback();
                if (!j8Var2.b((callback != null && (callback instanceof View)) ? ((View) callback).getContext() : null)) {
                    this.j = null;
                }
            }
            if (this.j == null) {
                this.j = new j8(getCallback(), this.k, null, this.c.i());
            }
            j8Var = this.j;
        }
        if (j8Var != null) {
            return j8Var.a(str);
        }
        return null;
    }

    public String n() {
        return this.k;
    }

    public float o() {
        return this.d.h();
    }

    public int p() {
        return this.d.getRepeatCount();
    }

    public int q() {
        return this.d.getRepeatMode();
    }

    public Typeface r(String str, String str2) {
        i8 i8Var;
        if (getCallback() == null) {
            i8Var = null;
        } else {
            if (this.l == null) {
                this.l = new i8(getCallback());
            }
            i8Var = this.l;
        }
        if (i8Var != null) {
            return i8Var.a(str, str2);
        }
        return null;
    }

    public boolean s() {
        ac acVar = this.d;
        if (acVar == null) {
            return false;
        }
        return acVar.isRunning();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        this.o = i2;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        zb.b("Use addColorFilter instead.");
    }

    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && !((View) callback).isInEditMode()) {
            u();
        }
    }

    public void stop() {
        this.g.clear();
        this.d.g();
    }

    public void t() {
        this.g.clear();
        this.d.m();
    }

    public void u() {
        float f2;
        if (this.n == null) {
            this.g.add(new e());
            return;
        }
        if (this.f || p() == 0) {
            this.d.n();
        }
        if (!this.f) {
            if (this.d.k() < 0.0f) {
                f2 = this.d.j();
            } else {
                f2 = this.d.i();
            }
            x((int) f2);
            this.d.g();
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void v() {
        float f2;
        if (this.n == null) {
            this.g.add(new f());
            return;
        }
        if (this.f || p() == 0) {
            this.d.r();
        }
        if (!this.f) {
            if (this.d.k() < 0.0f) {
                f2 = this.d.j();
            } else {
                f2 = this.d.i();
            }
            x((int) f2);
            this.d.g();
        }
    }

    public boolean w(e eVar) {
        if (this.c == eVar) {
            return false;
        }
        this.q = false;
        h();
        this.c = eVar;
        f();
        this.d.s(eVar);
        z(this.d.getAnimatedFraction());
        this.e = this.e;
        G();
        G();
        Iterator it = new ArrayList(this.g).iterator();
        while (it.hasNext()) {
            ((AbstractC0029g) it.next()).a(eVar);
            it.remove();
        }
        this.g.clear();
        eVar.t(false);
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof ImageView)) {
            return true;
        }
        ImageView imageView = (ImageView) callback;
        imageView.setImageDrawable(null);
        imageView.setImageDrawable(this);
        return true;
    }

    public void x(int i2) {
        if (this.c == null) {
            this.g.add(new a(i2));
        } else {
            this.d.t((float) i2);
        }
    }

    public void y(String str) {
        this.k = str;
    }

    public void z(float f2) {
        e eVar = this.c;
        if (eVar == null) {
            this.g.add(new b(f2));
            return;
        }
        this.d.t(cc.f(eVar.n(), this.c.f(), f2));
        b.a("Drawable#setProgress");
    }
}
