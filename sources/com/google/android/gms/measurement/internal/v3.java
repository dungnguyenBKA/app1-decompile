package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* access modifiers changed from: package-private */
public final class v3 extends e5 {
    static final Pair<String, Long> C = new Pair<>("", 0L);
    public final s3 A = new s3(this, "deferred_attribution_cache_timestamp", 0);
    public final r3 B = new r3(this);
    private SharedPreferences c;
    public t3 d;
    public final s3 e = new s3(this, "last_upload", 0);
    public final s3 f = new s3(this, "last_upload_attempt", 0);
    public final s3 g = new s3(this, "backoff", 0);
    public final s3 h = new s3(this, "last_delete_stale", 0);
    public final s3 i = new s3(this, "midnight_offset", 0);
    public final s3 j = new s3(this, "first_open_time", 0);
    public final s3 k = new s3(this, "app_install_time", 0);
    public final u3 l = new u3(this, "app_instance_id");
    private String m;
    private boolean n;
    private long o;
    public final s3 p = new s3(this, "session_timeout", 1800000);
    public final q3 q = new q3(this, "start_new_session", true);
    public final u3 r = new u3(this, "non_personalized_ads");
    public final q3 s = new q3(this, "allow_remote_dynamite", false);
    public final s3 t = new s3(this, "last_pause_time", 0);
    public boolean u;
    public final q3 v = new q3(this, "app_backgrounded", false);
    public final q3 w = new q3(this, "deep_link_retrieval_complete", false);
    public final s3 x = new s3(this, "deep_link_retrieval_attempts", 0);
    public final u3 y = new u3(this, "firebase_feature_rollouts");
    public final u3 z = new u3(this, "deferred_attribution_cache");

    v3(j4 j4Var) {
        super(j4Var);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final boolean h() {
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    public final void i() {
        SharedPreferences sharedPreferences = this.a.b().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.c = sharedPreferences;
        boolean z2 = sharedPreferences.getBoolean("has_been_opened", false);
        this.u = z2;
        if (!z2) {
            SharedPreferences.Editor edit = this.c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.a.x();
        this.d = new t3(this, Math.max(0L, v2.c.b(null).longValue()));
    }

    /* access modifiers changed from: package-private */
    public final Pair<String, Boolean> n(String str) {
        g();
        long b = this.a.a().b();
        String str2 = this.m;
        if (str2 != null && b < this.o) {
            return new Pair<>(str2, Boolean.valueOf(this.n));
        }
        this.o = this.a.x().q(str, v2.b) + b;
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a.b());
            if (advertisingIdInfo != null) {
                this.m = advertisingIdInfo.getId();
                this.n = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.m == null) {
                this.m = "";
            }
        } catch (Exception e2) {
            this.a.c().u().b("Unable to get advertising id", e2);
            this.m = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.m, Boolean.valueOf(this.n));
    }

    /* access modifiers changed from: protected */
    public final SharedPreferences o() {
        g();
        k();
        Objects.requireNonNull(this.c, "null reference");
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public final void p(Boolean bool) {
        g();
        SharedPreferences.Editor edit = o().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* access modifiers changed from: package-private */
    public final Boolean q() {
        g();
        if (o().contains("measurement_enabled")) {
            return Boolean.valueOf(o().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final boolean r(int i2) {
        return f.m(i2, o().getInt("consent_source", 100));
    }

    /* access modifiers changed from: package-private */
    public final f s() {
        g();
        return f.c(o().getString("consent_settings", "G1"));
    }

    /* access modifiers changed from: package-private */
    public final void t(boolean z2) {
        g();
        this.a.c().v().b("App measurement setting deferred collection", Boolean.valueOf(z2));
        SharedPreferences.Editor edit = o().edit();
        edit.putBoolean("deferred_analytics_collection", z2);
        edit.apply();
    }

    /* access modifiers changed from: package-private */
    public final boolean u() {
        SharedPreferences sharedPreferences = this.c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    /* access modifiers changed from: package-private */
    public final boolean v(long j2) {
        return j2 - this.p.a() > this.t.a();
    }
}
