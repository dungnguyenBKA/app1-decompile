package defpackage;

import java.util.concurrent.TimeUnit;

/* renamed from: ek0  reason: default package */
public class ek0 extends sk0 {
    private sk0 e;

    public ek0(sk0 sk0) {
        if (sk0 != null) {
            this.e = sk0;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // defpackage.sk0
    public sk0 a() {
        return this.e.a();
    }

    @Override // defpackage.sk0
    public sk0 b() {
        return this.e.b();
    }

    @Override // defpackage.sk0
    public long c() {
        return this.e.c();
    }

    @Override // defpackage.sk0
    public sk0 d(long j) {
        return this.e.d(j);
    }

    @Override // defpackage.sk0
    public boolean e() {
        return this.e.e();
    }

    @Override // defpackage.sk0
    public void f() {
        this.e.f();
    }

    @Override // defpackage.sk0
    public sk0 g(long j, TimeUnit timeUnit) {
        return this.e.g(j, timeUnit);
    }

    public final sk0 i() {
        return this.e;
    }

    public final ek0 j(sk0 sk0) {
        this.e = sk0;
        return this;
    }
}
