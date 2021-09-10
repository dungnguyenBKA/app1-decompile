package com.google.android.gms.internal.ads;

import java.util.List;

public final class zzdhd implements zzdfi<zzdha> {
    List<String> zzduo;
    private zzdzv zzghl;
    zzabb zzher;

    public zzdhd(zzabb zzabb, zzdzv zzdzv, List<String> list) {
        this.zzher = zzabb;
        this.zzghl = zzdzv;
        this.zzduo = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdha> zzasy() {
        return this.zzghl.zze(new zzdhc(this));
    }
}
