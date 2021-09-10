package com.google.android.gms.internal.ads;

public final class zzoj {
    public final zznu zzbhx;
    public final zzoi zzbhy;
    public final Object zzbhz;
    public final zzia[] zzbia;

    public zzoj(zznu zznu, zzoi zzoi, Object obj, zzia[] zziaArr) {
        this.zzbhx = zznu;
        this.zzbhy = zzoi;
        this.zzbhz = obj;
        this.zzbia = zziaArr;
    }

    public final boolean zza(zzoj zzoj, int i) {
        if (zzoj != null && zzpt.zza(this.zzbhy.zzbe(i), zzoj.zzbhy.zzbe(i)) && zzpt.zza(this.zzbia[i], zzoj.zzbia[i])) {
            return true;
        }
        return false;
    }
}
