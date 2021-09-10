package defpackage;

import defpackage.j6;
import java.util.Objects;

/* renamed from: l6  reason: default package */
public final class l6<V> extends j6<V> {
    private l6() {
    }

    public static <V> l6<V> j() {
        return new l6<>();
    }

    @Override // defpackage.j6
    public boolean i(V v) {
        return super.i(v);
    }

    public boolean k(Throwable th) {
        Objects.requireNonNull(th);
        if (!j6.g.b(this, null, new j6.d(th))) {
            return false;
        }
        j6.b(this);
        return true;
    }

    public boolean l(uy<? extends V> uyVar) {
        j6.g gVar;
        j6.d dVar;
        Objects.requireNonNull(uyVar);
        Object obj = this.b;
        if (obj == null) {
            if (((j6) uyVar).isDone()) {
                if (!j6.g.b(this, null, j6.e(uyVar))) {
                    return false;
                }
                j6.b(this);
            } else {
                gVar = new j6.g(this, uyVar);
                if (j6.g.b(this, null, gVar)) {
                    try {
                        ((j6) uyVar).addListener(gVar, k6.INSTANCE);
                    } catch (Throwable unused) {
                        dVar = j6.d.b;
                    }
                } else {
                    obj = this.b;
                }
            }
            return true;
        }
        if (!(obj instanceof j6.c)) {
            return false;
        }
        ((j6) uyVar).cancel(((j6.c) obj).a);
        return false;
        j6.g.b(this, gVar, dVar);
        return true;
    }
}
