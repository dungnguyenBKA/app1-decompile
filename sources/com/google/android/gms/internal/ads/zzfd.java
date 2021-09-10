package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

/* access modifiers changed from: package-private */
public final class zzfd implements Runnable {
    private final /* synthetic */ int zzzm;
    private final /* synthetic */ boolean zzzn;
    private final /* synthetic */ zzfc zzzo;

    zzfd(zzfc zzfc, int i, boolean z) {
        this.zzzo = zzfc;
        this.zzzm = i;
        this.zzzn = z;
    }

    public final void run() {
        zzcf.zza zzb = this.zzzo.zzb(this.zzzm, this.zzzn);
        this.zzzo.zzzf = zzb;
        if (zzfc.zza(this.zzzm, zzb)) {
            this.zzzo.zza(this.zzzm + 1, this.zzzn);
        }
    }
}
