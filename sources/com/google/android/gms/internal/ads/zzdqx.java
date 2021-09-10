package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX WARN: Field signature parse error: zzhpu */
public final class zzdqx {
    private final Object zzhpu;
    private final List<zzdzw<?>> zzhpx;
    private final /* synthetic */ zzdqv zzhpy;

    private zzdqx(zzdqv zzdqv, E e, List<zzdzw<?>> list) {
        this.zzhpy = zzdqv;
        this.zzhpu = e;
        this.zzhpx = list;
    }

    public final <O> zzdrb<O> zzb(Callable<O> callable) {
        zzdzp zzk = zzdzk.zzk(this.zzhpx);
        zzdzw zzb = zzk.zzb(zzdra.zzhca, zzazp.zzeih);
        zzdqv zzdqv = this.zzhpy;
        return new zzdrb<>(zzdqv, this.zzhpu, zzb, this.zzhpx, zzk.zzb(callable, zzdqv.zzghl));
    }
}
