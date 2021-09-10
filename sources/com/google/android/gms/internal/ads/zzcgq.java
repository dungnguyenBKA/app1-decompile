package com.google.android.gms.internal.ads;

import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzcgq implements zzdzl<zzbeb> {
    private final /* synthetic */ String zzgjd;
    private final /* synthetic */ Map zzgje;

    zzcgq(zzcgk zzcgk, String str, Map map) {
        this.zzgjd = str;
        this.zzgje = map;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbeb) {
        zzbeb.zza(this.zzgjd, this.zzgje);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
