package defpackage;

import com.bumptech.glide.load.g;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
/* renamed from: ee  reason: default package */
public final class ee {
    private final Map<g, xd<?>> a = new HashMap();
    private final Map<g, xd<?>> b = new HashMap();

    ee() {
    }

    private Map<g, xd<?>> b(boolean z) {
        return z ? this.b : this.a;
    }

    /* access modifiers changed from: package-private */
    public xd<?> a(g gVar, boolean z) {
        return (z ? this.b : this.a).get(gVar);
    }

    /* access modifiers changed from: package-private */
    public void c(g gVar, xd<?> xdVar) {
        b(xdVar.i()).put(gVar, xdVar);
    }

    /* access modifiers changed from: package-private */
    public void d(g gVar, xd<?> xdVar) {
        Map<g, xd<?>> b2 = b(xdVar.i());
        if (xdVar.equals(b2.get(gVar))) {
            b2.remove(gVar);
        }
    }
}
