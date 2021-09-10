package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbcb implements Runnable {
    private final boolean zzekn;
    private final zzbbr zzenn;
    private final long zzeno;

    zzbcb(zzbbr zzbbr, boolean z, long j) {
        this.zzenn = zzbbr;
        this.zzekn = z;
        this.zzeno = j;
    }

    public final void run() {
        this.zzenn.zzc(this.zzekn, this.zzeno);
    }
}
