package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzco;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzcr;
import com.google.android.gms.internal.measurement.zzic;
import java.util.ArrayList;
import java.util.Map;

public final class c4 extends s8 implements d {
    private final Map<String, Map<String, String>> d = new x();
    private final Map<String, Map<String, Boolean>> e = new x();
    private final Map<String, Map<String, Boolean>> f = new x();
    private final Map<String, zzcp> g = new x();
    private final Map<String, Map<String, Integer>> h = new x();
    private final Map<String, String> i = new x();

    c4(b9 b9Var) {
        super(b9Var);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x007e, code lost:
        if (r2 != null) goto L_0x0080;
     */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00d6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void w(java.lang.String r12) {
        /*
        // Method dump skipped, instructions count: 219
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.c4.w(java.lang.String):void");
    }

    private final void x(String str, zzco zzco) {
        x xVar = new x();
        x xVar2 = new x();
        x xVar3 = new x();
        if (zzco != null) {
            for (int i2 = 0; i2 < zzco.zza(); i2++) {
                zzcm zzcm = (zzcm) zzco.zzb(i2).zzbu();
                if (TextUtils.isEmpty(zzcm.zza())) {
                    this.a.c().q().a("EventConfig contained null event name");
                } else {
                    String zza = zzcm.zza();
                    String d2 = j.d(zzcm.zza(), g5.a, g5.c);
                    if (!TextUtils.isEmpty(d2)) {
                        zzcm.zzb(d2);
                        zzco.zzc(i2, zzcm);
                    }
                    xVar.put(zza, Boolean.valueOf(zzcm.zzc()));
                    xVar2.put(zzcm.zza(), Boolean.valueOf(zzcm.zzd()));
                    if (zzcm.zze()) {
                        if (zzcm.zzf() < 2 || zzcm.zzf() > 65535) {
                            this.a.c().q().c("Invalid sampling rate. Event name, sample rate", zzcm.zza(), Integer.valueOf(zzcm.zzf()));
                        } else {
                            xVar3.put(zzcm.zza(), Integer.valueOf(zzcm.zzf()));
                        }
                    }
                }
            }
        }
        this.e.put(str, xVar);
        this.f.put(str, xVar2);
        this.h.put(str, xVar3);
    }

    private final zzcp y(String str, byte[] bArr) {
        if (bArr == null) {
            return zzcp.zzk();
        }
        try {
            zzcp zzcp = (zzcp) ((zzco) d9.H(zzcp.zzj(), bArr)).zzaA();
            g3 v = this.a.c().v();
            String str2 = null;
            Long valueOf = zzcp.zza() ? Long.valueOf(zzcp.zzb()) : null;
            if (zzcp.zzc()) {
                str2 = zzcp.zzd();
            }
            v.c("Parsed config. version, gmp_app_id", valueOf, str2);
            return zzcp;
        } catch (zzic e2) {
            this.a.c().q().c("Unable to merge remote config. appId", i3.w(str), e2);
            return zzcp.zzk();
        } catch (RuntimeException e3) {
            this.a.c().q().c("Unable to merge remote config. appId", i3.w(str), e3);
            return zzcp.zzk();
        }
    }

    private static final Map<String, String> z(zzcp zzcp) {
        x xVar = new x();
        if (zzcp != null) {
            for (zzcr zzcr : zzcp.zze()) {
                xVar.put(zzcr.zza(), zzcr.zzb());
            }
        }
        return xVar;
    }

    @Override // com.google.android.gms.measurement.internal.d
    public final String d(String str, String str2) {
        g();
        w(str);
        Map<String, String> map = this.d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final zzcp l(String str) {
        i();
        g();
        n.e(str);
        w(str);
        return this.g.get(str);
    }

    /* access modifiers changed from: protected */
    public final String m(String str) {
        g();
        return this.i.get(str);
    }

    /* access modifiers changed from: protected */
    public final void n(String str) {
        g();
        this.i.put(str, null);
    }

    /* access modifiers changed from: package-private */
    public final void o(String str) {
        g();
        this.g.remove(str);
    }

    /* access modifiers changed from: package-private */
    public final boolean p(String str) {
        g();
        zzcp l = l(str);
        if (l == null) {
            return false;
        }
        return l.zzi();
    }

    /* access modifiers changed from: protected */
    public final boolean q(String str, byte[] bArr, String str2) {
        i();
        g();
        n.e(str);
        zzco zzco = (zzco) y(str, bArr).zzbu();
        if (zzco == null) {
            return false;
        }
        x(str, zzco);
        this.g.put(str, (zzcp) zzco.zzaA());
        this.i.put(str, str2);
        this.d.put(str, z((zzcp) zzco.zzaA()));
        this.b.X().u(str, new ArrayList(zzco.zzd()));
        try {
            zzco.zze();
            bArr = ((zzcp) zzco.zzaA()).zzbp();
        } catch (RuntimeException e2) {
            this.a.c().q().c("Unable to serialize reduced-size config. Storing full config instead. appId", i3.w(str), e2);
        }
        i X = this.b.X();
        n.e(str);
        X.g();
        X.i();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (((long) X.M().update("apps", contentValues, "app_id = ?", new String[]{str})) == 0) {
                X.a.c().n().b("Failed to update remote config (got 0). appId", i3.w(str));
            }
        } catch (SQLiteException e3) {
            X.a.c().n().c("Error storing remote config. appId", i3.w(str), e3);
        }
        this.g.put(str, (zzcp) zzco.zzaA());
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean r(String str, String str2) {
        Boolean bool;
        g();
        w(str);
        if ("1".equals(d(str, "measurement.upload.blacklist_internal")) && h9.E(str2)) {
            return true;
        }
        if ("1".equals(d(str, "measurement.upload.blacklist_public")) && h9.e0(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* access modifiers changed from: package-private */
    public final boolean s(String str, String str2) {
        Boolean bool;
        g();
        w(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* access modifiers changed from: package-private */
    public final int t(String str, String str2) {
        Integer num;
        g();
        w(str);
        Map<String, Integer> map = this.h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* access modifiers changed from: package-private */
    public final boolean u(String str) {
        return "1".equals(d(str, "measurement.upload.blacklist_internal"));
    }

    /* access modifiers changed from: package-private */
    public final boolean v(String str) {
        return "1".equals(d(str, "measurement.upload.blacklist_public"));
    }
}
