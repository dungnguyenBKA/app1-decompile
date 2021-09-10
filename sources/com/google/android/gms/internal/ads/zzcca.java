package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcca implements Runnable {
    private final boolean zzekn;
    private final zzcbu zzgdg;

    zzcca(zzcbu zzcbu, boolean z) {
        this.zzgdg = zzcbu;
        this.zzekn = z;
    }

    public final void run() {
        this.zzgdg.zzbi(this.zzekn);
    }
}
