package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;

/* access modifiers changed from: package-private */
public final class zzalg implements Runnable {
    private final /* synthetic */ zzalq zzdju;
    private final /* synthetic */ zzakm zzdjv;
    private final /* synthetic */ zzakz zzdjw;

    zzalg(zzakz zzakz, zzalq zzalq, zzakm zzakm) {
        this.zzdjw = zzakz;
        this.zzdju = zzalq;
        this.zzdjv = zzakm;
    }

    public final void run() {
        synchronized (this.zzdjw.lock) {
            if (this.zzdju.getStatus() != -1) {
                if (this.zzdju.getStatus() != 1) {
                    this.zzdju.reject();
                    zzdzv zzdzv = zzazp.zzeig;
                    zzakm zzakm = this.zzdjv;
                    zzakm.getClass();
                    zzdzv.execute(zzalj.zzb(zzakm));
                    zzd.zzeb("Could not receive loaded message in a timely manner. Rejecting.");
                }
            }
        }
    }
}
