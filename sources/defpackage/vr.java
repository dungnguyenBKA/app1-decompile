package defpackage;

import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: vr  reason: default package */
public final class vr<T> extends xr<T> {
    private final T a;
    private final yr b;

    vr(Integer num, T t, yr yrVar) {
        Objects.requireNonNull(t, "Null payload");
        this.a = t;
        this.b = yrVar;
    }

    @Override // defpackage.xr
    public Integer a() {
        return null;
    }

    @Override // defpackage.xr
    public T b() {
        return this.a;
    }

    @Override // defpackage.xr
    public yr c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xr)) {
            return false;
        }
        xr xrVar = (xr) obj;
        if (xrVar.a() != null || !this.a.equals(xrVar.b()) || !this.b.equals(xrVar.c())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.b.hashCode() ^ ((-721379959 ^ this.a.hashCode()) * 1000003);
    }

    public String toString() {
        return "Event{code=" + ((Object) null) + ", payload=" + ((Object) this.a) + ", priority=" + this.b + "}";
    }
}
