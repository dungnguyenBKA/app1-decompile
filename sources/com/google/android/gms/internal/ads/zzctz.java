package com.google.android.gms.internal.ads;

import org.json.JSONArray;

final /* synthetic */ class zzctz implements zzdyu {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzctx zzguq;

    zzctz(zzctx zzctx, zzdnl zzdnl, zzdmw zzdmw) {
        this.zzguq = zzctx;
        this.zzghw = zzdnl;
        this.zzfva = zzdmw;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzguq.zza(this.zzghw, this.zzfva, (JSONArray) obj);
    }
}
