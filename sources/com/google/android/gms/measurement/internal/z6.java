package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

public final class z6 extends y3 {
    private volatile r6 c;
    private r6 d;
    protected r6 e;
    private final Map<Activity, r6> f = new ConcurrentHashMap();
    private Activity g;
    private volatile boolean h;
    private volatile r6 i;
    private r6 j;
    private boolean k;
    private final Object l = new Object();
    private String m;

    public z6(j4 j4Var) {
        super(j4Var);
    }

    static /* synthetic */ void D(z6 z6Var, Bundle bundle, r6 r6Var, r6 r6Var2, long j2) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        z6Var.o(r6Var, r6Var2, j2, true, z6Var.a.E().s(null, "screen_view", bundle, null, true));
    }

    private final void n(Activity activity, r6 r6Var, boolean z) {
        r6 r6Var2;
        r6 r6Var3 = this.c == null ? this.d : this.c;
        if (r6Var.b == null) {
            r6Var2 = new r6(r6Var.a, activity != null ? s(activity.getClass(), "Activity") : null, r6Var.c, r6Var.e, r6Var.f);
        } else {
            r6Var2 = r6Var;
        }
        this.d = this.c;
        this.c = r6Var2;
        this.a.e().q(new t6(this, r6Var2, r6Var3, this.a.a().b(), z));
    }

    /* access modifiers changed from: private */
    public final void o(r6 r6Var, r6 r6Var2, long j2, boolean z, Bundle bundle) {
        long j3;
        g();
        boolean z2 = false;
        if (z && this.e != null) {
            z2 = true;
        }
        if (z2) {
            p(this.e, true, j2);
        }
        if (r6Var2 == null || r6Var2.c != r6Var.c || !h9.F(r6Var2.b, r6Var.b) || !h9.F(r6Var2.a, r6Var.a)) {
            Bundle bundle2 = new Bundle();
            e x = this.a.x();
            u2<Boolean> u2Var = v2.u0;
            if (x.u(null, u2Var)) {
                if (bundle != null) {
                    bundle2 = new Bundle(bundle);
                } else {
                    bundle2 = new Bundle();
                }
            }
            w(r6Var, bundle2, true);
            if (r6Var2 != null) {
                String str = r6Var2.a;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = r6Var2.b;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", r6Var2.c);
            }
            if (z2) {
                m8 m8Var = this.a.A().e;
                long j4 = j2 - m8Var.b;
                m8Var.b = j2;
                if (j4 > 0) {
                    this.a.E().O(bundle2, j4);
                }
            }
            String str3 = "auto";
            if (this.a.x().u(null, u2Var)) {
                if (!this.a.x().z()) {
                    bundle2.putLong("_mst", 1);
                }
                if (true == r6Var.e) {
                    str3 = "app";
                }
            }
            if (this.a.x().u(null, u2Var)) {
                long a = this.a.a().a();
                if (r6Var.e) {
                    long j5 = r6Var.f;
                    if (j5 != 0) {
                        j3 = j5;
                        this.a.D().R(str3, "_vs", j3, bundle2);
                    }
                }
                j3 = a;
                this.a.D().R(str3, "_vs", j3, bundle2);
            } else {
                l6 D = this.a.D();
                j4 j4Var = D.a;
                D.g();
                D.R(str3, "_vs", D.a.a().a(), bundle2);
            }
        }
        this.e = r6Var;
        if (this.a.x().u(null, v2.u0) && r6Var.e) {
            this.j = r6Var;
        }
        this.a.P().V(r6Var);
    }

    /* access modifiers changed from: private */
    public final void p(r6 r6Var, boolean z, long j2) {
        this.a.f().j(this.a.a().b());
        if (this.a.A().e.d(r6Var != null && r6Var.d, z, j2) && r6Var != null) {
            r6Var.d = false;
        }
    }

    private final r6 q(Activity activity) {
        Objects.requireNonNull(activity, "null reference");
        r6 r6Var = this.f.get(activity);
        if (r6Var == null) {
            r6 r6Var2 = new r6(null, s(activity.getClass(), "Activity"), this.a.E().c0());
            this.f.put(activity, r6Var2);
            r6Var = r6Var2;
        }
        return (this.a.x().u(null, v2.u0) && this.i != null) ? this.i : r6Var;
    }

    public static void w(r6 r6Var, Bundle bundle, boolean z) {
        if (r6Var != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = r6Var.a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = r6Var.b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", r6Var.c);
                return;
            }
            z = false;
        }
        if (r6Var == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public final void A(Activity activity) {
        if (this.a.x().u(null, v2.u0)) {
            synchronized (this.l) {
                this.k = false;
                this.h = true;
            }
        }
        long b = this.a.a().b();
        if (!this.a.x().u(null, v2.t0) || this.a.x().z()) {
            r6 q = q(activity);
            this.d = this.c;
            this.c = null;
            this.a.e().q(new w6(this, q, b));
            return;
        }
        this.c = null;
        this.a.e().q(new v6(this, b));
    }

    public final void B(Activity activity, Bundle bundle) {
        r6 r6Var;
        if (this.a.x().z() && bundle != null && (r6Var = this.f.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong(FacebookAdapter.KEY_ID, r6Var.c);
            bundle2.putString("name", r6Var.a);
            bundle2.putString("referrer_name", r6Var.b);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    public final void C(Activity activity) {
        synchronized (this.l) {
            if (activity == this.g) {
                this.g = null;
            }
        }
        if (this.a.x().z()) {
            this.f.remove(activity);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.y3
    public final boolean l() {
        return false;
    }

    public final r6 r(boolean z) {
        i();
        g();
        if (!this.a.x().u(null, v2.u0) || !z) {
            return this.e;
        }
        r6 r6Var = this.e;
        return r6Var != null ? r6Var : this.j;
    }

    /* access modifiers changed from: package-private */
    public final String s(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.a.x();
        if (length2 <= 100) {
            return str2;
        }
        this.a.x();
        return str2.substring(0, 100);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0050, code lost:
        if (r2 > 100) goto L_0x0052;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0082, code lost:
        if (r4 > 100) goto L_0x0084;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00e0, code lost:
        r0 = r12.a.c().v();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00ea, code lost:
        if (r3 != null) goto L_0x00ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00ec, code lost:
        r1 = "null";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00ef, code lost:
        r1 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00f0, code lost:
        if (r4 != null) goto L_0x00f5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00f2, code lost:
        r2 = "null";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00f5, code lost:
        r2 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00f6, code lost:
        r0.c("Logging screen view with name, class", r1, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00fd, code lost:
        if (r12.c != null) goto L_0x0102;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00ff, code lost:
        r0 = r12.d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0102, code lost:
        r0 = r12.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0104, code lost:
        r1 = new com.google.android.gms.measurement.internal.r6(r3, r4, r12.a.E().c0(), true, r14);
        r12.c = r1;
        r12.d = r0;
        r12.i = r1;
        r12.a.e().q(new com.google.android.gms.measurement.internal.s6(r12, r13, r1, r0, r12.a.a().b()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0139, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void t(android.os.Bundle r13, long r14) {
        /*
        // Method dump skipped, instructions count: 317
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.z6.t(android.os.Bundle, long):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0088, code lost:
        if (r1 <= 100) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00b4, code lost:
        if (r1 <= 100) goto L_0x00cf;
     */
    @java.lang.Deprecated
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void u(android.app.Activity r4, java.lang.String r5, java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 253
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.z6.u(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    public final r6 v() {
        return this.c;
    }

    public final void x(String str, r6 r6Var) {
        g();
        synchronized (this) {
            String str2 = this.m;
            if (str2 == null || str2.equals(str) || r6Var != null) {
                this.m = str;
            }
        }
    }

    public final void y(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (this.a.x().z() && bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.f.put(activity, new r6(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong(FacebookAdapter.KEY_ID)));
        }
    }

    public final void z(Activity activity) {
        if (this.a.x().u(null, v2.u0)) {
            synchronized (this.l) {
                this.k = true;
                if (activity != this.g) {
                    synchronized (this.l) {
                        this.g = activity;
                        this.h = false;
                    }
                    if (this.a.x().u(null, v2.t0) && this.a.x().z()) {
                        this.i = null;
                        this.a.e().q(new y6(this));
                    }
                }
            }
        }
        if (!this.a.x().u(null, v2.t0) || this.a.x().z()) {
            n(activity, q(activity), false);
            a2 f2 = this.a.f();
            f2.a.e().q(new z0(f2, f2.a.a().b()));
            return;
        }
        this.c = this.i;
        this.a.e().q(new u6(this));
    }
}
