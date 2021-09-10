package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdgq implements zzdfi<zzdgr> {
    Context context;
    private zzdzv zzghl;
    zztj zzhei;

    public zzdgq(zztj zztj, zzdzv zzdzv, Context context2) {
        this.zzhei = zztj;
        this.zzghl = zzdzv;
        this.context = context2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgr> zzasy() {
        return this.zzghl.zze(new zzdgt(this));
    }
}
