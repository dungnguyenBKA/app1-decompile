package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzdgt implements Callable {
    private final zzdgq zzhek;

    zzdgt(zzdgq zzdgq) {
        this.zzhek = zzdgq;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdgq zzdgq = this.zzhek;
        return new zzdgr(zzdgq.zzhei.zzf(zzdgq.context));
    }
}
