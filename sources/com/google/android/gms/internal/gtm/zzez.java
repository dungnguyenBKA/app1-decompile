package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.util.d;

public final class zzez {
    private double zza = 60.0d;
    private long zzb;
    private final Object zzc = new Object();
    private final String zzd = "tracking";
    private final d zze;

    public zzez(int i, long j, String str, d dVar) {
        this.zze = dVar;
    }

    public final boolean zza() {
        synchronized (this.zzc) {
            long a = this.zze.a();
            double d = this.zza;
            if (d < 60.0d) {
                double d2 = (double) (a - this.zzb);
                Double.isNaN(d2);
                double d3 = d2 / 2000.0d;
                if (d3 > 0.0d) {
                    d = Math.min(60.0d, d + d3);
                    this.zza = d;
                }
            }
            this.zzb = a;
            if (d >= 1.0d) {
                this.zza = d - 4.0d;
                return true;
            }
            String str = this.zzd;
            StringBuilder sb = new StringBuilder(str.length() + 34);
            sb.append("Excessive ");
            sb.append(str);
            sb.append(" detected; call ignored.");
            zzfa.zze(sb.toString());
            return false;
        }
    }
}
