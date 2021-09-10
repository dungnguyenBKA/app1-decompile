package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzlx;

/* access modifiers changed from: package-private */
public final class m8 {
    protected long a;
    protected long b;
    private final l c;
    final /* synthetic */ o8 d;

    public m8(o8 o8Var) {
        this.d = o8Var;
        this.c = new l8(this, o8Var.a);
        long b2 = o8Var.a.a().b();
        this.a = b2;
        this.b = b2;
    }

    /* access modifiers changed from: package-private */
    public final void a(long j) {
        this.d.g();
        this.c.d();
        this.a = j;
        this.b = j;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.c.d();
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        this.c.d();
        this.a = 0;
        this.b = 0;
    }

    public final boolean d(boolean z, boolean z2, long j) {
        this.d.g();
        this.d.i();
        zzlx.zzb();
        if (!this.d.a.x().u(null, v2.p0)) {
            this.d.a.y().t.b(this.d.a.a().a());
        } else if (this.d.a.j()) {
            this.d.a.y().t.b(this.d.a.a().a());
        }
        long j2 = j - this.a;
        if (z || j2 >= 1000) {
            if (!z2) {
                j2 = j - this.b;
                this.b = j;
            }
            this.d.a.c().v().b("Recording user engagement, ms", Long.valueOf(j2));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j2);
            z6.w(this.d.a.O().r(!this.d.a.x().z()), bundle, true);
            e x = this.d.a.x();
            u2<Boolean> u2Var = v2.U;
            if (!x.u(null, u2Var) && z2) {
                bundle.putLong("_fr", 1);
            }
            if (!this.d.a.x().u(null, u2Var) || !z2) {
                this.d.a.D().Q("auto", "_e", bundle);
            }
            this.a = j;
            this.c.d();
            this.c.b(3600000);
            return true;
        }
        this.d.a.c().v().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
        return false;
    }
}
