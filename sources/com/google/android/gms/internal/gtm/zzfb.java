package com.google.android.gms.internal.gtm;

import java.util.Map;
import java.util.Objects;

public final class zzfb extends zzbs {
    private static zzfb zza;

    public zzfb(zzbv zzbv) {
        super(zzbv);
    }

    public static zzfb zza() {
        return zza;
    }

    protected static final String zzf(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        String str = "-";
        if (obj instanceof Long) {
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            if (String.valueOf(obj).charAt(0) != '-') {
                str = "";
            }
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            StringBuilder q = ic.q(str);
            q.append(Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1))));
            q.append("...");
            q.append(str);
            q.append(Math.round(Math.pow(10.0d, (double) valueOf.length()) - 4.0d));
            return q.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            return obj instanceof Throwable ? obj.getClass().getCanonicalName() : str;
        }
    }

    public final void zzb(zzex zzex, String str) {
        zzS(str.length() != 0 ? "Discarding hit. ".concat(str) : new String("Discarding hit. "), zzex != null ? zzex.toString() : "no hit data");
    }

    public final void zzc(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        zzS(str.length() != 0 ? "Discarding hit. ".concat(str) : new String("Discarding hit. "), sb.toString());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
        synchronized (zzfb.class) {
            zza = this;
        }
    }

    public final synchronized void zze(int i, String str, Object obj, Object obj2, Object obj3) {
        char c;
        Objects.requireNonNull(str, "null reference");
        if (zzw().zzb()) {
            zzw();
            c = 'C';
        } else {
            zzw();
            c = 'c';
        }
        char charAt = "01VDIWEA?".charAt(i);
        String str2 = zzbt.zza;
        String zzD = zzbr.zzD(str, zzf(obj), zzf(obj2), zzf(obj3));
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(zzD).length());
        sb.append("3");
        sb.append(charAt);
        sb.append(c);
        sb.append(str2);
        sb.append(":");
        sb.append(zzD);
        String sb2 = sb.toString();
        if (sb2.length() > 1024) {
            sb2 = sb2.substring(0, 1024);
        }
        zzfh zzp = zzt().zzp();
        if (zzp != null) {
            zzp.zze().zzc(sb2);
        }
    }
}
