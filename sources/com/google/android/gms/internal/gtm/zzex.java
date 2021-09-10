package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class zzex {
    private final Map<String, String> zza;
    private final List<zzcp> zzb;
    private final long zzc;
    private final long zzd;
    private final int zze;
    private final boolean zzf;
    private final String zzg;

    public zzex(zzbr zzbr, Map<String, String> map, long j, boolean z) {
        this(zzbr, map, j, z, 0, 0, null);
    }

    public static zzex zze(zzbr zzbr, zzex zzex, Map<String, String> map) {
        return new zzex(zzbr, map, zzex.zzd, zzex.zzf, zzex.zzc, zzex.zze, zzex.zzb);
    }

    private final String zzi(String str, String str2) {
        n.e(str);
        n.b(!str.startsWith("&"), "Short param name required");
        String str3 = this.zza.get(str);
        return str3 != null ? str3 : str2;
    }

    private static String zzj(zzbr zzbr, Object obj) {
        if (obj == null) {
            return null;
        }
        String obj2 = obj.toString();
        if (obj2.startsWith("&")) {
            obj2 = obj2.substring(1);
        }
        int length = obj2.length();
        if (length > 256) {
            obj2 = obj2.substring(0, 256);
            zzbr.zzT("Hit param name is too long and will be trimmed", Integer.valueOf(length), obj2);
        }
        if (TextUtils.isEmpty(obj2)) {
            return null;
        }
        return obj2;
    }

    private static String zzk(zzbr zzbr, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        if (length <= 8192) {
            return obj2;
        }
        String substring = obj2.substring(0, 8192);
        zzbr.zzT("Hit param value is too long and will be trimmed", Integer.valueOf(length), substring);
        return substring;
    }

    private static boolean zzl(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    public final String toString() {
        StringBuilder q = ic.q("ht=");
        q.append(this.zzd);
        if (this.zzc != 0) {
            q.append(", dbId=");
            q.append(this.zzc);
        }
        if (this.zze != 0) {
            q.append(", appUID=");
            q.append(this.zze);
        }
        ArrayList arrayList = new ArrayList(this.zza.keySet());
        Collections.sort(arrayList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            String str = (String) arrayList.get(i);
            q.append(", ");
            q.append(str);
            q.append("=");
            q.append(this.zza.get(str));
        }
        return q.toString();
    }

    public final int zza() {
        return this.zze;
    }

    public final long zzb() {
        return this.zzc;
    }

    public final long zzc() {
        return zzfs.zza(zzi("_s", "0"));
    }

    public final long zzd() {
        return this.zzd;
    }

    public final String zzf() {
        return zzi("_m", "");
    }

    public final Map<String, String> zzg() {
        return this.zza;
    }

    public final boolean zzh() {
        return this.zzf;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public zzex(com.google.android.gms.internal.gtm.zzbr r2, java.util.Map<java.lang.String, java.lang.String> r3, long r4, boolean r6, long r7, int r9, java.util.List<com.google.android.gms.internal.gtm.zzcp> r10) {
        /*
        // Method dump skipped, instructions count: 233
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzex.<init>(com.google.android.gms.internal.gtm.zzbr, java.util.Map, long, boolean, long, int, java.util.List):void");
    }
}
