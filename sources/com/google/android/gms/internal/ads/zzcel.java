package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;

/* access modifiers changed from: package-private */
public final class zzcel implements zzdvz<zzz, Bitmap> {
    private final /* synthetic */ double zzghh;
    private final /* synthetic */ boolean zzghi;
    private final /* synthetic */ zzcem zzghj;

    zzcel(zzcem zzcem, double d, boolean z) {
        this.zzghj = zzcem;
        this.zzghh = d;
        this.zzghi = z;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdvz
    public final /* synthetic */ Bitmap apply(zzz zzz) {
        return this.zzghj.zza(zzz.data, this.zzghh, this.zzghi);
    }
}
