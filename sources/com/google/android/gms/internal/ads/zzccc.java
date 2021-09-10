package com.google.android.gms.internal.ads;

public final class zzccc {
    private zzaem zzclh;

    public zzccc(zzcbs zzcbs) {
        this.zzclh = zzcbs;
    }

    public final synchronized void zza(zzaem zzaem) {
        this.zzclh = zzaem;
    }

    public final synchronized zzaem zzty() {
        return this.zzclh;
    }
}
