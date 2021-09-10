package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.n;
import java.util.Map;

public final class a2 extends z2 {
    private final Map<String, Long> b = new x();
    private final Map<String, Integer> c = new x();
    private long d;

    public a2(j4 j4Var) {
        super(j4Var);
    }

    static /* synthetic */ void k(a2 a2Var, String str, long j) {
        a2Var.g();
        n.e(str);
        if (a2Var.c.isEmpty()) {
            a2Var.d = j;
        }
        Integer num = a2Var.c.get(str);
        if (num != null) {
            a2Var.c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (a2Var.c.size() >= 100) {
            a2Var.a.c().q().a("Too many ads visible");
        } else {
            a2Var.c.put(str, 1);
            a2Var.b.put(str, Long.valueOf(j));
        }
    }

    static /* synthetic */ void l(a2 a2Var, String str, long j) {
        a2Var.g();
        n.e(str);
        Integer num = a2Var.c.get(str);
        if (num != null) {
            r6 r = a2Var.a.O().r(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                a2Var.c.remove(str);
                Long l = a2Var.b.get(str);
                if (l == null) {
                    a2Var.a.c().n().a("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    a2Var.b.remove(str);
                    a2Var.o(str, j - longValue, r);
                }
                if (a2Var.c.isEmpty()) {
                    long j2 = a2Var.d;
                    if (j2 == 0) {
                        a2Var.a.c().n().a("First ad exposure time was never set");
                        return;
                    }
                    a2Var.n(j - j2, r);
                    a2Var.d = 0;
                    return;
                }
                return;
            }
            a2Var.c.put(str, Integer.valueOf(intValue));
            return;
        }
        a2Var.a.c().n().b("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    private final void n(long j, r6 r6Var) {
        if (r6Var == null) {
            this.a.c().v().a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.a.c().v().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            z6.w(r6Var, bundle, true);
            this.a.D().Q("am", "_xa", bundle);
        }
    }

    private final void o(String str, long j, r6 r6Var) {
        if (r6Var == null) {
            this.a.c().v().a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.a.c().v().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            z6.w(r6Var, bundle, true);
            this.a.D().Q("am", "_xu", bundle);
        }
    }

    /* access modifiers changed from: private */
    public final void p(long j) {
        for (String str : this.b.keySet()) {
            this.b.put(str, Long.valueOf(j));
        }
        if (!this.b.isEmpty()) {
            this.d = j;
        }
    }

    public final void h(String str, long j) {
        if (str == null || str.length() == 0) {
            this.a.c().n().a("Ad unit id must be a non-empty string");
        } else {
            this.a.e().q(new a(this, str, j));
        }
    }

    public final void i(String str, long j) {
        if (str == null || str.length() == 0) {
            this.a.c().n().a("Ad unit id must be a non-empty string");
        } else {
            this.a.e().q(new y(this, str, j));
        }
    }

    public final void j(long j) {
        r6 r = this.a.O().r(false);
        for (String str : this.b.keySet()) {
            o(str, j - this.b.get(str).longValue(), r);
        }
        if (!this.b.isEmpty()) {
            n(j - this.d, r);
        }
        p(j);
    }
}
