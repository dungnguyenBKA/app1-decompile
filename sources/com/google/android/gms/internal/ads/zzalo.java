package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;

/* access modifiers changed from: package-private */
public final class zzalo implements zzbae<zzalx> {
    private final /* synthetic */ zzalm zzdkf;

    zzalo(zzalm zzalm) {
        this.zzdkf = zzalm;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbae
    public final /* synthetic */ void zzg(zzalx zzalx) {
        zzd.zzeb("Releasing engine reference.");
        this.zzdkf.zzdkd.zzun();
    }
}
