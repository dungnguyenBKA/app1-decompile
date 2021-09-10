package com.google.android.gms.internal.ads;

public final class zzbdn extends zzbdd {
    public zzbdn(zzbbo zzbbo) {
        super(zzbbo);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final boolean zzfg(String str) {
        zzbbo zzbbo = this.zzepn.get();
        if (zzbbo != null) {
            zzbbo.zza(zzfh(str), this);
        }
        zzazk.zzex("VideoStreamNoopCache is doing nothing.");
        zza(str, zzfh(str), "noop", "Noop cache is a noop.");
        return false;
    }
}
