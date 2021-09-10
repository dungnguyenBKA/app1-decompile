package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdtn implements Callable {
    private final zzdto zzhta;

    zzdtn(zzdto zzdto) {
        this.zzhta = zzdto;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhta.zzaxy();
    }
}
