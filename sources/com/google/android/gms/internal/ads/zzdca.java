package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzdca implements Callable {
    private final zzdcb zzhbi;

    zzdca(zzdcb zzdcb) {
        this.zzhbi = zzdcb;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhbi.zzatd();
    }
}
