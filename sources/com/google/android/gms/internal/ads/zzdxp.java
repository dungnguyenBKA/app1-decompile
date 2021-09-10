package com.google.android.gms.internal.ads;

import java.util.ListIterator;

final class zzdxp extends zzdyb<F, T> {
    private final /* synthetic */ zzdxm zzhye;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdxp(zzdxm zzdxm, ListIterator listIterator) {
        super(listIterator);
        this.zzhye = zzdxm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxy
    public final T zzae(F f) {
        return (T) this.zzhye.zzhyc.apply(f);
    }
}
