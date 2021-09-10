package defpackage;

import java.util.Collections;

/* renamed from: h8  reason: default package */
public class h8<K, A> extends s7<K, A> {
    private final A i;

    public h8(gc<A> gcVar, A a) {
        super(Collections.emptyList());
        this.e = gcVar;
        this.i = a;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.s7
    public float c() {
        return 1.0f;
    }

    @Override // defpackage.s7
    public A g() {
        gc<A> gcVar = this.e;
        A a = this.i;
        float f = this.d;
        return gcVar.a(0.0f, 0.0f, a, a, f, f, f);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.s7
    public A h(ec<K> ecVar, float f) {
        return g();
    }

    @Override // defpackage.s7
    public void i() {
        if (this.e != null) {
            super.i();
        }
    }

    @Override // defpackage.s7
    public void k(float f) {
        this.d = f;
    }
}
