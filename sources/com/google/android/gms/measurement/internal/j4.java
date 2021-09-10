package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import com.google.android.gms.internal.measurement.zzfg;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzll;
import com.google.android.gms.internal.measurement.zzy;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.HttpStatus;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;

public final class j4 implements f5 {
    private static volatile j4 I;
    private long A;
    private volatile Boolean B;
    protected Boolean C;
    protected Boolean D;
    private volatile boolean E;
    private int F;
    private final AtomicInteger G = new AtomicInteger(0);
    final long H;
    private final Context a;
    private final String b;
    private final String c;
    private final String d;
    private final boolean e;
    private final u9 f;
    private final e g;
    private final v3 h;
    private final i3 i;
    private final g4 j;
    private final o8 k;
    private final h9 l;
    private final d3 m;
    private final d n;
    private final z6 o;
    private final l6 p;
    private final a2 q;
    private final p6 r;
    private final String s;
    private c3 t;
    private z7 u;
    private m v;
    private a3 w;
    private z3 x;
    private boolean y = false;
    private Boolean z;

    j4(l5 l5Var) {
        long j2;
        Bundle bundle;
        boolean z2 = false;
        Context context = l5Var.a;
        u9 u9Var = new u9();
        this.f = u9Var;
        j.a = u9Var;
        this.a = context;
        this.b = l5Var.b;
        this.c = l5Var.c;
        this.d = l5Var.d;
        this.e = l5Var.h;
        this.B = l5Var.e;
        this.s = l5Var.j;
        this.E = true;
        zzy zzy = l5Var.g;
        if (!(zzy == null || (bundle = zzy.zzg) == null)) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.C = (Boolean) obj;
            }
            Object obj2 = zzy.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.D = (Boolean) obj2;
            }
        }
        zzfg.zzb(context);
        this.n = f.d();
        Long l2 = l5Var.i;
        if (l2 != null) {
            j2 = l2.longValue();
        } else {
            j2 = System.currentTimeMillis();
        }
        this.H = j2;
        this.g = new e(this);
        v3 v3Var = new v3(this);
        v3Var.l();
        this.h = v3Var;
        i3 i3Var = new i3(this);
        i3Var.l();
        this.i = i3Var;
        h9 h9Var = new h9(this);
        h9Var.l();
        this.l = h9Var;
        d3 d3Var = new d3(this);
        d3Var.l();
        this.m = d3Var;
        this.q = new a2(this);
        z6 z6Var = new z6(this);
        z6Var.j();
        this.o = z6Var;
        l6 l6Var = new l6(this);
        l6Var.j();
        this.p = l6Var;
        o8 o8Var = new o8(this);
        o8Var.j();
        this.k = o8Var;
        p6 p6Var = new p6(this);
        p6Var.l();
        this.r = p6Var;
        g4 g4Var = new g4(this);
        g4Var.l();
        this.j = g4Var;
        zzy zzy2 = l5Var.g;
        z2 = (zzy2 == null || zzy2.zzb == 0) ? true : z2;
        if (context.getApplicationContext() instanceof Application) {
            l6 D2 = D();
            if (D2.a.a.getApplicationContext() instanceof Application) {
                Application application = (Application) D2.a.a.getApplicationContext();
                if (D2.c == null) {
                    D2.c = new k6(D2);
                }
                if (z2) {
                    application.unregisterActivityLifecycleCallbacks(D2.c);
                    application.registerActivityLifecycleCallbacks(D2.c);
                    D2.a.c().v().a("Registered activity lifecycle callback");
                }
            }
        } else {
            c().q().a("Application context is not an Application");
        }
        g4Var.q(new i4(this, l5Var));
    }

    public static j4 g(Context context, zzy zzy, Long l2) {
        Bundle bundle;
        if (zzy != null && (zzy.zze == null || zzy.zzf == null)) {
            zzy = new zzy(zzy.zza, zzy.zzb, zzy.zzc, zzy.zzd, null, null, zzy.zzg, null);
        }
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(context.getApplicationContext(), "null reference");
        if (I == null) {
            synchronized (j4.class) {
                if (I == null) {
                    I = new j4(new l5(context, zzy, l2));
                }
            }
        } else if (!(zzy == null || (bundle = zzy.zzg) == null || !bundle.containsKey("dataCollectionDefaultEnabled"))) {
            Objects.requireNonNull(I, "null reference");
            I.B = Boolean.valueOf(zzy.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Objects.requireNonNull(I, "null reference");
        return I;
    }

    static void s(j4 j4Var, l5 l5Var) {
        j4Var.e().g();
        u9 u9Var = j4Var.g.a.f;
        m mVar = new m(j4Var);
        mVar.l();
        j4Var.v = mVar;
        a3 a3Var = new a3(j4Var, l5Var.f);
        a3Var.j();
        j4Var.w = a3Var;
        c3 c3Var = new c3(j4Var);
        c3Var.j();
        j4Var.t = c3Var;
        z7 z7Var = new z7(j4Var);
        z7Var.j();
        j4Var.u = z7Var;
        j4Var.l.m();
        j4Var.h.m();
        j4Var.x = new z3(j4Var);
        j4Var.w.k();
        g3 t2 = j4Var.c().t();
        j4Var.g.n();
        t2.b("App measurement initialized, version", 39000L);
        j4Var.c().t().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String o2 = a3Var.o();
        if (TextUtils.isEmpty(j4Var.b)) {
            if (j4Var.E().G(o2)) {
                j4Var.c().t().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                g3 t3 = j4Var.c().t();
                String valueOf = String.valueOf(o2);
                t3.a(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
            }
        }
        j4Var.c().u().a("Debug-level message logging enabled");
        if (j4Var.F != j4Var.G.get()) {
            j4Var.c().n().c("Not all components initialized", Integer.valueOf(j4Var.F), Integer.valueOf(j4Var.G.get()));
        }
        j4Var.y = true;
    }

    private static final void t(d5 d5Var) {
        if (d5Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void u(y3 y3Var) {
        if (y3Var == null) {
            throw new IllegalStateException("Component not created");
        } else if (!y3Var.h()) {
            String valueOf = String.valueOf(y3Var.getClass());
            throw new IllegalStateException(ic.l(new StringBuilder(valueOf.length() + 27), "Component not initialized: ", valueOf));
        }
    }

    private static final void v(e5 e5Var) {
        if (e5Var == null) {
            throw new IllegalStateException("Component not created");
        } else if (!e5Var.j()) {
            String valueOf = String.valueOf(e5Var.getClass());
            throw new IllegalStateException(ic.l(new StringBuilder(valueOf.length() + 27), "Component not initialized: ", valueOf));
        }
    }

    @Pure
    public final o8 A() {
        u(this.k);
        return this.k;
    }

    @SideEffectFree
    public final z3 B() {
        return this.x;
    }

    /* access modifiers changed from: package-private */
    @SideEffectFree
    public final g4 C() {
        return this.j;
    }

    @Pure
    public final l6 D() {
        u(this.p);
        return this.p;
    }

    @Pure
    public final h9 E() {
        t(this.l);
        return this.l;
    }

    @Pure
    public final d3 F() {
        t(this.m);
        return this.m;
    }

    @Pure
    public final c3 G() {
        u(this.t);
        return this.t;
    }

    @Pure
    public final p6 H() {
        v(this.r);
        return this.r;
    }

    @Pure
    public final boolean I() {
        return TextUtils.isEmpty(this.b);
    }

    @Pure
    public final String J() {
        return this.b;
    }

    @Pure
    public final String K() {
        return this.c;
    }

    @Pure
    public final String L() {
        return this.d;
    }

    @Pure
    public final boolean M() {
        return this.e;
    }

    @Pure
    public final String N() {
        return this.s;
    }

    @Pure
    public final z6 O() {
        u(this.o);
        return this.o;
    }

    @Pure
    public final z7 P() {
        u(this.u);
        return this.u;
    }

    @Pure
    public final m Q() {
        v(this.v);
        return this.v;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    @Pure
    public final d a() {
        return this.n;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    @Pure
    public final Context b() {
        return this.a;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    @Pure
    public final i3 c() {
        v(this.i);
        return this.i;
    }

    @Pure
    public final a3 d() {
        u(this.w);
        return this.w;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    @Pure
    public final g4 e() {
        v(this.j);
        return this.j;
    }

    @Pure
    public final a2 f() {
        a2 a2Var = this.q;
        if (a2Var != null) {
            return a2Var;
        }
        throw new IllegalStateException("Component not created");
    }

    /* access modifiers changed from: package-private */
    public final void h(boolean z2) {
        this.B = Boolean.valueOf(z2);
    }

    public final boolean i() {
        return this.B != null && this.B.booleanValue();
    }

    public final boolean j() {
        return k() == 0;
    }

    public final int k() {
        e().g();
        if (this.g.x()) {
            return 1;
        }
        Boolean bool = this.D;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        zzlc.zzb();
        if (this.g.u(null, v2.w0)) {
            e().g();
            if (!this.E) {
                return 8;
            }
        }
        Boolean q2 = y().q();
        if (q2 == null) {
            e eVar = this.g;
            u9 u9Var = eVar.a.f;
            Boolean w2 = eVar.w("firebase_analytics_collection_enabled");
            if (w2 == null) {
                Boolean bool2 = this.C;
                if (bool2 != null) {
                    if (bool2.booleanValue()) {
                        return 0;
                    }
                    return 5;
                } else if (!this.g.u(null, v2.T) || this.B == null || this.B.booleanValue()) {
                    return 0;
                } else {
                    return 7;
                }
            } else if (w2.booleanValue()) {
                return 0;
            } else {
                return 4;
            }
        } else if (q2.booleanValue()) {
            return 0;
        } else {
            return 3;
        }
    }

    public final void l(boolean z2) {
        e().g();
        this.E = z2;
    }

    public final boolean m() {
        e().g();
        return this.E;
    }

    /* access modifiers changed from: package-private */
    public final void n() {
        this.F++;
    }

    /* access modifiers changed from: package-private */
    public final void o() {
        this.G.incrementAndGet();
    }

    /* access modifiers changed from: protected */
    public final boolean p() {
        if (this.y) {
            e().g();
            Boolean bool = this.z;
            if (bool == null || this.A == 0 || (!bool.booleanValue() && Math.abs(this.n.b() - this.A) > 1000)) {
                this.A = this.n.b();
                boolean z2 = true;
                Boolean valueOf = Boolean.valueOf(E().D("android.permission.INTERNET") && E().D("android.permission.ACCESS_NETWORK_STATE") && (yv.a(this.a).f() || this.g.E() || (b4.a(this.a) && h9.C(this.a))));
                this.z = valueOf;
                if (valueOf.booleanValue()) {
                    if (!E().n(d().p(), d().q(), d().r()) && TextUtils.isEmpty(d().q())) {
                        z2 = false;
                    }
                    this.z = Boolean.valueOf(z2);
                }
            }
            return this.z.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    public final void q() {
        NetworkInfo networkInfo;
        e().g();
        v(H());
        String o2 = d().o();
        Pair<String, Boolean> n2 = y().n(o2);
        if (!this.g.y() || ((Boolean) n2.second).booleanValue() || TextUtils.isEmpty((CharSequence) n2.first)) {
            c().u().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        p6 H2 = H();
        H2.k();
        ConnectivityManager connectivityManager = (ConnectivityManager) H2.a.a.getSystemService("connectivity");
        URL url = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
            if (networkInfo != null || !networkInfo.isConnected()) {
                c().q().a("Network is not available for Deferred Deep Link request. Skipping");
            }
            h9 E2 = E();
            d().a.g.n();
            String str = (String) n2.first;
            long a2 = y().x.a() - 1;
            Objects.requireNonNull(E2);
            try {
                n.e(str);
                n.e(o2);
                String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 39000L, Integer.valueOf(E2.M())), str, o2, Long.valueOf(a2));
                if (o2.equals(E2.a.x().B())) {
                    format = format.concat("&ddl_test=1");
                }
                url = new URL(format);
            } catch (IllegalArgumentException | MalformedURLException e2) {
                E2.a.c().n().b("Failed to create BOW URL for Deferred Deep Link. exception", e2.getMessage());
            }
            if (url != null) {
                p6 H3 = H();
                h4 h4Var = new h4(this);
                H3.g();
                H3.k();
                H3.a.e().t(new o6(H3, o2, url, h4Var));
                return;
            }
            return;
        }
        networkInfo = null;
        if (networkInfo != null) {
        }
        c().q().a("Network is not available for Deferred Deep Link request. Skipping");
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void r(String str, int i2, Throwable th, byte[] bArr) {
        if (!(i2 == 200 || i2 == 204)) {
            if (i2 == 304) {
                i2 = HttpStatus.SC_NOT_MODIFIED;
            }
            c().q().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
        }
        if (th == null) {
            y().w.b(true);
            if (bArr == null || bArr.length == 0) {
                c().u().a("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                String optString2 = jSONObject.optString("gclid", "");
                double optDouble = jSONObject.optDouble(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, 0.0d);
                if (TextUtils.isEmpty(optString)) {
                    c().u().a("Deferred Deep Link is empty.");
                    return;
                }
                h9 E2 = E();
                j4 j4Var = E2.a;
                if (!TextUtils.isEmpty(optString)) {
                    List<ResolveInfo> queryIntentActivities = E2.a.a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0);
                    if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                        Bundle bundle = new Bundle();
                        bundle.putString("gclid", optString2);
                        bundle.putString("_cis", "ddp");
                        this.p.Q("auto", "_cmp", bundle);
                        h9 E3 = E();
                        if (!TextUtils.isEmpty(optString)) {
                            try {
                                SharedPreferences.Editor edit = E3.a.a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                edit.putString("deeplink", optString);
                                edit.putLong(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Double.doubleToRawLongBits(optDouble));
                                if (edit.commit()) {
                                    E3.a.a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                    return;
                                }
                                return;
                            } catch (Exception e2) {
                                E3.a.c().n().b("Failed to persist Deferred Deep Link. exception", e2);
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                c().q().c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            } catch (JSONException e3) {
                c().n().b("Failed to parse the Deferred Deep Link response. exception", e3);
                return;
            }
        }
        c().q().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    /* access modifiers changed from: protected */
    public final void w(zzy zzy) {
        f fVar;
        e().g();
        zzlc.zzb();
        e eVar = this.g;
        u2<Boolean> u2Var = v2.w0;
        if (eVar.u(null, u2Var)) {
            f s2 = y().s();
            v3 y2 = y();
            j4 j4Var = y2.a;
            y2.g();
            int i2 = 100;
            int i3 = y2.o().getInt("consent_source", 100);
            e eVar2 = this.g;
            u2<Boolean> u2Var2 = v2.x0;
            if (eVar2.u(null, u2Var2)) {
                e eVar3 = this.g;
                j4 j4Var2 = eVar3.a;
                zzlc.zzb();
                Boolean w2 = !eVar3.u(null, u2Var2) ? null : eVar3.w("google_analytics_default_allow_ad_storage");
                e eVar4 = this.g;
                j4 j4Var3 = eVar4.a;
                zzlc.zzb();
                Boolean w3 = !eVar4.u(null, u2Var2) ? null : eVar4.w("google_analytics_default_allow_analytics_storage");
                if (!(w2 == null && w3 == null) && y().r(20)) {
                    fVar = new f(w2, w3);
                    i2 = 20;
                } else {
                    if (!TextUtils.isEmpty(d().p()) && (i3 == 30 || i3 == 40)) {
                        D().O(f.c, 20, this.H);
                    } else if (!(zzy == null || zzy.zzg == null || !y().r(40))) {
                        fVar = f.b(zzy.zzg);
                        if (!fVar.equals(f.c)) {
                            i2 = 40;
                        }
                    }
                    fVar = null;
                }
                if (fVar != null) {
                    D().O(fVar, i2, this.H);
                }
                D().P(s2);
            } else {
                if (!(zzy == null || zzy.zzg == null || !y().r(40))) {
                    fVar = f.b(zzy.zzg);
                    if (!fVar.equals(f.c)) {
                        D().O(fVar, 40, this.H);
                    }
                }
                D().P(s2);
            }
            s2 = fVar;
            D().P(s2);
        }
        if (y().e.a() == 0) {
            y().e.b(this.n.a());
        }
        if (Long.valueOf(y().j.a()).longValue() == 0) {
            c().v().b("Persisting first open", Long.valueOf(this.H));
            y().j.b(this.H);
        }
        D().n.c();
        if (p()) {
            if (!TextUtils.isEmpty(d().p()) || !TextUtils.isEmpty(d().q())) {
                h9 E2 = E();
                String p2 = d().p();
                v3 y3 = y();
                y3.g();
                String string = y3.o().getString("gmp_app_id", null);
                String q2 = d().q();
                v3 y4 = y();
                y4.g();
                if (E2.o(p2, string, q2, y4.o().getString("admob_app_id", null))) {
                    c().t().a("Rechecking which service to use due to a GMP App Id change");
                    v3 y5 = y();
                    y5.g();
                    Boolean q3 = y5.q();
                    SharedPreferences.Editor edit = y5.o().edit();
                    edit.clear();
                    edit.apply();
                    if (q3 != null) {
                        y5.p(q3);
                    }
                    G().n();
                    this.u.s();
                    this.u.o();
                    y().j.b(this.H);
                    y().l.b(null);
                }
                v3 y6 = y();
                String p3 = d().p();
                y6.g();
                SharedPreferences.Editor edit2 = y6.o().edit();
                edit2.putString("gmp_app_id", p3);
                edit2.apply();
                v3 y7 = y();
                String q4 = d().q();
                y7.g();
                SharedPreferences.Editor edit3 = y7.o().edit();
                edit3.putString("admob_app_id", q4);
                edit3.apply();
            }
            zzlc.zzb();
            if (this.g.u(null, u2Var) && !y().s().h()) {
                y().l.b(null);
            }
            D().q(y().l.a());
            zzll.zzb();
            if (this.g.u(null, v2.o0)) {
                try {
                    E().a.a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(y().y.a())) {
                        c().q().a("Remote config removed with active feature rollouts");
                        y().y.b(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(d().p()) || !TextUtils.isEmpty(d().q())) {
                boolean j2 = j();
                if (!y().u() && !this.g.x()) {
                    y().t(!j2);
                }
                if (j2) {
                    D().t();
                }
                A().d.a();
                P().S(new AtomicReference<>());
                P().n(y().B.a());
            }
        } else if (j()) {
            if (!E().D("android.permission.INTERNET")) {
                c().n().a("App is missing INTERNET permission");
            }
            if (!E().D("android.permission.ACCESS_NETWORK_STATE")) {
                c().n().a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!yv.a(this.a).f() && !this.g.E()) {
                if (!b4.a(this.a)) {
                    c().n().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!h9.C(this.a)) {
                    c().n().a("AppMeasurementService not registered/enabled");
                }
            }
            c().n().a("Uploading is not possible. App measurement disabled");
        }
        y().s.b(this.g.u(null, v2.X));
    }

    @Pure
    public final e x() {
        return this.g;
    }

    @Pure
    public final v3 y() {
        t(this.h);
        return this.h;
    }

    public final i3 z() {
        i3 i3Var = this.i;
        if (i3Var == null || !i3Var.j()) {
            return null;
        }
        return this.i;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    @Pure
    public final u9 zzas() {
        return this.f;
    }
}
