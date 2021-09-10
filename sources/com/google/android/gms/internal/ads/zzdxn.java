package com.google.android.gms.internal.ads;

import java.util.ListIterator;

final class zzdxn extends zzdyb<F, T> {
    private final /* synthetic */ zzdxk zzhyd;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdxn(zzdxk zzdxk, ListIterator listIterator) {
        super(listIterator);
        this.zzhyd = zzdxk;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxy
    public final T zzae(F f) {
        return (T) this.zzhyd.zzhyc.apply(f);
    }
}
