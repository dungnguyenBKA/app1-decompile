package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbex implements Runnable {
    private final int zzefe;
    private final int zzeff;
    private final boolean zzers;
    private final boolean zzert;
    private final zzbev zzeug;

    zzbex(zzbev zzbev, int i, int i2, boolean z, boolean z2) {
        this.zzeug = zzbev;
        this.zzefe = i;
        this.zzeff = i2;
        this.zzers = z;
        this.zzert = z2;
    }

    public final void run() {
        this.zzeug.zzb(this.zzefe, this.zzeff, this.zzers, this.zzert);
    }
}
