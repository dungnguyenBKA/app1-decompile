package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.b;
import com.google.android.gms.common.g;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.measurement.zzda;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzde;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzlc;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public final class c5 extends x2 {
    private final b9 b;
    private Boolean c;
    private String d = null;

    public c5(b9 b9Var) {
        Objects.requireNonNull(b9Var, "null reference");
        this.b = b9Var;
    }

    private final void V(zzp zzp) {
        Objects.requireNonNull(zzp, "null reference");
        n.e(zzp.b);
        W(zzp.b, false);
        this.b.e0().n(zzp.c, zzp.r, zzp.v);
    }

    private final void W(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.c == null) {
                        if (!"com.google.android.gms".equals(this.d) && !b.e0(this.b.b(), Binder.getCallingUid())) {
                            if (!h.a(this.b.b()).c(Binder.getCallingUid())) {
                                z2 = false;
                                this.c = Boolean.valueOf(z2);
                            }
                        }
                        z2 = true;
                        this.c = Boolean.valueOf(z2);
                    }
                    if (this.c.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.b.c().n().b("Measurement Service called with invalid calling package. appId", i3.w(str));
                    throw e;
                }
            }
            if (this.d == null && g.uidHasPackageName(this.b.b(), Binder.getCallingUid(), str)) {
                this.d = str;
            }
            if (!str.equals(this.d)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
            return;
        }
        this.b.c().n().a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void A(zzkg zzkg, zzp zzp) {
        Objects.requireNonNull(zzkg, "null reference");
        V(zzp);
        P(new x4(this, zzkg, zzp));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void H(zzp zzp) {
        V(zzp);
        P(new a5(this, zzp));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void M(zzas zzas, zzp zzp) {
        Objects.requireNonNull(zzas, "null reference");
        V(zzp);
        P(new u4(this, zzas, zzp));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzkg> N(String str, String str2, String str3, boolean z) {
        W(str, true);
        try {
            List<f9> list = (List) ((FutureTask) this.b.e().o(new o4(this, str, str2, str3))).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (f9 f9Var : list) {
                if (z || !h9.E(f9Var.c)) {
                    arrayList.add(new zzkg(f9Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.b.c().n().c("Failed to get user properties as. appId", i3.w(str), e);
            return Collections.emptyList();
        }
    }

    /* access modifiers changed from: package-private */
    public final zzas O(zzas zzas, zzp zzp) {
        zzaq zzaq;
        if (!(!"_cmp".equals(zzas.b) || (zzaq = zzas.c) == null || zzaq.l0() == 0)) {
            String k0 = zzas.c.k0("_cis");
            if ("referrer broadcast".equals(k0) || "referrer API".equals(k0)) {
                this.b.c().t().b("Event has been filtered ", zzas.toString());
                return new zzas("_cmpx", zzas.c, zzas.d, zzas.e);
            }
        }
        return zzas;
    }

    /* access modifiers changed from: package-private */
    public final void P(Runnable runnable) {
        if (this.b.e().n()) {
            runnable.run();
        } else {
            this.b.e().q(runnable);
        }
    }

    public final void Q(zzas zzas, String str, String str2) {
        Objects.requireNonNull(zzas, "null reference");
        n.e(str);
        W(str, true);
        P(new v4(this, zzas, str));
    }

    public final List<zzkg> R(zzp zzp, boolean z) {
        V(zzp);
        String str = zzp.b;
        Objects.requireNonNull(str, "null reference");
        try {
            List<f9> list = (List) ((FutureTask) this.b.e().o(new z4(this, str))).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (f9 f9Var : list) {
                if (z || !h9.E(f9Var.c)) {
                    arrayList.add(new zzkg(f9Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.b.c().n().c("Failed to get user properties. appId", i3.w(zzp.b), e);
            return null;
        }
    }

    public final void S(zzaa zzaa) {
        Objects.requireNonNull(zzaa, "null reference");
        Objects.requireNonNull(zzaa.d, "null reference");
        n.e(zzaa.b);
        W(zzaa.b, true);
        P(new m4(this, new zzaa(zzaa)));
    }

    /* access modifiers changed from: package-private */
    public final void T(String str, Bundle bundle) {
        zzaq zzaq;
        i X = this.b.X();
        X.g();
        X.i();
        j4 j4Var = X.a;
        n.e(str);
        n.e("dep");
        TextUtils.isEmpty("");
        if (0 != 0 && 0 > 0) {
            j4Var.c().q().b("Event created with reverse previous/current timestamps. appId", i3.w(str));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaq = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    j4Var.c().n().a("Param name can't be null");
                    it.remove();
                } else {
                    Object r = j4Var.E().r(next, bundle2.get(next));
                    if (r == null) {
                        j4Var.c().q().b("Param value can't be null", j4Var.F().p(next));
                        it.remove();
                    } else {
                        j4Var.E().y(bundle2, next, r);
                    }
                }
            }
            zzaq = new zzaq(bundle2);
        }
        d9 c0 = X.b.c0();
        zzda zzk = zzdb.zzk();
        zzk.zzq(0);
        for (String str2 : zzaq.b.keySet()) {
            zzde zzn = zzdf.zzn();
            zzn.zza(str2);
            Object o = zzaq.o(str2);
            Objects.requireNonNull(o, "null reference");
            c0.u(zzn, o);
            zzk.zzg(zzn);
        }
        byte[] zzbp = ((zzdb) zzk.zzaA()).zzbp();
        X.a.c().v().c("Saving default event parameters, appId, data size", X.a.F().o(str), Integer.valueOf(zzbp.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
        contentValues.put("parameters", zzbp);
        try {
            if (X.M().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                X.a.c().n().b("Failed to insert default event parameters (got -1). appId", i3.w(str));
            }
        } catch (SQLiteException e) {
            X.a.c().n().c("Error storing default event parameters. appId", i3.w(str), e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzaa> a(String str, String str2, zzp zzp) {
        V(zzp);
        String str3 = zzp.b;
        Objects.requireNonNull(str3, "null reference");
        try {
            return (List) ((FutureTask) this.b.e().o(new p4(this, str3, str, str2))).get();
        } catch (InterruptedException | ExecutionException e) {
            this.b.c().n().b("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void b(zzp zzp) {
        zzlc.zzb();
        if (this.b.U().u(null, v2.y0)) {
            n.e(zzp.b);
            Objects.requireNonNull(zzp.w, "null reference");
            t4 t4Var = new t4(this, zzp);
            if (this.b.e().n()) {
                t4Var.run();
            } else {
                this.b.e().s(t4Var);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final String e(zzp zzp) {
        V(zzp);
        return this.b.B(zzp);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void l(zzaa zzaa, zzp zzp) {
        Objects.requireNonNull(zzaa, "null reference");
        Objects.requireNonNull(zzaa.d, "null reference");
        V(zzp);
        zzaa zzaa2 = new zzaa(zzaa);
        zzaa2.b = zzp.b;
        P(new l4(this, zzaa2, zzp));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void m(long j, String str, String str2, String str3) {
        P(new b5(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzkg> o(String str, String str2, boolean z, zzp zzp) {
        V(zzp);
        String str3 = zzp.b;
        Objects.requireNonNull(str3, "null reference");
        try {
            List<f9> list = (List) ((FutureTask) this.b.e().o(new n4(this, str3, str, str2))).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (f9 f9Var : list) {
                if (z || !h9.E(f9Var.c)) {
                    arrayList.add(new zzkg(f9Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.b.c().n().c("Failed to query user properties. appId", i3.w(zzp.b), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzaa> p(String str, String str2, String str3) {
        W(str, true);
        try {
            return (List) ((FutureTask) this.b.e().o(new q4(this, str, str2, str3))).get();
        } catch (InterruptedException | ExecutionException e) {
            this.b.c().n().b("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void s(zzp zzp) {
        n.e(zzp.b);
        W(zzp.b, false);
        P(new r4(this, zzp));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void t(Bundle bundle, zzp zzp) {
        V(zzp);
        String str = zzp.b;
        Objects.requireNonNull(str, "null reference");
        P(new k4(this, str, bundle));
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final byte[] v(zzas zzas, String str) {
        n.e(str);
        Objects.requireNonNull(zzas, "null reference");
        W(str, true);
        this.b.c().u().b("Log and bundle. event", this.b.d0().o(zzas.b));
        long c2 = this.b.a().c() / 1000000;
        try {
            byte[] bArr = (byte[]) ((FutureTask) this.b.e().p(new w4(this, zzas, str))).get();
            if (bArr == null) {
                this.b.c().n().b("Log and bundle returned null. appId", i3.w(str));
                bArr = new byte[0];
            }
            this.b.c().u().d("Log and bundle processed. event, size, time_ms", this.b.d0().o(zzas.b), Integer.valueOf(bArr.length), Long.valueOf((this.b.a().c() / 1000000) - c2));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.b.c().n().d("Failed to log and bundle. appId, event, error", i3.w(str), this.b.d0().o(zzas.b), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void y(zzp zzp) {
        V(zzp);
        P(new s4(this, zzp));
    }
}
