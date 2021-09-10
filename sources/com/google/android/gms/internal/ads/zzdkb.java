package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

final class zzdkb implements zzdzl<Void> {
    zzdkb(zzdjw zzdjw) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl Void r1) {
        zzd.zzeb("Notification of cache hit successful.");
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzd.zzeb("Notification of cache hit failed.");
    }
}
