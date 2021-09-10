package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzadc;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzrp;
import com.google.android.gms.internal.ads.zzwr;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzi implements zzf {
    private final Object a = new Object();
    private boolean b;
    private final List<Runnable> c = new ArrayList();
    private zzdzw<?> d;
    @GuardedBy("lock")
    private zzrp e = null;
    @GuardedBy("lock")
    private SharedPreferences f;
    @GuardedBy("lock")
    private SharedPreferences.Editor g;
    @GuardedBy("lock")
    private boolean h = true;
    @GuardedBy("lock")
    private String i;
    @GuardedBy("lock")
    private String j;
    @GuardedBy("lock")
    private boolean k = true;
    @GuardedBy("lock")
    private String l = "";
    @GuardedBy("lock")
    private long m = 0;
    @GuardedBy("lock")
    private long n = 0;
    @GuardedBy("lock")
    private long o = 0;
    @GuardedBy("lock")
    private int p = -1;
    @GuardedBy("lock")
    private int q = 0;
    @GuardedBy("lock")
    private Set<String> r = Collections.emptySet();
    @GuardedBy("lock")
    private JSONObject s = new JSONObject();
    @GuardedBy("lock")
    private boolean t = true;
    @GuardedBy("lock")
    private boolean u = true;
    @GuardedBy("lock")
    private String v = null;
    @GuardedBy("lock")
    private int w = -1;

    private final void b() {
        zzdzw<?> zzdzw = this.d;
        if (zzdzw != null && !zzdzw.isDone()) {
            try {
                this.d.get(1, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                zzazk.zzd("Interrupted while waiting for preferences loaded.", e2);
            } catch (CancellationException | ExecutionException | TimeoutException e3) {
                zzazk.zzc("Fail to initialize AdSharedPreferenceManager.", e3);
            }
        }
    }

    private final void c() {
        zzazp.zzeic.execute(new u(this));
    }

    /* access modifiers changed from: package-private */
    public final void a(Context context, String str) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.a) {
            this.f = sharedPreferences;
            this.g = edit;
            if (Build.VERSION.SDK_INT >= 23) {
                z = true;
            }
            if (z) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.h = this.f.getBoolean("use_https", this.h);
            this.t = this.f.getBoolean("content_url_opted_out", this.t);
            this.i = this.f.getString("content_url_hashes", this.i);
            this.k = this.f.getBoolean("gad_idless", this.k);
            this.u = this.f.getBoolean("content_vertical_opted_out", this.u);
            this.j = this.f.getString("content_vertical_hashes", this.j);
            this.q = this.f.getInt("version_code", this.q);
            this.l = this.f.getString("app_settings_json", this.l);
            this.m = this.f.getLong("app_settings_last_update_ms", this.m);
            this.n = this.f.getLong("app_last_background_time_ms", this.n);
            this.p = this.f.getInt("request_in_session_count", this.p);
            this.o = this.f.getLong("first_ad_req_time_ms", this.o);
            this.r = this.f.getStringSet("never_pool_slots", this.r);
            this.v = this.f.getString("display_cutout", this.v);
            this.w = this.f.getInt("app_measurement_npa", this.w);
            try {
                this.s = new JSONObject(this.f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e2) {
                zzazk.zzd("Could not convert native advanced settings to json object", e2);
            }
            c();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void initialize(Context context) {
        synchronized (this.a) {
            if (this.f == null) {
                this.d = zzazp.zzeic.zzg(new t(this, context, "admob"));
                this.b = true;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zza(String str, String str2, boolean z) {
        b();
        synchronized (this.a) {
            JSONArray optJSONArray = this.s.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            int i2 = 0;
            while (true) {
                if (i2 < optJSONArray.length()) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        if (!str2.equals(optJSONObject.optString(ReportDBAdapter.ReportColumns.COLUMN_TEMPATE_ID))) {
                            i2++;
                        } else if (!z || !optJSONObject.optBoolean("uses_media_view", false)) {
                            length = i2;
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ReportDBAdapter.ReportColumns.COLUMN_TEMPATE_ID, str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", zzr.zzky().a());
                optJSONArray.put(length, jSONObject);
                this.s.put(str, optJSONArray);
            } catch (JSONException e2) {
                zzazk.zzd("Could not update native advanced settings", e2);
            }
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putString("native_advanced_settings", this.s.toString());
                this.g.apply();
            }
            c();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzap(boolean z) {
        b();
        synchronized (this.a) {
            if (this.t != z) {
                this.t = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("content_url_opted_out", z);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzaq(boolean z) {
        b();
        synchronized (this.a) {
            if (this.u != z) {
                this.u = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("content_vertical_opted_out", z);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzar(boolean z) {
        b();
        synchronized (this.a) {
            if (z != this.k) {
                this.k = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("gad_idless", z);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzb(Runnable runnable) {
        this.c.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdd(int i2) {
        b();
        synchronized (this.a) {
            if (this.q != i2) {
                this.q = i2;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("version_code", i2);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzde(int i2) {
        b();
        synchronized (this.a) {
            if (this.p != i2) {
                this.p = i2;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("request_in_session_count", i2);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzec(String str) {
        b();
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.i)) {
                    this.i = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("content_url_hashes", str);
                        this.g.apply();
                    }
                    c();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzed(String str) {
        b();
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.j)) {
                    this.j = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("content_vertical_hashes", str);
                        this.g.apply();
                    }
                    c();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzee(String str) {
        b();
        synchronized (this.a) {
            long a2 = zzr.zzky().a();
            this.m = a2;
            if (str != null) {
                if (!str.equals(this.l)) {
                    this.l = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("app_settings_json", str);
                        this.g.putLong("app_settings_last_update_ms", a2);
                        this.g.apply();
                    }
                    c();
                    for (Runnable runnable : this.c) {
                        runnable.run();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzef(String str) {
        b();
        synchronized (this.a) {
            if (!TextUtils.equals(this.v, str)) {
                this.v = str;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("display_cutout", str);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzez(long j2) {
        b();
        synchronized (this.a) {
            if (this.n != j2) {
                this.n = j2;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("app_last_background_time_ms", j2);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzfa(long j2) {
        b();
        synchronized (this.a) {
            if (this.o != j2) {
                this.o = j2;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("first_ad_req_time_ms", j2);
                    this.g.apply();
                }
                c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final zzrp zzyh() {
        if (!this.b) {
            return null;
        }
        if ((zzyi() && zzyk()) || !zzadc.zzdct.get().booleanValue()) {
            return null;
        }
        synchronized (this.a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.e == null) {
                this.e = new zzrp();
            }
            this.e.zzmi();
            zzazk.zzew("start fetching content...");
            return this.e;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzyi() {
        boolean z;
        b();
        synchronized (this.a) {
            z = this.t;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzyj() {
        String str;
        b();
        synchronized (this.a) {
            str = this.i;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzyk() {
        boolean z;
        b();
        synchronized (this.a) {
            z = this.u;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzyl() {
        String str;
        b();
        synchronized (this.a) {
            str = this.j;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzym() {
        int i2;
        b();
        synchronized (this.a) {
            i2 = this.q;
        }
        return i2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final zzayp zzyn() {
        zzayp zzayp;
        b();
        synchronized (this.a) {
            zzayp = new zzayp(this.l, this.m);
        }
        return zzayp;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzyo() {
        long j2;
        b();
        synchronized (this.a) {
            j2 = this.n;
        }
        return j2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzyp() {
        int i2;
        b();
        synchronized (this.a) {
            i2 = this.p;
        }
        return i2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzyq() {
        long j2;
        b();
        synchronized (this.a) {
            j2 = this.o;
        }
        return j2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final JSONObject zzyr() {
        JSONObject jSONObject;
        b();
        synchronized (this.a) {
            jSONObject = this.s;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzys() {
        b();
        synchronized (this.a) {
            this.s = new JSONObject();
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.g.apply();
            }
            c();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzyt() {
        String str;
        b();
        synchronized (this.a) {
            str = this.v;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzyu() {
        boolean z;
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcos)).booleanValue()) {
            return false;
        }
        b();
        synchronized (this.a) {
            z = this.k;
        }
        return z;
    }
}
