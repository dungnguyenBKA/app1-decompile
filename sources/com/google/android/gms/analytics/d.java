package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.gtm.zzav;
import com.google.android.gms.internal.gtm.zzbe;
import com.google.android.gms.internal.gtm.zzbr;
import com.google.android.gms.internal.gtm.zzbt;
import com.google.android.gms.internal.gtm.zzbv;
import com.google.android.gms.internal.gtm.zzbx;
import com.google.android.gms.internal.gtm.zzex;
import com.google.android.gms.internal.gtm.zzfs;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public final class d extends zzbr implements s {
    private static DecimalFormat e;
    private final zzbv b;
    private final String c;
    private final Uri d;

    public d(zzbv zzbv, String str) {
        super(zzbv);
        n.e(str);
        this.b = zzbv;
        this.c = str;
        this.d = o(str);
    }

    static String L(double d2) {
        if (e == null) {
            e = new DecimalFormat("0.######");
        }
        return e.format(d2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x003d, code lost:
        if (android.text.TextUtils.isEmpty(r7) != false) goto L_0x0061;
     */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0020 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0069  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.Map<java.lang.String, java.lang.String> S(com.google.android.gms.analytics.i r12) {
        /*
        // Method dump skipped, instructions count: 857
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.d.S(com.google.android.gms.analytics.i):java.util.Map");
    }

    private static void V(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    static Uri o(String str) {
        n.e(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    @Override // com.google.android.gms.analytics.s
    public final void j(i iVar) {
        n.b(iVar.m(), "Can't deliver not submitted measurement");
        n.g("deliver should be called on worker thread");
        i iVar2 = new i(iVar);
        zzbe zzbe = (zzbe) iVar2.b(zzbe.class);
        if (TextUtils.isEmpty(zzbe.zzf())) {
            zzz().zzc(S(iVar2), "Ignoring measurement without type");
        } else if (TextUtils.isEmpty(zzbe.zze())) {
            zzz().zzc(S(iVar2), "Ignoring measurement without client id");
        } else {
            Objects.requireNonNull(this.b.zzc());
            if (zzfs.zzj(0.0d, zzbe.zze())) {
                zzG("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(0.0d));
                return;
            }
            Map<String, String> S = S(iVar2);
            HashMap hashMap = (HashMap) S;
            hashMap.put("v", "1");
            hashMap.put("_v", zzbt.zzb);
            hashMap.put("tid", this.c);
            if (this.b.zzc().g()) {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry entry : hashMap.entrySet()) {
                    if (sb.length() != 0) {
                        sb.append(", ");
                    }
                    sb.append((String) entry.getKey());
                    sb.append("=");
                    sb.append((String) entry.getValue());
                }
                zzN("Dry run is enabled. GoogleAnalytics would have sent", sb.toString());
                return;
            }
            HashMap hashMap2 = new HashMap();
            zzfs.zzg(hashMap2, "uid", zzbe.zzg());
            zzav zzav = (zzav) iVar.c(zzav.class);
            if (zzav != null) {
                zzfs.zzg(hashMap2, "an", zzav.zzf());
                zzfs.zzg(hashMap2, "aid", zzav.zzd());
                zzfs.zzg(hashMap2, "av", zzav.zzg());
                zzfs.zzg(hashMap2, "aiid", zzav.zze());
            }
            hashMap.put("_s", String.valueOf(zzs().zza(new zzbx(0, zzbe.zze(), this.c, !TextUtils.isEmpty(zzbe.zzd()), 0, hashMap2))));
            zzs().zzh(new zzex(zzz(), S, iVar.a(), true));
        }
    }

    @Override // com.google.android.gms.analytics.s
    public final Uri zzb() {
        return this.d;
    }
}
