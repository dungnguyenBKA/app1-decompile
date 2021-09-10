package defpackage;

import defpackage.il;
import java.util.Objects;

/* renamed from: ge  reason: default package */
final class ge<Z> implements he<Z>, il.d {
    private static final k2<ge<?>> f = il.a(20, new a());
    private final ll b = ll.a();
    private he<Z> c;
    private boolean d;
    private boolean e;

    /* renamed from: ge$a */
    class a implements il.b<ge<?>> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.il.b
        public ge<?> a() {
            return new ge();
        }
    }

    ge() {
    }

    static <Z> ge<Z> e(he<Z> heVar) {
        ge<Z> geVar = (ge<Z>) f.b();
        Objects.requireNonNull(geVar, "Argument must not be null");
        ((ge) geVar).e = false;
        ((ge) geVar).d = true;
        ((ge) geVar).c = heVar;
        return geVar;
    }

    @Override // defpackage.he
    public synchronized void a() {
        this.b.c();
        this.e = true;
        if (!this.d) {
            this.c.a();
            this.c = null;
            f.a(this);
        }
    }

    @Override // defpackage.il.d
    public ll b() {
        return this.b;
    }

    @Override // defpackage.he
    public int c() {
        return this.c.c();
    }

    @Override // defpackage.he
    public Class<Z> d() {
        return this.c.d();
    }

    /* access modifiers changed from: package-private */
    public synchronized void f() {
        this.b.c();
        if (this.d) {
            this.d = false;
            if (this.e) {
                a();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // defpackage.he
    public Z get() {
        return this.c.get();
    }
}
