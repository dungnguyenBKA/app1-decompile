package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class zzdrb<O> {
    private final E zzhpu;
    private final String zzhpv;
    private final List<zzdzw<?>> zzhpx;
    final /* synthetic */ zzdqv zzhpy;
    private final zzdzw<?> zzhpz;
    private final zzdzw<O> zzhqa;

    private zzdrb(zzdqv zzdqv, E e, String str, zzdzw<?> zzdzw, List<zzdzw<?>> list, zzdzw<O> zzdzw2) {
        this.zzhpy = zzdqv;
        this.zzhpu = e;
        this.zzhpv = str;
        this.zzhpz = zzdzw;
        this.zzhpx = list;
        this.zzhqa = zzdzw2;
    }

    public final <O2> zzdrb<O2> zza(zzdyu<O, O2> zzdyu) {
        return zza(zzdyu, this.zzhpy.zzghl);
    }

    public final zzdqw<E, O> zzaxj() {
        E e = this.zzhpu;
        String str = this.zzhpv;
        if (str == null) {
            str = this.zzhpy.zzu(e);
        }
        zzdqw<E, O> zzdqw = new zzdqw<>(e, str, this.zzhqa);
        this.zzhpy.zzhpt.zza(zzdqw);
        zzdzw<?> zzdzw = this.zzhpz;
        zzdrf zzdrf = new zzdrf(this, zzdqw);
        zzdzv zzdzv = zzazp.zzeih;
        zzdzw.addListener(zzdrf, zzdzv);
        zzdzk.zza(zzdqw, new zzdri(this, zzdqw), zzdzv);
        return zzdqw;
    }

    public final <O2> zzdrb<O2> zzb(zzdqu<O, O2> zzdqu) {
        return zza(new zzdre(zzdqu));
    }

    public final <O2> zzdrb<O2> zze(zzdzw<O2> zzdzw) {
        return zza(new zzdrd(zzdzw), zzazp.zzeih);
    }

    public final zzdrb<O> zzgu(String str) {
        return new zzdrb<>(this.zzhpy, this.zzhpu, str, this.zzhpz, this.zzhpx, this.zzhqa);
    }

    public final zzdrb<O> zzv(E e) {
        return this.zzhpy.zza(e, zzaxj());
    }

    private final <O2> zzdrb<O2> zza(zzdyu<O, O2> zzdyu, Executor executor) {
        return new zzdrb<>(this.zzhpy, this.zzhpu, this.zzhpv, this.zzhpz, this.zzhpx, zzdzk.zzb(this.zzhqa, zzdyu, executor));
    }

    public final <T extends Throwable> zzdrb<O> zza(Class<T> cls, zzdqu<T, O> zzdqu) {
        return zza(cls, new zzdrg(zzdqu));
    }

    public final <T extends Throwable> zzdrb<O> zza(Class<T> cls, zzdyu<T, O> zzdyu) {
        zzdqv zzdqv = this.zzhpy;
        return new zzdrb<>(zzdqv, this.zzhpu, this.zzhpv, this.zzhpz, this.zzhpx, zzdzk.zzb(this.zzhqa, cls, zzdyu, zzdqv.zzghl));
    }

    public final zzdrb<O> zza(long j, TimeUnit timeUnit) {
        zzdqv zzdqv = this.zzhpy;
        return new zzdrb<>(zzdqv, this.zzhpu, this.zzhpv, this.zzhpz, this.zzhpx, zzdzk.zza(this.zzhqa, j, timeUnit, zzdqv.zzfth));
    }
}
