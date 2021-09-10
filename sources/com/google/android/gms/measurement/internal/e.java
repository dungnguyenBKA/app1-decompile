package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.l;
import com.google.android.gms.internal.measurement.zzmp;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import org.apache.http.HttpStatus;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

public final class e extends d5 {
    private Boolean b;
    private d c = c.a;
    private Boolean d;

    e(j4 j4Var) {
        super(j4Var);
    }

    public static final long F() {
        return v2.d.b(null).longValue();
    }

    public static final long h() {
        return v2.D.b(null).longValue();
    }

    private final String i(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Objects.requireNonNull(str3, "null reference");
            return str3;
        } catch (ClassNotFoundException e) {
            this.a.c().n().b("Could not find SystemProperties class", e);
            return "";
        } catch (NoSuchMethodException e2) {
            this.a.c().n().b("Could not find SystemProperties.get() method", e2);
            return "";
        } catch (IllegalAccessException e3) {
            this.a.c().n().b("Could not access SystemProperties.get()", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.a.c().n().b("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public final String A() {
        return i("debug.firebase.analytics.app", "");
    }

    public final String B() {
        return i("debug.deferred.deeplink", "");
    }

    public final boolean C(String str) {
        return "1".equals(this.c.d(str, "gaia_collection_enabled"));
    }

    public final boolean D(String str) {
        return "1".equals(this.c.d(str, "measurement.event_sampling_enabled"));
    }

    /* access modifiers changed from: package-private */
    public final boolean E() {
        if (this.b == null) {
            Boolean w = w("app_measurement_lite");
            this.b = w;
            if (w == null) {
                this.b = Boolean.FALSE;
            }
        }
        return this.b.booleanValue() || !this.a.M();
    }

    /* access modifiers changed from: package-private */
    public final void j(d dVar) {
        this.c = dVar;
    }

    public final int k() {
        h9 E = this.a.E();
        Boolean p = E.a.P().p();
        if (E.M() < 201500) {
            return (p == null || p.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int l(String str) {
        return Math.max(Math.min(r(str, v2.I), 100), 25);
    }

    /* access modifiers changed from: package-private */
    public final int m(String str) {
        return Math.max(Math.min(r(str, v2.H), (int) AdError.SERVER_ERROR_CODE), (int) HttpStatus.SC_INTERNAL_SERVER_ERROR);
    }

    public final long n() {
        this.a.zzas();
        return 39000;
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean o() {
        if (this.d == null) {
            synchronized (this) {
                if (this.d == null) {
                    ApplicationInfo applicationInfo = this.a.b().getApplicationInfo();
                    String a = l.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null && str.equals(a)) {
                            z = true;
                        }
                        this.d = Boolean.valueOf(z);
                    }
                    if (this.d == null) {
                        this.d = Boolean.TRUE;
                        this.a.c().n().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.d.booleanValue();
    }

    public final String p(String str, u2<String> u2Var) {
        if (str == null) {
            return u2Var.b(null);
        }
        return u2Var.b(this.c.d(str, u2Var.a()));
    }

    public final long q(String str, u2<Long> u2Var) {
        if (str == null) {
            return u2Var.b(null).longValue();
        }
        String d2 = this.c.d(str, u2Var.a());
        if (TextUtils.isEmpty(d2)) {
            return u2Var.b(null).longValue();
        }
        try {
            return u2Var.b(Long.valueOf(Long.parseLong(d2))).longValue();
        } catch (NumberFormatException unused) {
            return u2Var.b(null).longValue();
        }
    }

    public final int r(String str, u2<Integer> u2Var) {
        if (str == null) {
            return u2Var.b(null).intValue();
        }
        String d2 = this.c.d(str, u2Var.a());
        if (TextUtils.isEmpty(d2)) {
            return u2Var.b(null).intValue();
        }
        try {
            return u2Var.b(Integer.valueOf(Integer.parseInt(d2))).intValue();
        } catch (NumberFormatException unused) {
            return u2Var.b(null).intValue();
        }
    }

    public final int s(String str, u2<Integer> u2Var, int i, int i2) {
        return Math.max(Math.min(r(str, u2Var), i2), i);
    }

    public final double t(String str, u2<Double> u2Var) {
        if (str == null) {
            return u2Var.b(null).doubleValue();
        }
        String d2 = this.c.d(str, u2Var.a());
        if (TextUtils.isEmpty(d2)) {
            return u2Var.b(null).doubleValue();
        }
        try {
            return u2Var.b(Double.valueOf(Double.parseDouble(d2))).doubleValue();
        } catch (NumberFormatException unused) {
            return u2Var.b(null).doubleValue();
        }
    }

    public final boolean u(String str, u2<Boolean> u2Var) {
        if (str == null) {
            return u2Var.b(null).booleanValue();
        }
        String d2 = this.c.d(str, u2Var.a());
        if (TextUtils.isEmpty(d2)) {
            return u2Var.b(null).booleanValue();
        }
        return u2Var.b(Boolean.valueOf(Boolean.parseBoolean(d2))).booleanValue();
    }

    /* access modifiers changed from: package-private */
    public final Bundle v() {
        try {
            if (this.a.b().getPackageManager() == null) {
                this.a.c().n().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo c2 = yv.a(this.a.b()).c(this.a.b().getPackageName(), 128);
            if (c2 != null) {
                return c2.metaData;
            }
            this.a.c().n().a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.a.c().n().b("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final Boolean w(String str) {
        n.e(str);
        Bundle v = v();
        if (v == null) {
            this.a.c().n().a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!v.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(v.getBoolean(str));
        }
    }

    public final boolean x() {
        this.a.zzas();
        Boolean w = w("firebase_analytics_collection_deactivated");
        return w != null && w.booleanValue();
    }

    public final boolean y() {
        Boolean w = w("google_analytics_adid_collection_enabled");
        return w == null || w.booleanValue();
    }

    public final boolean z() {
        Boolean w;
        zzmp.zzb();
        if (u(null, v2.t0) && (w = w("google_analytics_automatic_screen_reporting_enabled")) != null && !w.booleanValue()) {
            return false;
        }
        return true;
    }
}
