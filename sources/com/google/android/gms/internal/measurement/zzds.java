package com.google.android.gms.internal.measurement;

import java.util.List;

public final class zzds extends zzhs<zzds, zzdr> implements zziy {
    private static final zzds zzg;
    private int zza;
    private int zze;
    private zzhy zzf = zzhs.zzbC();

    static {
        zzds zzds = new zzds();
        zzg = zzds;
        zzhs.zzby(zzds.class, zzds);
    }

    private zzds() {
    }

    public static zzdr zzf() {
        return (zzdr) zzg.zzbt();
    }

    static /* synthetic */ void zzh(zzds zzds, int i) {
        zzds.zza |= 1;
        zzds.zze = i;
    }

    static /* synthetic */ void zzi(zzds zzds, Iterable iterable) {
        zzhy zzhy = zzds.zzf;
        if (!zzhy.zza()) {
            zzds.zzf = zzhs.zzbD(zzhy);
        }
        zzgb.zzbs(iterable, zzds.zzf);
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final List<Long> zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzf.size();
    }

    public final long zze(int i) {
        return this.zzf.zzc(i);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzhs.zzbz(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zza", "zze", "zzf"});
        } else if (i2 == 3) {
            return new zzds();
        } else {
            if (i2 == 4) {
                return new zzdr(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zzg;
        }
    }
}
