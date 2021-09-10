package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyk;

final class zzeab extends zzdyk.zzh<Void> implements Runnable {
    private final Runnable zziax;

    public zzeab(Runnable runnable) {
        this.zziax = (Runnable) zzdwl.checkNotNull(runnable);
    }

    public final void run() {
        try {
            this.zziax.run();
        } catch (Throwable th) {
            setException(th);
            throw zzdwv.zzj(th);
        }
    }
}
