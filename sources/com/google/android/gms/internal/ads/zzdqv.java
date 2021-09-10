package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

public abstract class zzdqv<E> {
    private static final zzdzw<?> zzhps = zzdzk.zzag(null);
    private final ScheduledExecutorService zzfth;
    private final zzdzv zzghl;
    private final zzdrh<E> zzhpt;

    public zzdqv(zzdzv zzdzv, ScheduledExecutorService scheduledExecutorService, zzdrh<E> zzdrh) {
        this.zzghl = zzdzv;
        this.zzfth = scheduledExecutorService;
        this.zzhpt = zzdrh;
    }

    public final <I> zzdrb<I> zza(E e, zzdzw<I> zzdzw) {
        return new zzdrb<>(this, e, zzdzw, Collections.singletonList(zzdzw), zzdzw);
    }

    public final zzdqz zzt(E e) {
        return new zzdqz(this, e);
    }

    /* access modifiers changed from: protected */
    public abstract String zzu(E e);

    public final zzdqx zza(E e, zzdzw<?>... zzdzwArr) {
        return new zzdqx(this, e, Arrays.asList(zzdzwArr));
    }
}
