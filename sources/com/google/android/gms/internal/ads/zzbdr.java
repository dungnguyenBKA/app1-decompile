package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbdr implements Runnable {
    private final boolean zzekn;
    private final long zzeno;
    private final zzbbo zzeol;

    zzbdr(zzbbo zzbbo, boolean z, long j) {
        this.zzeol = zzbbo;
        this.zzekn = z;
        this.zzeno = j;
    }

    public final void run() {
        this.zzeol.zza(this.zzekn, this.zzeno);
    }
}
