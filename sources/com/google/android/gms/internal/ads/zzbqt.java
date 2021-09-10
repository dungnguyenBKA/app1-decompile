package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbqt implements Callable {
    private final zzbqu zzfyl;
    private final zzdzw zzfym;

    zzbqt(zzbqu zzbqu, zzdzw zzdzw) {
        this.zzfyl = zzbqu;
        this.zzfym = zzdzw;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzfyl.zzc(this.zzfym);
    }
}
