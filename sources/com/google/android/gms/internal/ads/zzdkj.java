package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdkj implements zzdvz<zzcoc, zzdkl> {
    private final /* synthetic */ zzdkh zzhhr;

    zzdkj(zzdkh zzdkh) {
        this.zzhhr = zzdkh;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdvz
    @NullableDecl
    public final /* synthetic */ zzdkl apply(@NullableDecl zzcoc zzcoc) {
        zzazk.zzc("", zzcoc);
        zzd.zzeb("Failed to get a cache key, reverting to legacy flow.");
        zzdkh zzdkh = this.zzhhr;
        zzdkh.zzhhq = new zzdkl(null, zzdkh.zzaut(), null);
        return this.zzhhr.zzhhq;
    }
}
