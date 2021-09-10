package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.d;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzda;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzde;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzdi;
import com.google.android.gms.internal.measurement.zzdt;
import com.google.android.gms.internal.measurement.zzdu;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzmg;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;

public final class b9 implements f5 {
    private static volatile b9 A;
    private final c4 a;
    private final n3 b;
    private i c;
    private p3 d;
    private r8 e;
    private t9 f;
    private final d9 g;
    private q6 h;
    private a8 i;
    private final j4 j;
    private boolean k = false;
    private boolean l;
    long m;
    private List<Runnable> n;
    private int o;
    private int p;
    private boolean q;
    private boolean r;
    private boolean s;
    private FileLock t;
    private FileChannel u;
    private List<Long> v;
    private List<Long> w;
    private long x;
    private final Map<String, f> y;
    private final g9 z = new z8(this);

    b9(c9 c9Var, j4 j4Var) {
        j4 g2 = j4.g(c9Var.a, null, null);
        this.j = g2;
        this.x = -1;
        d9 d9Var = new d9(this);
        d9Var.j();
        this.g = d9Var;
        n3 n3Var = new n3(this);
        n3Var.j();
        this.b = n3Var;
        c4 c4Var = new c4(this);
        c4Var.j();
        this.a = c4Var;
        this.y = new HashMap();
        g2.e().q(new t8(this, c9Var));
    }

    public static b9 D(Context context) {
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(context.getApplicationContext(), "null reference");
        if (A == null) {
            synchronized (b9.class) {
                if (A == null) {
                    A = new b9(new c9(context), null);
                }
            }
        }
        return A;
    }

    static /* synthetic */ void E(b9 b9Var, c9 c9Var) {
        b9Var.j.e().g();
        i iVar = new i(b9Var);
        iVar.j();
        b9Var.c = iVar;
        b9Var.j.x().j(b9Var.a);
        a8 a8Var = new a8(b9Var);
        a8Var.j();
        b9Var.i = a8Var;
        t9 t9Var = new t9(b9Var);
        t9Var.j();
        b9Var.f = t9Var;
        q6 q6Var = new q6(b9Var);
        q6Var.j();
        b9Var.h = q6Var;
        r8 r8Var = new r8(b9Var);
        r8Var.j();
        b9Var.e = r8Var;
        b9Var.d = new p3(b9Var);
        if (b9Var.o != b9Var.p) {
            b9Var.j.c().n().c("Not all upload components initialized", Integer.valueOf(b9Var.o), Integer.valueOf(b9Var.p));
        }
        b9Var.k = true;
    }

    static final void G(zzda zzda, int i2, String str) {
        List<zzdf> zza = zzda.zza();
        for (int i3 = 0; i3 < zza.size(); i3++) {
            if ("_err".equals(zza.get(i3).zzb())) {
                return;
            }
        }
        zzde zzn = zzdf.zzn();
        zzn.zza("_err");
        zzn.zzd(Long.valueOf((long) i2).longValue());
        zzde zzn2 = zzdf.zzn();
        zzn2.zza("_ev");
        zzn2.zzb(str);
        zzda.zzf((zzdf) zzn.zzaA());
        zzda.zzf((zzdf) zzn2.zzaA());
    }

