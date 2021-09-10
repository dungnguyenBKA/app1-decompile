package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.util.m;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzll;
import com.google.android.gms.internal.measurement.zzlr;
import com.google.android.gms.internal.measurement.zzlx;
import com.google.android.gms.internal.measurement.zznb;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class l6 extends y3 {
    protected k6 c;
    private j5 d;
    private final Set<k5> e = new CopyOnWriteArraySet();
    private boolean f;
    private final AtomicReference<String> g = new AtomicReference<>();
    private final Object h = new Object();
    private f i = new f(null, null);
    private int j = 100;
    private final AtomicLong k = new AtomicLong(0);
    private long l = -1;
    private int m = 100;
    final n9 n;
    protected boolean o = true;
    private final g9 p = new a6(this);

    protected l6(j4 j4Var) {
        super(j4Var);
        this.n = new n9(j4Var);
    }

    static /* synthetic */ void I(l6 l6Var, f fVar, int i2, long j2, boolean z, boolean z2) {
        l6Var.g();
        l6Var.i();
        if (j2 > l6Var.l || !f.m(l6Var.m, i2)) {
            v3 y = l6Var.a.y();
            zzlc.zzb();
            if (y.a.x().u(null, v2.w0)) {
                y.g();
                if (y.r(i2)) {
                    SharedPreferences.Editor edit = y.o().edit();
                    edit.putString("consent_settings", fVar.d());
                    edit.putInt("consent_source", i2);
                    edit.apply();
                    l6Var.l = j2;
                    l6Var.m = i2;
                    l6Var.a.P().I(z);
                    if (z2) {
                        l6Var.a.P().S(new AtomicReference<>());
                        return;
                    }
                    return;
                }
            }
            l6Var.a.c().t().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i2));
            return;
        }
        l6Var.a.c().t().b("Dropped out-of-date consent setting, proposed settings", fVar);
    }

    /* access modifiers changed from: public */
    private final void K(Boolean bool, boolean z) {
        g();
        i();
        this.a.c().u().b("Setting app measurement enabled (FE)", bool);
        this.a.y().p(bool);
        zzlc.zzb();
        e x = this.a.x();
        u2<Boolean> u2Var = v2.w0;
        if (x.u(null, u2Var) && z) {
            v3 y = this.a.y();
            zzlc.zzb();
            if (y.a.x().u(null, u2Var)) {
                y.g();
                SharedPreferences.Editor edit = y.o().edit();
                if (bool != null) {
                    edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
                } else {
                    edit.remove("measurement_enabled_from_api");
                }
                edit.apply();
            }
        }
        zzlc.zzb();
        if (!this.a.x().u(null, u2Var) || this.a.m() || (bool != null && !bool.booleanValue())) {
            L();
        }
    }

    /* access modifiers changed from: public */
    private final void L() {
        g();
        String a = this.a.y().r.a();
        if (a != null) {
            if ("unset".equals(a)) {
                o("app", "_npa", null, this.a.a().a());
            } else {
                o("app", "_npa", Long.valueOf(true != "true".equals(a) ? 0 : 1), this.a.a().a());
            }
        }
        if (!this.a.j() || !this.o) {
            this.a.c().u().a("Updating Scion state (FE)");
            this.a.P().H();
            return;
        }
        this.a.c().u().a("Recording app launch after enabling measurement for the first time (FE)");
        t();
        zzlx.zzb();
        if (this.a.x().u(null, v2.p0)) {
            this.a.A().d.a();
        }
        zzlr.zzb();
        if (this.a.x().u(null, v2.s0)) {
            z3 B = this.a.B();
            Objects.requireNonNull(B, "null reference");
            if (B.a.y().k.a() <= 0) {
                B.a(B.a.b().getPackageName());
            }
        }
        this.a.e().q(new p5(this));
    }

    public final void A(String str, String str2, Bundle bundle) {
        long a = this.a.a().a();
        n.e(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", a);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.a.e().q(new v5(this, bundle2));
    }

    public final ArrayList<Bundle> B(String str, String str2) {
        if (this.a.e().n()) {
            this.a.c().n().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        this.a.zzas();
        if (u9.a()) {
            this.a.c().n().a("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.a.e().r(atomicReference, 5000, "get conditional user properties", new y5(this, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return h9.W(list);
        }
        this.a.c().n().b("Timed out waiting for get conditional user properties", null);
        return new ArrayList<>();
    }

    public final Map<String, Object> C(String str, String str2, boolean z) {
        if (this.a.e().n()) {
            this.a.c().n().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        this.a.zzas();
        if (u9.a()) {
            this.a.c().n().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.a.e().r(atomicReference, 5000, "get user properties", new z5(this, atomicReference, str, str2, z));
        List<zzkg> list = (List) atomicReference.get();
        if (list == null) {
            this.a.c().n().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        x xVar = new x(list.size());
        for (zzkg zzkg : list) {
            Object o2 = zzkg.o();
            if (o2 != null) {
                xVar.put(zzkg.c, o2);
            }
        }
        return xVar;
    }

    public final String D() {
        r6 v = this.a.O().v();
        if (v != null) {
            return v.a;
        }
        return null;
    }

    public final String E() {
        r6 v = this.a.O().v();
        if (v != null) {
            return v.b;
        }
        return null;
    }

    public final String F() {
        if (this.a.J() != null) {
            return this.a.J();
        }
        try {
            zznb.zzb();
            if (this.a.x().u(null, v2.B0)) {
                return j.b(this.a.b(), "google_app_id", this.a.N());
            }
            try {
                return new p(this.a.b()).a("google_app_id");
            } catch (Resources.NotFoundException unused) {
                return null;
            }
        } catch (IllegalStateException e2) {
            this.a.c().n().b("getGoogleAppId failed with exception", e2);
            return null;
        }
    }

    public final /* synthetic */ void G(Bundle bundle) {
        if (bundle == null) {
            this.a.y().B.b(new Bundle());
            return;
        }
        Bundle a = this.a.y().B.a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.a.E().o0(obj)) {
                    this.a.E().z(this.p, null, 27, null, null, 0);
                }
                this.a.c().s().c("Invalid default event parameter type. Name, value", str, obj);
            } else if (h9.E(str)) {
                this.a.c().s().b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                a.remove(str);
            } else {
                h9 E = this.a.E();
                this.a.x();
                if (E.p0("param", str, 100, obj)) {
                    this.a.E().y(a, str, obj);
                }
            }
        }
        this.a.E();
        int k2 = this.a.x().k();
        if (a.size() > k2) {
            Iterator it = new TreeSet(a.keySet()).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                i2++;
                if (i2 > k2) {
                    a.remove(str2);
                }
            }
            this.a.E().z(this.p, null, 26, null, null, 0);
            this.a.c().s().a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.a.y().B.b(a);
        this.a.P().n(a);
    }

    public final void M() {
        if ((this.a.b().getApplicationContext() instanceof Application) && this.c != null) {
            ((Application) this.a.b().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.c);
        }
    }

    public final void N(Bundle bundle, int i2, long j2) {
        zzlc.zzb();
        if (this.a.x().u(null, v2.w0)) {
            i();
            String a = f.a(bundle);
            if (a != null) {
                this.a.c().s().b("Ignoring invalid consent setting", a);
                this.a.c().s().a("Valid consent values are 'granted', 'denied'");
            }
            O(f.b(bundle), i2, j2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00ac, code lost:
        if (r6 == 20) goto L_0x00b0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0053 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void O(com.google.android.gms.measurement.internal.f r16, int r17, long r18) {
        /*
        // Method dump skipped, instructions count: 247
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.l6.O(com.google.android.gms.measurement.internal.f, int, long):void");
    }

    public final void P(f fVar) {
        g();
        boolean z = (fVar.h() && fVar.f()) || this.a.P().u();
        if (z != this.a.m()) {
            this.a.l(z);
            v3 y = this.a.y();
            zzlc.zzb();
            Boolean bool = null;
            if (y.a.x().u(null, v2.w0)) {
                y.g();
                if (y.o().contains("measurement_enabled_from_api")) {
                    bool = Boolean.valueOf(y.o().getBoolean("measurement_enabled_from_api", true));
                }
            }
            if (!z || bool == null || bool.booleanValue()) {
                K(Boolean.valueOf(z), false);
            }
        }
    }

    public final void Q(String str, String str2, Bundle bundle) {
        T(str, str2, bundle, true, true, this.a.a().a());
    }

    public final void R(String str, String str2, long j2, Bundle bundle) {
        g();
        S(str, str2, j2, bundle, true, this.d == null || h9.E(str2), false, null);
    }

    public final void S(String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        boolean z5;
        Bundle bundle2;
        ArrayList arrayList;
        Bundle[] bundleArr;
        Class<?> cls;
        String str4 = str;
        n.e(str);
        Objects.requireNonNull(bundle, "null reference");
        g();
        i();
        if (this.a.j()) {
            List<String> u = this.a.d().u();
            if (u == null || u.contains(str2)) {
                int i2 = 0;
                if (!this.f) {
                    this.f = true;
                    try {
                        if (!this.a.M()) {
                            cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.a.b().getClassLoader());
                        } else {
                            cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                        }
                        try {
                            cls.getDeclaredMethod("initialize", Context.class).invoke(null, this.a.b());
                        } catch (Exception e2) {
                            this.a.c().q().b("Failed to invoke Tag Manager's initialize() method", e2);
                        }
                    } catch (ClassNotFoundException unused) {
                        this.a.c().t().a("Tag Manager is not found and thus will not be used");
                    }
                }
                if (!this.a.x().u(null, v2.d0) || !"_cmp".equals(str2) || !bundle.containsKey("gclid")) {
                    z4 = true;
                } else {
                    this.a.zzas();
                    z4 = true;
                    o("auto", "_lgclid", bundle.getString("gclid"), this.a.a().a());
                }
                this.a.zzas();
                if (z && h9.L(str2)) {
                    this.a.E().u(bundle, this.a.y().B.a());
                }
                if (z3) {
                    this.a.zzas();
                    if (!"_iap".equals(str2)) {
                        h9 E = this.a.E();
                        int i3 = 2;
                        if (E.g0("event", str2)) {
                            if (!E.i0("event", g5.a, g5.b, str2)) {
                                i3 = 13;
                            } else {
                                E.a.x();
                                if (E.j0("event", 40, str2)) {
                                    i3 = 0;
                                }
                            }
                        }
                        if (i3 != 0) {
                            this.a.c().p().b("Invalid public event name. Event will not be logged (FE)", this.a.F().o(str2));
                            h9 E2 = this.a.E();
                            this.a.x();
                            String p2 = E2.p(str2, 40, z4);
                            if (str2 != null) {
                                i2 = str2.length();
                            }
                            this.a.E().z(this.p, null, i3, "_ev", p2, i2);
                            return;
                        }
                    }
                }
                this.a.zzas();
                r6 r = this.a.O().r(false);
                if (r != null && !bundle.containsKey("_sc")) {
                    r.d = z4;
                }
                z6.w(r, bundle, z && z3);
                boolean equals = "am".equals(str4);
                boolean E3 = h9.E(str2);
                if (!z || this.d == null || E3) {
                    z5 = equals;
                } else if (equals) {
                    z5 = true;
                } else {
                    this.a.c().u().c("Passing event to registered event handler (FE)", this.a.F().o(str2), this.a.F().r(bundle));
                    Objects.requireNonNull(this.d, "null reference");
                    ((k9) this.d).a(str, str2, bundle, j2);
                    return;
                }
                if (this.a.p()) {
                    int k0 = this.a.E().k0(str2);
                    if (k0 != 0) {
                        this.a.c().p().b("Invalid event name. Event will not be logged (FE)", this.a.F().o(str2));
                        h9 E4 = this.a.E();
                        this.a.x();
                        String p3 = E4.p(str2, 40, z4);
                        if (str2 != null) {
                            i2 = str2.length();
                        }
                        this.a.E().z(this.p, str3, k0, "_ev", p3, i2);
                        return;
                    }
                    String str5 = "_o";
                    Bundle s = this.a.E().s(str3, str2, bundle, Collections.unmodifiableList(Arrays.asList(str5, "_sn", "_sc", "_si")), z3);
                    if (s.containsKey("_sc") && s.containsKey("_si")) {
                        s.getString("_sn");
                        s.getString("_sc");
                        Long.valueOf(s.getLong("_si")).longValue();
                    }
                    this.a.zzas();
                    if (this.a.O().r(false) != null && "_ae".equals(str2)) {
                        m8 m8Var = this.a.A().e;
                        long b = m8Var.d.a.a().b();
                        long j3 = b - m8Var.b;
                        m8Var.b = b;
                        if (j3 > 0) {
                            this.a.E().O(s, j3);
                        }
                    }
                    zzll.zzb();
                    if (this.a.x().u(null, v2.o0)) {
                        if (!"auto".equals(str4) && "_ssr".equals(str2)) {
                            h9 E5 = this.a.E();
                            String string = s.getString("_ffr");
                            if (m.a(string)) {
                                string = null;
                            } else if (string != null) {
                                string = string.trim();
                            }
                            if (!h9.F(string, E5.a.y().y.a())) {
                                E5.a.y().y.b(string);
                            } else {
                                E5.a.c().u().a("Not logging duplicate session_start_with_rollout event");
                                return;
                            }
                        } else if ("_ae".equals(str2)) {
                            String a = this.a.E().a.y().y.a();
                            if (!TextUtils.isEmpty(a)) {
                                s.putString("_ffr", a);
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(s);
                    this.a.E().d0().nextLong();
                    if (this.a.y().t.a() <= 0 || !this.a.y().v(j2) || !this.a.y().v.a()) {
                        bundle2 = s;
                    } else {
                        this.a.c().v().a("Current session is expired, remove the session number, ID, and engagement time");
                        bundle2 = s;
                        o("auto", "_sid", null, this.a.a().a());
                        o("auto", "_sno", null, this.a.a().a());
                        o("auto", "_se", null, this.a.a().a());
                    }
                    if (bundle2.getLong("extend_session", 0) == 1) {
                        this.a.c().v().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                        this.a.A().d.b(j2, true);
                    }
                    ArrayList arrayList3 = new ArrayList(bundle2.keySet());
                    Collections.sort(arrayList3);
                    int size = arrayList3.size();
                    int i4 = 0;
                    while (i4 < size) {
                        String str6 = (String) arrayList3.get(i4);
                        if (str6 != null) {
                            this.a.E();
                            Object obj = bundle2.get(str6);
                            if (obj instanceof Bundle) {
                                arrayList = arrayList3;
                                bundleArr = new Bundle[]{(Bundle) obj};
                            } else {
                                arrayList = arrayList3;
                                if (obj instanceof Parcelable[]) {
                                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                                    bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                                } else if (obj instanceof ArrayList) {
                                    ArrayList arrayList4 = (ArrayList) obj;
                                    bundleArr = (Bundle[]) arrayList4.toArray(new Bundle[arrayList4.size()]);
                                } else {
                                    bundleArr = null;
                                }
                            }
                            if (bundleArr != null) {
                                bundle2.putParcelableArray(str6, bundleArr);
                            }
                        } else {
                            arrayList = arrayList3;
                        }
                        i4++;
                        arrayList3 = arrayList;
                    }
                    int i5 = 0;
                    while (i5 < arrayList2.size()) {
                        Bundle bundle3 = (Bundle) arrayList2.get(i5);
                        String str7 = i5 != 0 ? "_ep" : str2;
                        bundle3.putString(str5, str4);
                        if (z2) {
                            bundle3 = this.a.E().H(bundle3);
                        }
                        this.a.P().K(new zzas(str7, new zzaq(bundle3), str, j2), str3);
                        if (!z5) {
                            for (k5 k5Var : this.e) {
                                k5Var.a(str, str2, new Bundle(bundle3), j2);
                            }
                        }
                        i5++;
                        str4 = str;
                        str5 = str5;
                    }
                    this.a.zzas();
                    if (this.a.O().r(false) != null && "_ae".equals(str2)) {
                        this.a.A().e.d(true, true, this.a.a().b());
                        return;
                    }
                    return;
                }
                return;
            }
            this.a.c().u().c("Dropping non-safelisted event. event name, origin", str2, str4);
            return;
        }
        this.a.c().u().a("Event not sent since app measurement is disabled");
    }

    public final void T(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (this.a.x().u(null, v2.u0)) {
            if (h9.F(str2, "screen_view")) {
                this.a.O().t(bundle2, j2);
                return;
            }
        }
        U(str3, str2, j2, bundle2, z2, !z2 || this.d == null || h9.E(str2), !z, null);
    }

    public final void U(String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i2 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i2 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i2];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i2] = new Bundle((Bundle) parcelable);
                        }
                        i2++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i2 < list.size()) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                        i2++;
                    }
                }
            }
        }
        this.a.e().q(new r5(this, str, str2, j2, bundle2, z, z2, z3, null));
    }

    public final void V(String str, Object obj) {
        W("auto", str, obj, true, this.a.a().a());
    }

    public final void W(String str, String str2, Object obj, boolean z, long j2) {
        int i2;
        int i3;
        String str3 = str == null ? "app" : str;
        if (z) {
            i2 = this.a.E().l0(str2);
        } else {
            h9 E = this.a.E();
            if (E.g0("user property", str2)) {
                if (!E.i0("user property", i5.a, null, str2)) {
                    i2 = 15;
                } else {
                    E.a.x();
                    if (E.j0("user property", 24, str2)) {
                        i2 = 0;
                    }
                }
            }
            i2 = 6;
        }
        if (i2 != 0) {
            h9 E2 = this.a.E();
            this.a.x();
            this.a.E().z(this.p, null, i2, "_ev", E2.p(str2, 24, true), str2 != null ? str2.length() : 0);
        } else if (obj != null) {
            int w = this.a.E().w(str2, obj);
            if (w != 0) {
                h9 E3 = this.a.E();
                this.a.x();
                String p2 = E3.p(str2, 24, true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i3 = String.valueOf(obj).length();
                } else {
                    i3 = 0;
                }
                this.a.E().z(this.p, null, w, "_ev", p2, i3);
                return;
            }
            Object x = this.a.E().x(str2, obj);
            if (x != null) {
                n(str3, str2, j2, x);
            }
        } else {
            n(str3, str2, j2, null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.y3
    public final boolean l() {
        return false;
    }

    public final void n(String str, String str2, long j2, Object obj) {
        this.a.e().q(new s5(this, str, str2, obj, j2));
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x007e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void o(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
        // Method dump skipped, instructions count: 153
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.l6.o(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final String p() {
        return this.g.get();
    }

    public final void q(String str) {
        this.g.set(str);
    }

    public final void r(long j2) {
        this.g.set(null);
        this.a.e().q(new t5(this, j2));
    }

    public final void s(long j2, boolean z) {
        g();
        i();
        this.a.c().u().a("Resetting analytics data (FE)");
        o8 A = this.a.A();
        A.g();
        A.e.c();
        boolean j3 = this.a.j();
        v3 y = this.a.y();
        y.j.b(j2);
        if (!TextUtils.isEmpty(y.a.y().y.a())) {
            y.y.b(null);
        }
        zzlx.zzb();
        e x = y.a.x();
        u2<Boolean> u2Var = v2.p0;
        if (x.u(null, u2Var)) {
            y.t.b(0);
        }
        if (!y.a.x().x()) {
            y.t(!j3);
        }
        y.z.b(null);
        y.A.b(0);
        y.B.b(null);
        if (z) {
            this.a.P().R();
        }
        zzlx.zzb();
        if (this.a.x().u(null, u2Var)) {
            this.a.A().d.a();
        }
        this.o = !j3;
    }

    public final void t() {
        g();
        i();
        if (this.a.p()) {
            if (this.a.x().u(null, v2.c0)) {
                e x = this.a.x();
                x.a.zzas();
                Boolean w = x.w("google_analytics_deferred_deep_link_enabled");
                if (w != null && w.booleanValue()) {
                    this.a.c().u().a("Deferred Deep Link feature enabled.");
                    this.a.e().q(new n5(this));
                }
            }
            this.a.P().U();
            this.o = false;
            v3 y = this.a.y();
            y.g();
            String string = y.o().getString("previous_os_version", null);
            y.a.Q().k();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = y.o().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (!TextUtils.isEmpty(string)) {
                this.a.Q().k();
                if (!string.equals(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", string);
                    Q("auto", "_ou", bundle);
                }
            }
        }
    }

    public final void u(j5 j5Var) {
        j5 j5Var2;
        g();
        i();
        if (!(j5Var == null || j5Var == (j5Var2 = this.d))) {
            n.k(j5Var2 == null, "EventInterceptor already set.");
        }
        this.d = j5Var;
    }

    public final void v(k5 k5Var) {
        i();
        if (!this.e.add(k5Var)) {
            this.a.c().q().a("OnEventListener already registered");
        }
    }

    public final void w(k5 k5Var) {
        i();
        if (!this.e.remove(k5Var)) {
            this.a.c().q().a("OnEventListener had not been registered");
        }
    }

    public final int x(String str) {
        n.e(str);
        this.a.x();
        return 25;
    }

    public final void y(Bundle bundle) {
        z(bundle, this.a.a().a());
    }

    public final void z(Bundle bundle, long j2) {
        Objects.requireNonNull(bundle, "null reference");
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID))) {
            this.a.c().q().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID);
        b.U0(bundle2, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, String.class, null);
        b.U0(bundle2, "origin", String.class, null);
        b.U0(bundle2, "name", String.class, null);
        b.U0(bundle2, "value", Object.class, null);
        b.U0(bundle2, "trigger_event_name", String.class, null);
        b.U0(bundle2, "trigger_timeout", Long.class, 0L);
        b.U0(bundle2, "timed_out_event_name", String.class, null);
        b.U0(bundle2, "timed_out_event_params", Bundle.class, null);
        b.U0(bundle2, "triggered_event_name", String.class, null);
        b.U0(bundle2, "triggered_event_params", Bundle.class, null);
        b.U0(bundle2, "time_to_live", Long.class, 0L);
        b.U0(bundle2, "expired_event_name", String.class, null);
        b.U0(bundle2, "expired_event_params", Bundle.class, null);
        n.e(bundle2.getString("name"));
        n.e(bundle2.getString("origin"));
        Objects.requireNonNull(bundle2.get("value"), "null reference");
        bundle2.putLong("creation_timestamp", j2);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.a.E().l0(string) != 0) {
            this.a.c().n().b("Invalid conditional user property name", this.a.F().q(string));
        } else if (this.a.E().w(string, obj) == 0) {
            Object x = this.a.E().x(string, obj);
            if (x == null) {
                this.a.c().n().c("Unable to normalize conditional user property value", this.a.F().q(string), obj);
                return;
            }
            b.T0(bundle2, x);
            long j3 = bundle2.getLong("trigger_timeout");
            if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
                this.a.x();
                if (j3 > 15552000000L || j3 < 1) {
                    this.a.c().n().c("Invalid conditional user property timeout", this.a.F().q(string), Long.valueOf(j3));
                    return;
                }
            }
            long j4 = bundle2.getLong("time_to_live");
            this.a.x();
            if (j4 > 15552000000L || j4 < 1) {
                this.a.c().n().c("Invalid conditional user property time to live", this.a.F().q(string), Long.valueOf(j4));
            } else {
                this.a.e().q(new u5(this, bundle2));
            }
        } else {
            this.a.c().n().c("Invalid conditional user property value", this.a.F().q(string), obj);
        }
    }
}
