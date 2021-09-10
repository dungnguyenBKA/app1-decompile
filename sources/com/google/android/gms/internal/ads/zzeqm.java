package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;

public final class zzeqm<T> {
    private final List<zzeqo<T>> zzjcd;
    private final List<zzeqo<Collection<T>>> zzjce;

    private zzeqm(int i, int i2) {
        this.zzjcd = zzeqa.zzid(i);
        this.zzjce = zzeqa.zzid(i2);
    }

    public final zzeqm<T> zzaw(zzeqo<? extends T> zzeqo) {
        this.zzjcd.add(zzeqo);
        return this;
    }

    public final zzeqm<T> zzax(zzeqo<? extends Collection<? extends T>> zzeqo) {
        this.zzjce.add(zzeqo);
        return this;
    }

    public final zzeqk<T> zzbmo() {
        return new zzeqk<>(this.zzjcd, this.zzjce);
    }
}
