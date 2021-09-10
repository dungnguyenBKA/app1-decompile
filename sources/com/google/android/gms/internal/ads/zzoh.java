package com.google.android.gms.internal.ads;

public abstract class zzoh {
    private zzok zzbhv;

    /* access modifiers changed from: protected */
    public final void invalidate() {
        zzok zzok = this.zzbhv;
        if (zzok != null) {
            zzok.zzep();
        }
    }

    public abstract zzoj zza(zzib[] zzibArr, zznu zznu);

    public final void zza(zzok zzok) {
        this.zzbhv = zzok;
    }

    public abstract void zzd(Object obj);
}
