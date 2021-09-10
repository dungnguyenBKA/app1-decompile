package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.airbnb.lottie.b;
import com.airbnb.lottie.e;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: aa  reason: default package */
public class aa extends z9 {
    private final RectF A = new RectF();
    private Paint B = new Paint();
    private s7<Float, Float> x;
    private final List<z9> y = new ArrayList();
    private final RectF z = new RectF();

    public aa(g gVar, ca caVar, List<ca> list, e eVar) {
        super(gVar, caVar);
        int i;
        z9 z9Var;
        z9 z9Var2;
        u8 s = caVar.s();
        if (s != null) {
            s7<Float, Float> a = s.a();
            this.x = a;
            i(a);
            this.x.a(this);
        } else {
            this.x = null;
        }
        b0 b0Var = new b0(eVar.j().size());
        int size = list.size() - 1;
        z9 z9Var3 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            ca caVar2 = list.get(size);
            int ordinal = caVar2.d().ordinal();
            if (ordinal == 0) {
                z9Var2 = new aa(gVar, caVar2, eVar.m(caVar2.k()), eVar);
            } else if (ordinal == 1) {
                z9Var2 = new fa(gVar, caVar2);
            } else if (ordinal == 2) {
                z9Var2 = new ba(gVar, caVar2);
            } else if (ordinal == 3) {
                z9Var2 = new da(gVar, caVar2);
            } else if (ordinal == 4) {
                z9Var2 = new ea(gVar, caVar2);
            } else if (ordinal != 5) {
                StringBuilder q = ic.q("Unknown layer type ");
                q.append(caVar2.d());
                zb.b(q.toString());
                z9Var2 = null;
            } else {
                z9Var2 = new ga(gVar, caVar2);
            }
            if (z9Var2 != null) {
                b0Var.k(z9Var2.o.b(), z9Var2);
                if (z9Var3 != null) {
                    z9Var3.q(z9Var2);
                    z9Var3 = null;
                } else {
                    this.y.add(0, z9Var2);
                    int ordinal2 = caVar2.f().ordinal();
                    if (ordinal2 == 1 || ordinal2 == 2) {
                        z9Var3 = z9Var2;
                    }
                }
            }
            size--;
        }
        for (i = 0; i < b0Var.m(); i++) {
            z9 z9Var4 = (z9) b0Var.g(b0Var.j(i));
            if (!(z9Var4 == null || (z9Var = (z9) b0Var.g(z9Var4.o.h())) == null)) {
                z9Var4.r(z9Var);
            }
        }
    }

    @Override // defpackage.d7, defpackage.z9
    public void d(RectF rectF, Matrix matrix, boolean z2) {
        super.d(rectF, matrix, z2);
        for (int size = this.y.size() - 1; size >= 0; size--) {
            this.z.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.y.get(size).d(this.z, this.m, true);
            rectF.union(this.z);
        }
    }

    @Override // defpackage.p8, defpackage.z9
    public <T> void g(T t, gc<T> gcVar) {
        this.v.c(t, gcVar);
        if (t != l.A) {
            return;
        }
        if (gcVar == null) {
            s7<Float, Float> s7Var = this.x;
            if (s7Var != null) {
                s7Var.l(null);
                return;
            }
            return;
        }
        h8 h8Var = new h8(gcVar, null);
        this.x = h8Var;
        h8Var.a(this);
        i(this.x);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.z9
    public void l(Canvas canvas, Matrix matrix, int i) {
        this.A.set(0.0f, 0.0f, (float) this.o.j(), (float) this.o.i());
        matrix.mapRect(this.A);
        Objects.requireNonNull(this.n);
        canvas.save();
        for (int size = this.y.size() - 1; size >= 0; size--) {
            if (!this.A.isEmpty() ? canvas.clipRect(this.A) : true) {
                this.y.get(size).f(canvas, matrix, i);
            }
        }
        canvas.restore();
        b.a("CompositionLayer#draw");
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.z9
    public void p(o8 o8Var, int i, List<o8> list, o8 o8Var2) {
        for (int i2 = 0; i2 < this.y.size(); i2++) {
            this.y.get(i2).c(o8Var, i, list, o8Var2);
        }
    }

    @Override // defpackage.z9
    public void s(float f) {
        super.s(f);
        if (this.x != null) {
            f = ((this.o.a().h() * this.x.g().floatValue()) - this.o.a().n()) / (this.n.l().e() + 0.01f);
        }
        if (this.x == null) {
            f -= this.o.p();
        }
        if (this.o.t() != 0.0f) {
            f /= this.o.t();
        }
        for (int size = this.y.size() - 1; size >= 0; size--) {
            this.y.get(size).s(f);
        }
    }
}
