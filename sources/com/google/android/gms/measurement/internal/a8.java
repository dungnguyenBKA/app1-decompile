package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.zzlc;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public final class a8 extends s8 {
    private String d;
    private boolean e;
    private long f;

    a8(b9 b9Var) {
        super(b9Var);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final Pair<String, Boolean> l(String str, f fVar) {
        zzlc.zzb();
        if (!this.a.x().u(null, v2.y0) || fVar.f()) {
            return m(str);
        }
        return new Pair<>("", Boolean.FALSE);
    }

    /* access modifiers changed from: package-private */
    @Deprecated
    public final Pair<String, Boolean> m(String str) {
        g();
        long b = this.a.a().b();
        String str2 = this.d;
        if (str2 != null && b < this.f) {
            return new Pair<>(str2, Boolean.valueOf(this.e));
        }
        this.f = this.a.x().q(str, v2.b) + b;
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a.b());
            if (advertisingIdInfo != null) {
                this.d = advertisingIdInfo.getId();
                this.e = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.d == null) {
                this.d = "";
            }
        } catch (Exception e2) {
            this.a.c().u().b("Unable to get advertising id", e2);
            this.d = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.d, Boolean.valueOf(this.e));
    }

    /* access modifiers changed from: package-private */
    @Deprecated
    public final String n(String str) {
        g();
        String str2 = (String) m(str).first;
        MessageDigest A = h9.A();
        if (A == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, A.digest(str2.getBytes())));
    }
}
