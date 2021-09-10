package com.google.android.gms.internal.gtm;

public class zzvq {
    private static final zzuj zzb = zzuj.zza();
    protected volatile zzwk zza;
    private volatile zztd zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvq)) {
            return false;
        }
        zzvq zzvq = (zzvq) obj;
        zzwk zzwk = this.zza;
        zzwk zzwk2 = zzvq.zza;
        if (zzwk == null && zzwk2 == null) {
            return zzb().equals(zzvq.zzb());
        }
        if (zzwk != null && zzwk2 != null) {
            return zzwk.equals(zzwk2);
        }
        if (zzwk != null) {
            zzvq.zzd(zzwk.zzar());
            return zzwk.equals(zzvq.zza);
        }
        zzd(zzwk2.zzar());
        return this.zza.equals(zzwk2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzta) this.zzc).zza.length;
        }
        if (this.zza != null) {
            return this.zza.zzX();
        }
        return 0;
    }

    public final zztd zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zztd.zzb;
            } else {
                this.zzc = this.zza.zzR();
            }
            return this.zzc;
        }
    }

    public final zzwk zzc(zzwk zzwk) {
        zzwk zzwk2 = this.zza;
        this.zzc = null;
        this.zza = zzwk;
        return zzwk2;
    }

    /* access modifiers changed from: protected */
    public final void zzd(zzwk zzwk) {
        if (this.zza == null) {
            synchronized (this) {
                if (this.zza == null) {
                    try {
                        this.zza = zzwk;
                        this.zzc = zztd.zzb;
                    } catch (zzvk unused) {
                        this.zza = zzwk;
                        this.zzc = zztd.zzb;
                    }
                }
            }
        }
    }
}
