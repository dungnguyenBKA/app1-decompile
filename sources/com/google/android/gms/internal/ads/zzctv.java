package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzctv implements zzcro<zzdog, zzctd> {
    private final zzcin zzgmw;

    public zzctv(zzcin zzcin) {
        this.zzgmw = zzcin;
    }

    @Override // com.google.android.gms.internal.ads.zzcro
    public final zzcrl<zzdog, zzctd> zzf(String str, JSONObject jSONObject) {
        zzdog zzd = this.zzgmw.zzd(str, jSONObject);
        if (zzd == null) {
            return null;
        }
        return new zzcrl<>(zzd, new zzctd(), str);
    }
}
