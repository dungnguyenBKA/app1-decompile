package com.google.android.gms.internal.measurement;

public class zzif {
    private static final zzhe zzb = zzhe.zza();
    protected volatile zzix zza;
    private volatile zzgs zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzif)) {
            return false;
        }
        zzif zzif = (zzif) obj;
        zzix zzix = this.zza;
        zzix zzix2 = zzif.zza;
        if (zzix == null && zzix2 == null) {
            return zzb().equals(zzif.zzb());
        }
        if (zzix != null && zzix2 != null) {
            return zzix.equals(zzix2);
        }
        if (zzix != null) {
            zzif.zzc(zzix.zzbK());
            return zzix.equals(zzif.zza);
        }
        zzc(zzix2.zzbK());
        return this.zza.equals(zzix2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzgq) this.zzc).zza.length;
        }
        if (this.zza != null) {
            return this.zza.zzbw();
        }
        return 0;
    }

    public final zzgs zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zzgs.zzb;
            } else {
                this.zzc = this.zza.zzbo();
            }
            return this.zzc;
        }
    }

    /* access modifiers changed from: protected */
    public final void zzc(zzix zzix) {
        if (this.zza == null) {
            synchronized (this) {
                if (this.zza == null) {
                    try {
                        this.zza = zzix;
                        this.zzc = zzgs.zzb;
                    } catch (zzic unused) {
                        this.zza = zzix;
                        this.zzc = zzgs.zzb;
                    }
                }
            }
        }
    }
}
