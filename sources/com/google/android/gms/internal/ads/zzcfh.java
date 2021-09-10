package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcfh implements zzdyu {
    private final JSONObject zzfst;
    private final zzcfi zzgik;

    zzcfh(zzcfi zzcfi, JSONObject jSONObject) {
        this.zzgik = zzcfi;
        this.zzfst = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgik.zza(this.zzfst, (zzbeb) obj);
    }
}
