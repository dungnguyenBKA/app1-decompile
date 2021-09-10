package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcuc implements zzdyu {
    private final zzctx zzguq;
    private final zzcgk zzgur;

    zzcuc(zzctx zzctx, zzcgk zzcgk) {
        this.zzguq = zzctx;
        this.zzgur = zzcgk;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzguq.zza(this.zzgur, (JSONObject) obj);
    }
}