    static final void H(zzda zzda, String str) {
        List<zzdf> zza = zzda.zza();
        for (int i2 = 0; i2 < zza.size(); i2++) {
            if (str.equals(zza.get(i2).zzb())) {
                zzda.zzj(i2);
                return;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:399:0x0cc4, code lost:
        if (r10 > (com.google.android.gms.measurement.internal.e.h() + r8)) goto L_0x0cc6;
     */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x03c6  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x048e  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x04e4  */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x0621  */
    /* JADX WARNING: Removed duplicated region for block: B:193:0x063b  */
    /* JADX WARNING: Removed duplicated region for block: B:289:0x0952  */
    /* JADX WARNING: Removed duplicated region for block: B:300:0x099a  */
    /* JADX WARNING: Removed duplicated region for block: B:301:0x09bf  */
    /* JADX WARNING: Removed duplicated region for block: B:398:0x0cb4 A[Catch:{ all -> 0x0b53, all -> 0x0e46 }] */
    /* JADX WARNING: Removed duplicated region for block: B:406:0x0d3a  */
    /* JADX WARNING: Removed duplicated region for block: B:410:0x0d56 A[Catch:{ SQLiteException -> 0x0d6e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean I(java.lang.String r47, long r48) {
        /*
        // Method dump skipped, instructions count: 3684
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.I(java.lang.String, long):boolean");
    }

    private final void J(zzdi zzdi, long j2, boolean z2) {
        f9 f9Var;
        String str = true != z2 ? "_lte" : "_se";
        f9 R = X().R(zzdi.zzG(), str);
        if (R == null || R.e == null) {
            f9Var = new f9(zzdi.zzG(), "auto", str, this.j.a().a(), Long.valueOf(j2));
        } else {
            f9Var = new f9(zzdi.zzG(), "auto", str, this.j.a().a(), Long.valueOf(((Long) R.e).longValue() + j2));
        }
        zzdt zzj = zzdu.zzj();
        zzj.zzb(str);
        zzj.zza(this.j.a().a());
        zzj.zze(((Long) f9Var.e).longValue());
        zzdu zzdu = (zzdu) zzj.zzaA();
        int I = d9.I(zzdi, str);
        if (I >= 0) {
            zzdi.zzm(I, zzdu);
        } else {
            zzdi.zzn(zzdu);
        }
        if (j2 > 0) {
            X().Q(f9Var);
            this.j.c().v().c("Updated engagement user property. scope, value", true != z2 ? "lifetime" : "session-scoped", f9Var.e);
        }
    }

    private final boolean K(zzda zzda, zzda zzda2) {
        String str;
        n.a("_e".equals(zzda.zzk()));
        c0();
        zzdf M = d9.M((zzdb) zzda.zzaA(), "_sc");
        String str2 = null;
        if (M == null) {
            str = null;
        } else {
            str = M.zzd();
        }
        c0();
        zzdf M2 = d9.M((zzdb) zzda2.zzaA(), "_pc");
        if (M2 != null) {
            str2 = M2.zzd();
        }
        if (str2 == null || !str2.equals(str)) {
            return false;
        }
        L(zzda, zzda2);
        return true;
    }

    private final void L(zzda zzda, zzda zzda2) {
        n.a("_e".equals(zzda.zzk()));
        c0();
        zzdf M = d9.M((zzdb) zzda.zzaA(), "_et");
        if (M.zze() && M.zzf() > 0) {
            long zzf = M.zzf();
            c0();
            zzdf M2 = d9.M((zzdb) zzda2.zzaA(), "_et");
            if (M2 != null && M2.zzf() > 0) {
                zzf += M2.zzf();
            }
            c0();
            d9.K(zzda2, "_et", Long.valueOf(zzf));
            c0();
            d9.K(zzda, "_fr", 1L);
        }
    }

    private final boolean M() {
        this.j.e().g();
        f0();
        return X().p() || !TextUtils.isEmpty(X().d0());
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x01ab  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x01c9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void N() {
        /*
        // Method dump skipped, instructions count: 668
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.N():void");
    }

    private final void O() {
        this.j.e().g();
        if (this.q || this.r || this.s) {
            this.j.c().v().d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.q), Boolean.valueOf(this.r), Boolean.valueOf(this.s));
            return;
        }
        this.j.c().v().a("Stopping uploading service(s)");
        List<Runnable> list = this.n;
        if (list != null) {
            for (Runnable runnable : list) {
                runnable.run();
            }
            this.n.clear();
        }
    }

    private final Boolean P(y4 y4Var) {
        try {
            if (y4Var.g0() != -2147483648L) {
                if (y4Var.g0() == ((long) yv.a(this.j.b()).e(y4Var.N(), 0).versionCode)) {
                    return Boolean.TRUE;
                }
            } else {
                String str = yv.a(this.j.b()).e(y4Var.N(), 0).versionName;
                if (y4Var.e0() != null && y4Var.e0().equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final zzp Q(String str) {
        y4 Z = X().Z(str);
        if (Z == null || TextUtils.isEmpty(Z.e0())) {
            this.j.c().u().b("No app data available; dropping", str);
            return null;
        }
        Boolean P = P(Z);
        if (P == null || P.booleanValue()) {
            String Q = Z.Q();
            String e0 = Z.e0();
            long g0 = Z.g0();
            String i0 = Z.i0();
            long k0 = Z.k0();
            long b2 = Z.b();
            boolean f2 = Z.f();
            String Y = Z.Y();
            long E = Z.E();
            boolean G = Z.G();
            String S = Z.S();
            Boolean I = Z.I();
            long d2 = Z.d();
            List<String> K = Z.K();
            zzmg.zzb();
            String U = this.j.x().u(str, v2.i0) ? Z.U() : null;
            zzlc.zzb();
            return new zzp(str, Q, e0, g0, i0, k0, b2, (String) null, f2, false, Y, E, 0L, 0, G, false, S, I, d2, K, U, this.j.x().u(null, v2.y0) ? j0(str).d() : "");
        }
        this.j.c().n().b("App version does not match; dropping. appId", i3.w(str));
        return null;
    }

    private final boolean R(zzp zzp) {
        zzmg.zzb();
        return this.j.x().u(zzp.b, v2.i0) ? !TextUtils.isEmpty(zzp.c) || !TextUtils.isEmpty(zzp.v) || !TextUtils.isEmpty(zzp.r) : !TextUtils.isEmpty(zzp.c) || !TextUtils.isEmpty(zzp.r);
    }

    private static final void S(s8 s8Var) {
        if (s8Var == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!s8Var.h()) {
            String valueOf = String.valueOf(s8Var.getClass());
            throw new IllegalStateException(ic.l(new StringBuilder(valueOf.length() + 27), "Component not initialized: ", valueOf));
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x03c2, code lost:
        if (r6 == false) goto L_0x03cb;
     */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x0290  */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x02a2  */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x0321  */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x0345  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x0353  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0399  */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x03a7  */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x03ad  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.measurement.internal.y4 A(com.google.android.gms.measurement.internal.zzp r14) {
        /*
        // Method dump skipped, instructions count: 972
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.A(com.google.android.gms.measurement.internal.zzp):com.google.android.gms.measurement.internal.y4");
    }

    /* access modifiers changed from: package-private */
    public final String B(zzp zzp) {
        try {
            return (String) ((FutureTask) this.j.e().o(new w8(this, zzp))).get(30000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            this.j.c().n().c("Failed to get app instance id. appId", i3.w(zzp.b), e2);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void C() {
        N();
    }

    /* access modifiers changed from: protected */
    public final void T() {
        this.j.e().g();
        X().f0();
        if (this.j.y().e.a() == 0) {
            this.j.y().e.b(this.j.a().a());
        }
        N();
    }

    public final e U() {
        return this.j.x();
    }

    public final c4 V() {
        S(this.a);
        return this.a;
    }

    public final n3 W() {
        S(this.b);
        return this.b;
    }

    public final i X() {
        S(this.c);
        return this.c;
    }

    public final p3 Y() {
        p3 p3Var = this.d;
        if (p3Var != null) {
            return p3Var;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final r8 Z() {
        S(this.e);
        return this.e;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final d a() {
        return this.j.a();
    }

    public final t9 a0() {
        S(this.f);
        return this.f;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final Context b() {
        return this.j.b();
    }

    public final q6 b0() {
        S(this.h);
        return this.h;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final i3 c() {
        return this.j.c();
    }

    public final d9 c0() {
        S(this.g);
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public final void d(zzas zzas, zzp zzp) {
        j3 a2 = j3.a(zzas);
        this.j.E().u(a2.d, X().t(zzp.b));
        this.j.E().t(a2, this.j.x().l(zzp.b));
        zzas b2 = a2.b();
        if (this.j.x().u(null, v2.d0) && "_cmp".equals(b2.b) && "referrer API v2".equals(b2.c.k0("_cis"))) {
            String k0 = b2.c.k0("gclid");
            if (!TextUtils.isEmpty(k0)) {
                q(new zzkg("_lgclid", b2.e, k0, "auto"), zzp);
            }
        }
        f(b2, zzp);
    }

    public final d3 d0() {
        return this.j.F();
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final g4 e() {
        return this.j.e();
    }

    public final h9 e0() {
        return this.j.E();
    }

    /* access modifiers changed from: package-private */
    public final void f(zzas zzas, zzp zzp) {
        List<zzaa> list;
        List<zzaa> list2;
        List<zzaa> list3;
        zzas zzas2 = zzas;
        Objects.requireNonNull(zzp, "null reference");
        n.e(zzp.b);
        this.j.e().g();
        f0();
        String str = zzp.b;
        long j2 = zzas2.e;
        c0();
        if (d9.L(zzas, zzp)) {
            if (!zzp.i) {
                A(zzp);
                return;
            }
            List<String> list4 = zzp.u;
            if (list4 != null) {
                if (list4.contains(zzas2.b)) {
                    Bundle m0 = zzas2.c.m0();
                    m0.putLong("ga_safelisted", 1);
                    zzas2 = new zzas(zzas2.b, new zzaq(m0), zzas2.d, zzas2.e);
                } else {
                    this.j.c().u().d("Dropping non-safelisted event. appId, event name, origin", str, zzas2.b, zzas2.d);
                    return;
                }
            }
            X().J();
            try {
                i X = X();
                n.e(str);
                X.g();
                X.i();
                if (j2 < 0) {
                    X.a.c().q().c("Invalid time querying timed out conditional properties", i3.w(str), Long.valueOf(j2));
                    list = Collections.emptyList();
                } else {
                    list = X.Y("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j2)});
                }
                for (zzaa zzaa : list) {
                    if (zzaa != null) {
                        this.j.c().v().d("User property timed out", zzaa.b, this.j.F().q(zzaa.d.c), zzaa.d.o());
                        zzas zzas3 = zzaa.h;
                        if (zzas3 != null) {
                            g(new zzas(zzas3, j2), zzp);
                        }
                        X().W(str, zzaa.d.c);
                    }
                }
                i X2 = X();
                n.e(str);
                X2.g();
                X2.i();
                if (j2 < 0) {
                    X2.a.c().q().c("Invalid time querying expired conditional properties", i3.w(str), Long.valueOf(j2));
                    list2 = Collections.emptyList();
                } else {
                    list2 = X2.Y("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j2)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzaa zzaa2 : list2) {
                    if (zzaa2 != null) {
                        this.j.c().v().d("User property expired", zzaa2.b, this.j.F().q(zzaa2.d.c), zzaa2.d.o());
                        X().P(str, zzaa2.d.c);
                        zzas zzas4 = zzaa2.l;
                        if (zzas4 != null) {
                            arrayList.add(zzas4);
                        }
                        X().W(str, zzaa2.d.c);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    g(new zzas((zzas) it.next(), j2), zzp);
                }
                i X3 = X();
                String str2 = zzas2.b;
                n.e(str);
                n.e(str2);
                X3.g();
                X3.i();
                if (j2 < 0) {
                    X3.a.c().q().d("Invalid time querying triggered conditional properties", i3.w(str), X3.a.F().o(str2), Long.valueOf(j2));
                    list3 = Collections.emptyList();
                } else {
                    list3 = X3.Y("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j2)});
                }
                ArrayList arrayList2 = new ArrayList(list3.size());
                for (zzaa zzaa3 : list3) {
                    if (zzaa3 != null) {
                        zzkg zzkg = zzaa3.d;
                        f9 f9Var = new f9(zzaa3.b, zzaa3.c, zzkg.c, j2, zzkg.o());
                        if (X().Q(f9Var)) {
                            this.j.c().v().d("User property triggered", zzaa3.b, this.j.F().q(f9Var.c), f9Var.e);
                        } else {
                            this.j.c().n().d("Too many active user properties, ignoring", i3.w(zzaa3.b), this.j.F().q(f9Var.c), f9Var.e);
                        }
                        zzas zzas5 = zzaa3.j;
                        if (zzas5 != null) {
                            arrayList2.add(zzas5);
                        }
                        zzaa3.d = new zzkg(f9Var);
                        zzaa3.f = true;
                        X().U(zzaa3);
                    }
                }
                g(zzas2, zzp);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    g(new zzas((zzas) it2.next(), j2), zzp);
                }
                X().K();
            } finally {
                X().L();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void f0() {
        if (!this.k) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:213:0x07dc, code lost:
        if (r8.size() == 0) goto L_0x07de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:282:0x0a73, code lost:
        r2 = 1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x03cd  */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x03fa  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0318  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0368  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x036b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void g(com.google.android.gms.measurement.internal.zzas r34, com.google.android.gms.measurement.internal.zzp r35) {
        /*
        // Method dump skipped, instructions count: 2938
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.g(com.google.android.gms.measurement.internal.zzas, com.google.android.gms.measurement.internal.zzp):void");
    }

    /* access modifiers changed from: package-private */
    public final void g0(zzp zzp) {
        this.j.e().g();
        f0();
        n.e(zzp.b);
        A(zzp);
    }

    /* access modifiers changed from: package-private */
    public final String h(f fVar) {
        zzlc.zzb();
        if (!this.j.x().u(null, v2.y0) || fVar.h()) {
            return i();
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void h0(zzp zzp) {
        zzlc.zzb();
        if (this.j.x().u(null, v2.y0)) {
            this.j.e().g();
            f0();
            n.e(zzp.b);
            f c2 = f.c(zzp.w);
            f j0 = j0(zzp.b);
            this.j.c().v().c("Setting consent, package, consent", zzp.b, c2);
            i0(zzp.b, c2);
            if (c2.i(j0)) {
                p(zzp);
            }
        }
    }

    /* access modifiers changed from: package-private */
    @Deprecated
    public final String i() {
        byte[] bArr = new byte[16];
        this.j.E().d0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* access modifiers changed from: package-private */
    public final void i0(String str, f fVar) {
        zzlc.zzb();
        e x2 = this.j.x();
        u2<Boolean> u2Var = v2.y0;
        if (x2.u(null, u2Var)) {
            this.j.e().g();
            f0();
            this.y.put(str, fVar);
            i X = X();
            zzlc.zzb();
            if (X.a.x().u(null, u2Var)) {
                Objects.requireNonNull(str, "null reference");
                X.g();
                X.i();
                ContentValues contentValues = new ContentValues();
                contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
                contentValues.put("consent_state", fVar.d());
                try {
                    if (X.M().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                        X.a.c().n().b("Failed to insert/update consent setting (got -1). appId", i3.w(str));
                    }
                } catch (SQLiteException e2) {
                    X.a.c().n().c("Error storing consent setting. appId, error", i3.w(str), e2);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:214:0x056b, code lost:
        if (r4 != null) goto L_0x056d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x013a, code lost:
        if (r11 != null) goto L_0x013c;
     */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x02ac  */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x02b5  */
    /* JADX WARNING: Removed duplicated region for block: B:165:0x03a3  */
    /* JADX WARNING: Removed duplicated region for block: B:180:0x0440  */
    /* JADX WARNING: Removed duplicated region for block: B:181:0x044f  */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x047d A[Catch:{ MalformedURLException -> 0x04f0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x048d A[Catch:{ MalformedURLException -> 0x04f0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x04a3 A[Catch:{ MalformedURLException -> 0x04f0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:197:0x0509  */
    /* JADX WARNING: Removed duplicated region for block: B:227:0x058e  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0146  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void j() {
        /*
        // Method dump skipped, instructions count: 1436
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.j():void");
    }

    /* access modifiers changed from: package-private */
    public final f j0(String str) {
        String str2;
        f fVar = f.c;
        zzlc.zzb();
        Cursor cursor = null;
        if (this.j.x().u(null, v2.y0)) {
            this.j.e().g();
            f0();
            fVar = this.y.get(str);
            if (fVar == null) {
                i X = X();
                Objects.requireNonNull(str, "null reference");
                X.g();
                X.i();
                try {
                    Cursor rawQuery = X.M().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                    if (rawQuery.moveToFirst()) {
                        str2 = rawQuery.getString(0);
                        rawQuery.close();
                    } else {
                        rawQuery.close();
                        str2 = "G1";
                    }
                    f c2 = f.c(str2);
                    i0(str, c2);
                    return c2;
                } catch (SQLiteException e2) {
                    X.a.c().n().c("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e2);
                    throw e2;
                } catch (Throwable th) {
                    if (0 != 0) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        }
        return fVar;
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    public final void k(int i2, Throwable th, byte[] bArr, String str) {
        this.j.e().g();
        f0();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.r = false;
                O();
                throw th2;
            }
        }
        List<Long> list = this.v;
        this.v = null;
        if (i2 != 200) {
            if (i2 == 204) {
                i2 = HttpStatus.SC_NO_CONTENT;
            }
            this.j.c().v().c("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
            this.j.y().f.b(this.j.a().a());
            if (i2 == 503 || i2 == 429) {
                this.j.y().g.b(this.j.a().a());
            }
            X().g0(list);
            N();
            this.r = false;
            O();
        }
        if (th == null) {
            try {
                this.j.y().e.b(this.j.a().a());
                this.j.y().f.b(0);
                N();
                this.j.c().v().c("Successful upload. Got network response. code, size", Integer.valueOf(i2), Integer.valueOf(bArr.length));
                X().J();
                try {
                    for (Long l2 : list) {
                        try {
                            i X = X();
                            long longValue = l2.longValue();
                            X.g();
                            X.i();
                            try {
                                if (X.M().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                    throw new SQLiteException("Deleted fewer rows from queue than expected");
                                }
                            } catch (SQLiteException e2) {
                                X.a.c().n().b("Failed to delete a bundle in a queue table", e2);
                                throw e2;
                            }
                        } catch (SQLiteException e3) {
                            List<Long> list2 = this.w;
                            if (list2 == null || !list2.contains(l2)) {
                                throw e3;
                            }
                        }
                    }
                    X().K();
                    X().L();
                    this.w = null;
                    if (!W().l() || !M()) {
                        this.x = -1;
                        N();
                    } else {
                        j();
                    }
                    this.m = 0;
                } catch (Throwable th3) {
                    X().L();
                    throw th3;
                }
            } catch (SQLiteException e4) {
                this.j.c().n().b("Database error while trying to delete uploaded bundles", e4);
                this.m = this.j.a().b();
                this.j.c().v().b("Disable upload, time", Long.valueOf(this.m));
            }
            this.r = false;
            O();
        }
        this.j.c().v().c("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
        this.j.y().f.b(this.j.a().a());
        this.j.y().g.b(this.j.a().a());
        X().g0(list);
        N();
        this.r = false;
        O();
    }

    /* access modifiers changed from: package-private */
    public final long k0() {
        long a2 = this.j.a().a();
        v3 y2 = this.j.y();
        y2.k();
        y2.g();
        long a3 = y2.i.a();
        if (a3 == 0) {
            a3 = ((long) y2.a.E().d0().nextInt(86400000)) + 1;
            y2.i.b(a3);
        }
        return ((((a2 + a3) / 1000) / 60) / 60) / 24;
    }

    /* access modifiers changed from: package-private */
    public final void l(y4 y4Var) {
        String str;
        this.j.e().g();
        zzmg.zzb();
        e x2 = this.j.x();
        String N = y4Var.N();
        u2<Boolean> u2Var = v2.i0;
        if (x2.u(N, u2Var)) {
            if (TextUtils.isEmpty(y4Var.Q()) && TextUtils.isEmpty(y4Var.U()) && TextUtils.isEmpty(y4Var.S())) {
                m(y4Var.N(), HttpStatus.SC_NO_CONTENT, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(y4Var.Q()) && TextUtils.isEmpty(y4Var.S())) {
            m(y4Var.N(), HttpStatus.SC_NO_CONTENT, null, null, null);
            return;
        }
        e x3 = this.j.x();
        Uri.Builder builder = new Uri.Builder();
        String Q = y4Var.Q();
        if (TextUtils.isEmpty(Q)) {
            zzmg.zzb();
            if (x3.a.x().u(y4Var.N(), u2Var)) {
                Q = y4Var.U();
                if (TextUtils.isEmpty(Q)) {
                    Q = y4Var.S();
                }
            } else {
                Q = y4Var.S();
            }
        }
        x xVar = null;
        Uri.Builder encodedAuthority = builder.scheme(v2.e.b(null)).encodedAuthority(v2.f.b(null));
        String valueOf = String.valueOf(Q);
        if (valueOf.length() != 0) {
            str = "config/app/".concat(valueOf);
        } else {
            str = new String("config/app/");
        }
        Uri.Builder appendQueryParameter = encodedAuthority.path(str).appendQueryParameter("app_instance_id", y4Var.O()).appendQueryParameter("platform", "android");
        x3.n();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(39000L));
        String uri = builder.build().toString();
        try {
            URL url = new URL(uri);
            this.j.c().v().b("Fetching remote configuration", y4Var.N());
            zzcp l2 = V().l(y4Var.N());
            String m2 = V().m(y4Var.N());
            if (l2 != null && !TextUtils.isEmpty(m2)) {
                xVar = new x();
                xVar.put(HttpHeaders.IF_MODIFIED_SINCE, m2);
            }
            this.q = true;
            n3 W = W();
            String N2 = y4Var.N();
            v8 v8Var = new v8(this);
            W.g();
            W.i();
            W.a.e().t(new m3(W, N2, url, null, xVar, v8Var));
        } catch (MalformedURLException unused) {
            this.j.c().n().c("Failed to parse config URL. Not fetching. appId", i3.w(y4Var.N()), uri);
        }
    }

    /* access modifiers changed from: package-private */
    public final void l0(zzas zzas, String str) {
        y4 Z = X().Z(str);
        if (Z == null || TextUtils.isEmpty(Z.e0())) {
            this.j.c().u().b("No app data available; dropping event", str);
            return;
        }
        Boolean P = P(Z);
        if (P == null) {
            if (!"_ui".equals(zzas.b)) {
                this.j.c().q().b("Could not find package. appId", i3.w(str));
            }
        } else if (!P.booleanValue()) {
            this.j.c().n().b("App version does not match; dropping event. appId", i3.w(str));
            return;
        }
        String Q = Z.Q();
        String e0 = Z.e0();
        long g0 = Z.g0();
        String i0 = Z.i0();
        long k0 = Z.k0();
        long b2 = Z.b();
        boolean f2 = Z.f();
        String Y = Z.Y();
        long E = Z.E();
        boolean G = Z.G();
        String S = Z.S();
        Boolean I = Z.I();
        long d2 = Z.d();
        List<String> K = Z.K();
        zzmg.zzb();
        String U = this.j.x().u(Z.N(), v2.i0) ? Z.U() : null;
        zzlc.zzb();
        d(zzas, new zzp(str, Q, e0, g0, i0, k0, b2, (String) null, f2, false, Y, E, 0L, 0, G, false, S, I, d2, K, U, this.j.x().u(null, v2.y0) ? j0(str).d() : ""));
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004c A[Catch:{ all -> 0x017b }] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061 A[Catch:{ all -> 0x017b }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0135  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0145  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void m(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
        // Method dump skipped, instructions count: 397
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.m(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* access modifiers changed from: package-private */
    public final void n(Runnable runnable) {
        this.j.e().g();
        if (this.n == null) {
            this.n = new ArrayList();
        }
        this.n.add(runnable);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00c9  */
    /* JADX WARNING: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void o() {
        /*
        // Method dump skipped, instructions count: 520
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.o():void");
    }

    /* access modifiers changed from: package-private */
    public final void p(zzp zzp) {
        if (this.v != null) {
            ArrayList arrayList = new ArrayList();
            this.w = arrayList;
            arrayList.addAll(this.v);
        }
        i X = X();
        String str = zzp.b;
        n.e(str);
        X.g();
        X.i();
        try {
            SQLiteDatabase M = X.M();
            String[] strArr = {str};
            int delete = M.delete("apps", "app_id=?", strArr) + M.delete("events", "app_id=?", strArr) + M.delete("user_attributes", "app_id=?", strArr) + M.delete("conditional_properties", "app_id=?", strArr) + M.delete("raw_events", "app_id=?", strArr) + M.delete("raw_events_metadata", "app_id=?", strArr) + M.delete("queue", "app_id=?", strArr) + M.delete("audience_filter_values", "app_id=?", strArr) + M.delete("main_event_params", "app_id=?", strArr) + M.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                X.a.c().v().c("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            X.a.c().n().c("Error resetting analytics data. appId, error", i3.w(str), e2);
        }
        if (zzp.i) {
            v(zzp);
        }
    }

    /* access modifiers changed from: package-private */
    public final void q(zzkg zzkg, zzp zzp) {
        long j2;
        this.j.e().g();
        f0();
        if (R(zzp)) {
            if (zzp.i) {
                int l0 = this.j.E().l0(zzkg.c);
                if (l0 != 0) {
                    h9 E = this.j.E();
                    String str = zzkg.c;
                    this.j.x();
                    String p2 = E.p(str, 24, true);
                    String str2 = zzkg.c;
                    this.j.E().z(this.z, zzp.b, l0, "_ev", p2, str2 != null ? str2.length() : 0);
                    return;
                }
                int w2 = this.j.E().w(zzkg.c, zzkg.o());
                if (w2 != 0) {
                    h9 E2 = this.j.E();
                    String str3 = zzkg.c;
                    this.j.x();
                    String p3 = E2.p(str3, 24, true);
                    Object o2 = zzkg.o();
                    this.j.E().z(this.z, zzp.b, w2, "_ev", p3, (o2 == null || (!(o2 instanceof String) && !(o2 instanceof CharSequence))) ? 0 : String.valueOf(o2).length());
                    return;
                }
                Object x2 = this.j.E().x(zzkg.c, zzkg.o());
                if (x2 != null) {
                    if ("_sid".equals(zzkg.c)) {
                        long j3 = zzkg.d;
                        String str4 = zzkg.g;
                        f9 R = X().R(zzp.b, "_sno");
                        if (R != null) {
                            Object obj = R.e;
                            if (obj instanceof Long) {
                                j2 = ((Long) obj).longValue();
                                q(new zzkg("_sno", j3, Long.valueOf(j2 + 1), str4), zzp);
                            }
                        }
                        if (R != null) {
                            this.j.c().q().b("Retrieved last session number from database does not contain a valid (long) value", R.e);
                        }
                        o N = X().N(zzp.b, "_s");
                        if (N != null) {
                            j2 = N.c;
                            this.j.c().v().b("Backfill the session number. Last used session number", Long.valueOf(j2));
                        } else {
                            j2 = 0;
                        }
                        q(new zzkg("_sno", j3, Long.valueOf(j2 + 1), str4), zzp);
                    }
                    f9 f9Var = new f9(zzp.b, zzkg.g, zzkg.c, zzkg.d, x2);
                    this.j.c().v().c("Setting user property", this.j.F().q(f9Var.c), x2);
                    X().J();
                    try {
                        A(zzp);
                        boolean Q = X().Q(f9Var);
                        X().K();
                        if (!Q) {
                            this.j.c().n().c("Too many unique user properties are set. Ignoring user property", this.j.F().q(f9Var.c), f9Var.e);
                            this.j.E().z(this.z, zzp.b, 9, null, null, 0);
                        }
                    } finally {
                        X().L();
                    }
                }
            } else {
                A(zzp);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void r(zzkg zzkg, zzp zzp) {
        this.j.e().g();
        f0();
        if (R(zzp)) {
            if (!zzp.i) {
                A(zzp);
            } else if (!"_npa".equals(zzkg.c) || zzp.s == null) {
                this.j.c().u().b("Removing user property", this.j.F().q(zzkg.c));
                X().J();
                try {
                    A(zzp);
                    X().P(zzp.b, zzkg.c);
                    X().K();
                    this.j.c().u().b("User property removed", this.j.F().q(zzkg.c));
                } finally {
                    X().L();
                }
            } else {
                this.j.c().u().a("Falling back to manifest metadata value for ad personalization");
                q(new zzkg("_npa", this.j.a().a(), Long.valueOf(true != zzp.s.booleanValue() ? 0 : 1), "auto"), zzp);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void s() {
        this.o++;
    }

    /* access modifiers changed from: package-private */
    public final void t() {
        this.p++;
    }

    /* access modifiers changed from: package-private */
    public final j4 u() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x03bc  */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x0470  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x01b3 A[Catch:{ SQLiteException -> 0x01c7 }] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x01de  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0218  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x023b  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0241  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x024f  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x025e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void v(com.google.android.gms.measurement.internal.zzp r22) {
        /*
        // Method dump skipped, instructions count: 1191
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b9.v(com.google.android.gms.measurement.internal.zzp):void");
    }

    /* access modifiers changed from: package-private */
    public final void w(zzaa zzaa) {
        zzp Q = Q(zzaa.b);
        if (Q != null) {
            x(zzaa, Q);
        }
    }

    /* access modifiers changed from: package-private */
    public final void x(zzaa zzaa, zzp zzp) {
        zzas zzas;
        Objects.requireNonNull(zzaa, "null reference");
        n.e(zzaa.b);
        Objects.requireNonNull(zzaa.c, "null reference");
        Objects.requireNonNull(zzaa.d, "null reference");
        n.e(zzaa.d.c);
        this.j.e().g();
        f0();
        if (R(zzp)) {
            if (!zzp.i) {
                A(zzp);
                return;
            }
            zzaa zzaa2 = new zzaa(zzaa);
            boolean z2 = false;
            zzaa2.f = false;
            X().J();
            try {
                zzaa V = X().V(zzaa2.b, zzaa2.d.c);
                if (V != null && !V.c.equals(zzaa2.c)) {
                    this.j.c().q().d("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.j.F().q(zzaa2.d.c), zzaa2.c, V.c);
                }
                if (V != null && V.f) {
                    zzaa2.c = V.c;
                    zzaa2.e = V.e;
                    zzaa2.i = V.i;
                    zzaa2.g = V.g;
                    zzaa2.j = V.j;
                    zzaa2.f = true;
                    zzkg zzkg = zzaa2.d;
                    zzaa2.d = new zzkg(zzkg.c, V.d.d, zzkg.o(), V.d.g);
                } else if (TextUtils.isEmpty(zzaa2.g)) {
                    zzkg zzkg2 = zzaa2.d;
                    zzaa2.d = new zzkg(zzkg2.c, zzaa2.e, zzkg2.o(), zzaa2.d.g);
                    zzaa2.f = true;
                    z2 = true;
                }
                if (zzaa2.f) {
                    zzkg zzkg3 = zzaa2.d;
                    f9 f9Var = new f9(zzaa2.b, zzaa2.c, zzkg3.c, zzkg3.d, zzkg3.o());
                    if (X().Q(f9Var)) {
                        this.j.c().u().d("User property updated immediately", zzaa2.b, this.j.F().q(f9Var.c), f9Var.e);
                    } else {
                        this.j.c().n().d("(2)Too many active user properties, ignoring", i3.w(zzaa2.b), this.j.F().q(f9Var.c), f9Var.e);
                    }
                    if (z2 && (zzas = zzaa2.j) != null) {
                        g(new zzas(zzas, zzaa2.e), zzp);
                    }
                }
                if (X().U(zzaa2)) {
                    this.j.c().u().d("Conditional property added", zzaa2.b, this.j.F().q(zzaa2.d.c), zzaa2.d.o());
                } else {
                    this.j.c().n().d("Too many conditional properties, ignoring", i3.w(zzaa2.b), this.j.F().q(zzaa2.d.c), zzaa2.d.o());
                }
                X().K();
            } finally {
                X().L();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void y(zzaa zzaa) {
        zzp Q = Q(zzaa.b);
        if (Q != null) {
            z(zzaa, Q);
        }
    }

    /* access modifiers changed from: package-private */
    public final void z(zzaa zzaa, zzp zzp) {
        Objects.requireNonNull(zzaa, "null reference");
        n.e(zzaa.b);
        Objects.requireNonNull(zzaa.d, "null reference");
        n.e(zzaa.d.c);
        this.j.e().g();
        f0();
        if (R(zzp)) {
            if (!zzp.i) {
                A(zzp);
                return;
            }
            X().J();
            try {
                A(zzp);
                zzaa V = X().V(zzaa.b, zzaa.d.c);
                if (V != null) {
                    this.j.c().u().c("Removing conditional user property", zzaa.b, this.j.F().q(zzaa.d.c));
                    X().W(zzaa.b, zzaa.d.c);
                    if (V.f) {
                        X().P(zzaa.b, zzaa.d.c);
                    }
                    zzas zzas = zzaa.l;
                    if (zzas != null) {
                        zzaq zzaq = zzas.c;
                        Bundle m0 = zzaq != null ? zzaq.m0() : null;
                        h9 E = this.j.E();
                        String str = zzaa.b;
                        zzas zzas2 = zzaa.l;
                        g(E.I(str, zzas2.b, m0, V.c, zzas2.e, true, false), zzp);
                    }
                } else {
                    this.j.c().q().c("Conditional user property doesn't exist", i3.w(zzaa.b), this.j.F().q(zzaa.d.c));
                }
                X().K();
            } finally {
                X().L();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final u9 zzas() {
        throw null;
    }
}
