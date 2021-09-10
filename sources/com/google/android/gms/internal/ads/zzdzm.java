package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* access modifiers changed from: package-private */
public final class zzdzm<V> implements Runnable {
    private final Future<V> zziam;
    private final zzdzl<? super V> zzian;

    zzdzm(Future<V> future, zzdzl<? super V> zzdzl) {
        this.zziam = future;
        this.zzian = zzdzl;
    }

    public final void run() {
        Throwable zza;
        Future<V> future = this.zziam;
        if (!(future instanceof zzeao) || (zza = zzean.zza((zzeao) future)) == null) {
            try {
                this.zzian.onSuccess(zzdzk.zza(this.zziam));
            } catch (ExecutionException e) {
                this.zzian.zzb(e.getCause());
            } catch (Error | RuntimeException e2) {
                this.zzian.zzb(e2);
            }
        } else {
            this.zzian.zzb(zza);
        }
    }

    public final String toString() {
        return zzdwb.zzw(this).zzy(this.zzian).toString();
    }
}
