package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.zzl;

public final class o8 extends y3 {
    private Handler c;
    protected final n8 d = new n8(this);
    protected final m8 e = new m8(this);
    protected final k8 f = new k8(this);

    o8(j4 j4Var) {
        super(j4Var);
    }

    static /* synthetic */ void n(o8 o8Var, long j) {
        o8Var.g();
        o8Var.r();
        o8Var.a.c().v().b("Activity resumed, time", Long.valueOf(j));
        e x = o8Var.a.x();
        u2<Boolean> u2Var = v2.u0;
        if (x.u(null, u2Var)) {
            if (o8Var.a.x().z() || o8Var.a.y().v.a()) {
                o8Var.e.a(j);
            }
            o8Var.f.a();
        } else {
            o8Var.f.a();
            if (o8Var.a.x().z()) {
                o8Var.e.a(j);
            }
        }
        n8 n8Var = o8Var.d;
        n8Var.a.g();
        if (n8Var.a.a.j()) {
            if (!n8Var.a.a.x().u(null, u2Var)) {
                n8Var.a.a.y().v.b(false);
            }
            n8Var.b(n8Var.a.a.a().a(), false);
        }
    }

    static /* synthetic */ void o(o8 o8Var, long j) {
        o8Var.g();
        o8Var.r();
        o8Var.a.c().v().b("Activity paused, time", Long.valueOf(j));
        o8Var.f.b(j);
        if (o8Var.a.x().z()) {
            o8Var.e.b();
        }
        n8 n8Var = o8Var.d;
        if (!n8Var.a.a.x().u(null, v2.u0)) {
            n8Var.a.a.y().v.b(true);
        }
    }

    /* access modifiers changed from: private */
    public final void r() {
        g();
        if (this.c == null) {
            this.c = new zzl(Looper.getMainLooper());
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.y3
    public final boolean l() {
        return false;
    }
}
