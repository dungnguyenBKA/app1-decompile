package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzmt implements Runnable {
    private final /* synthetic */ zzms zzbdl;
    private final /* synthetic */ zzmy zzbem;

    zzmt(zzms zzms, zzmy zzmy) {
        this.zzbdl = zzms;
        this.zzbem = zzmy;
    }

    public final void run() {
        this.zzbem.release();
        int size = zzms.zzd(this.zzbdl).size();
        for (int i = 0; i < size; i++) {
            ((zznm) zzms.zzd(this.zzbdl).valueAt(i)).disable();
        }
    }
}
