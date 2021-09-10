package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdcu implements zzdfi<zzdcv> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdcu(Context context2, zzdzv zzdzv) {
        this.context = context2;
        this.zzghl = zzdzv;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdcv> zzasy() {
        return this.zzghl.zze(new zzdcx(this));
    }
}
