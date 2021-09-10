package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

final /* synthetic */ class zzczn implements Callable {
    private final zzczo zzgzl;
    private final List zzgzm;
    private final zv zzgzn;

    zzczn(zzczo zzczo, List list, zv zvVar) {
        this.zzgzl = zzczo;
        this.zzgzm = list;
        this.zzgzn = zvVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgzl.zza(this.zzgzm, this.zzgzn);
    }
}
