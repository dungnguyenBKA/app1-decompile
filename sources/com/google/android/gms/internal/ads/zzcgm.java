package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcgm implements zzdyu {
    private final String zzdjf;
    private final zzcgk zzgiv;
    private final JSONObject zzgiz;

    zzcgm(zzcgk zzcgk, String str, JSONObject jSONObject) {
        this.zzgiv = zzcgk;
        this.zzdjf = str;
        this.zzgiz = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgiv.zza(this.zzdjf, this.zzgiz, (zzbeb) obj);
    }
}
