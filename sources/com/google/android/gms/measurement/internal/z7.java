package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.d;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzs;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class z7 extends y3 {
    private final y7 c;
    private y2 d;
    private volatile Boolean e;
    private final l f;
    private final p8 g;
    private final List<Runnable> h = new ArrayList();
    private final l i;

    protected z7(j4 j4Var) {
        super(j4Var);
        this.g = new p8(j4Var.a());
        this.c = new y7(this);
        this.f = new i7(this, j4Var);
        this.i = new k7(this, j4Var);
    }

    private final boolean B() {
        this.a.zzas();
        return true;
    }

    /* access modifiers changed from: private */
    public final void C() {
        g();
        this.g.a();
        l lVar = this.f;
        this.a.x();
        lVar.b(v2.J.b(null).longValue());
    }

    private final void D(Runnable runnable) {
        g();
        if (G()) {
            runnable.run();
            return;
        }
        int size = this.h.size();
        this.a.x();
        if (((long) size) >= 1000) {
            this.a.c().n().a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.h.add(runnable);
        this.i.b(60000);
        o();
    }

    /* access modifiers changed from: private */
    public final void E() {
        g();
        this.a.c().v().b("Processing queued up service tasks", Integer.valueOf(this.h.size()));
        for (Runnable runnable : this.h) {
            try {
                runnable.run();
            } catch (Exception e2) {
                this.a.c().n().b("Task exception while flushing queue", e2);
            }
        }
        this.h.clear();
        this.i.d();
    }

    private final zzp F(boolean z) {
        Pair<String, Long> b;
        this.a.zzas();
        a3 d2 = this.a.d();
        String str = null;
        if (z) {
            i3 c2 = this.a.c();
            if (!(c2.a.y().d == null || (b = c2.a.y().d.b()) == null || b == v3.C)) {
                String valueOf = String.valueOf(b.second);
                String str2 = (String) b.first;
                str = ic.n(new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length()), valueOf, ":", str2);
            }
        }
        return d2.n(str);
    }

    static /* synthetic */ void w(z7 z7Var, ComponentName componentName) {
        z7Var.g();
        if (z7Var.d != null) {
            z7Var.d = null;
            z7Var.a.c().v().b("Disconnected from device MeasurementService", componentName);
            z7Var.g();
            z7Var.o();
        }
    }

    public final boolean G() {
        g();
        i();
        return this.d != null;
    }

    /* access modifiers changed from: protected */
    public final void H() {
        g();
        i();
        D(new l7(this, F(true)));
    }

    /* access modifiers changed from: protected */
    public final void I(boolean z) {
        zzlc.zzb();
        if (this.a.x().u(null, v2.w0)) {
            g();
            i();
            if (z) {
                B();
                this.a.G().n();
            }
            if (u()) {
                D(new m7(this, F(false)));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void J(y2 y2Var, AbstractSafeParcelable abstractSafeParcelable, zzp zzp) {
        int i2;
        g();
        i();
        B();
        this.a.x();
        int i3 = 0;
        int i4 = 100;
        while (i3 < 1001 && i4 == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> r = this.a.G().r(100);
            if (r != null) {
                arrayList.addAll(r);
                i2 = r.size();
            } else {
                i2 = 0;
            }
            if (abstractSafeParcelable != null && i2 < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i5);
                if (abstractSafeParcelable2 instanceof zzas) {
                    try {
                        y2Var.M((zzas) abstractSafeParcelable2, zzp);
                    } catch (RemoteException e2) {
                        this.a.c().n().b("Failed to send event to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkg) {
                    try {
                        y2Var.A((zzkg) abstractSafeParcelable2, zzp);
                    } catch (RemoteException e3) {
                        this.a.c().n().b("Failed to send user property to the service", e3);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaa) {
                    try {
                        y2Var.l((zzaa) abstractSafeParcelable2, zzp);
                    } catch (RemoteException e4) {
                        this.a.c().n().b("Failed to send conditional user property to the service", e4);
                    }
                } else {
                    this.a.c().n().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i3++;
            i4 = i2;
        }
    }

    /* access modifiers changed from: protected */
    public final void K(zzas zzas, String str) {
        g();
        i();
        B();
        D(new n7(this, F(true), this.a.G().o(zzas), zzas, str));
    }

    /* access modifiers changed from: protected */
    public final void L(zzaa zzaa) {
        g();
        i();
        this.a.zzas();
        D(new o7(this, F(true), this.a.G().q(zzaa), new zzaa(zzaa), zzaa));
    }

    /* access modifiers changed from: protected */
    public final void M(AtomicReference<List<zzaa>> atomicReference, String str, String str2, String str3) {
        g();
        i();
        D(new p7(this, atomicReference, str2, str3, F(false)));
    }

    /* access modifiers changed from: protected */
    public final void N(zzs zzs, String str, String str2) {
        g();
        i();
        D(new q7(this, str, str2, F(false), zzs));
    }

    /* access modifiers changed from: protected */
    public final void O(AtomicReference<List<zzkg>> atomicReference, String str, String str2, String str3, boolean z) {
        g();
        i();
        D(new r7(this, atomicReference, str2, str3, F(false), z));
    }

    /* access modifiers changed from: protected */
    public final void P(zzs zzs, String str, String str2, boolean z) {
        g();
        i();
        D(new a7(this, str, str2, F(false), z, zzs));
    }

    /* access modifiers changed from: protected */
    public final void Q(zzkg zzkg) {
        g();
        i();
        B();
        D(new b7(this, F(true), this.a.G().p(zzkg), zzkg));
    }

    /* access modifiers changed from: protected */
    public final void R() {
        g();
        i();
        zzp F = F(false);
        B();
        this.a.G().n();
        D(new c7(this, F));
    }

    public final void S(AtomicReference<String> atomicReference) {
        g();
        i();
        D(new d7(this, atomicReference, F(false)));
    }

    public final void T(zzs zzs) {
        g();
        i();
        D(new e7(this, F(false), zzs));
    }

    /* access modifiers changed from: protected */
    public final void U() {
        g();
        i();
        zzp F = F(true);
        this.a.G().s();
        D(new f7(this, F));
    }

    /* access modifiers changed from: protected */
    public final void V(r6 r6Var) {
        g();
        i();
        D(new g7(this, r6Var));
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.y3
    public final boolean l() {
        return false;
    }

    public final void n(Bundle bundle) {
        g();
        i();
        D(new h7(this, F(false), bundle));
    }

    /* access modifiers changed from: package-private */
    public final void o() {
        g();
        i();
        if (!G()) {
            if (q()) {
                this.c.c();
            } else if (!this.a.x().E()) {
                this.a.zzas();
                List<ResolveInfo> queryIntentServices = this.a.b().getPackageManager().queryIntentServices(new Intent().setClassName(this.a.b(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
                if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                    this.a.c().n().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                    return;
                }
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                Context b = this.a.b();
                this.a.zzas();
                intent.setComponent(new ComponentName(b, "com.google.android.gms.measurement.AppMeasurementService"));
                this.c.a(intent);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final Boolean p() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00f0, code lost:
        if (r0 == null) goto L_0x00f2;
     */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0135  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean q() {
        /*
        // Method dump skipped, instructions count: 346
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.z7.q():boolean");
    }

    /* access modifiers changed from: protected */
    public final void r(y2 y2Var) {
        g();
        Objects.requireNonNull(y2Var, "null reference");
        this.d = y2Var;
        C();
        E();
    }

    public final void s() {
        g();
        i();
        this.c.b();
        try {
            a.b().c(this.a.b(), this.c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    public final void t(zzs zzs, zzas zzas, String str) {
        g();
        i();
        h9 E = this.a.E();
        Objects.requireNonNull(E);
        if (d.c().e(E.a.b(), g.GOOGLE_PLAY_SERVICES_VERSION_CODE) != 0) {
            this.a.c().q().a("Not bundling data. Service unavailable or out of date");
            this.a.E().S(zzs, new byte[0]);
            return;
        }
        D(new j7(this, zzas, str, zzs));
    }

    /* access modifiers changed from: package-private */
    public final boolean u() {
        g();
        i();
        if (!this.a.x().u(null, v2.y0)) {
            return false;
        }
        if (!q() || this.a.E().M() >= v2.z0.b(null).intValue()) {
            return true;
        }
        return false;
    }
}
