package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX WARN: Field signature parse error: zzhpu */
public final class zzdqz {
    private final Object zzhpu;
    private final /* synthetic */ zzdqv zzhpy;

    /* JADX WARN: Failed to parse method signature: (TE)V */
    private zzdqz(zzdqv zzdqv, Object obj) {
        this.zzhpy = zzdqv;
        this.zzhpu = obj;
    }

    private final <O> zzdrb<O> zza(Callable<O> callable, zzdzv zzdzv) {
        return new zzdrb<>(this.zzhpy, this.zzhpu, zzdqv.zzhps, Collections.emptyList(), zzdzv.zze(callable));
    }

    public final <O> zzdrb<O> zzc(Callable<O> callable) {
        return zza(callable, this.zzhpy.zzghl);
    }

    public final <O> zzdrb<O> zze(zzdzw<O> zzdzw) {
        return new zzdrb<>(this.zzhpy, this.zzhpu, zzdqv.zzhps, Collections.emptyList(), zzdzw);
    }

    public final zzdrb<?> zza(zzdqt zzdqt, zzdzv zzdzv) {
        return zza(new zzdrc(zzdqt), zzdzv);
    }
}
