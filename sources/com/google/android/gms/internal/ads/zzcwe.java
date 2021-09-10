package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzcwe implements zzcro<zzapk, zzctd> {
    private final zzcxh zzgwe;

    public zzcwe(zzcxh zzcxh) {
        this.zzgwe = zzcxh;
    }

    @Override // com.google.android.gms.internal.ads.zzcro
    public final zzcrl<zzapk, zzctd> zzf(String str, JSONObject jSONObject) {
        zzapk zzgo = this.zzgwe.zzgo(str);
        if (zzgo == null) {
            return null;
        }
        return new zzcrl<>(zzgo, new zzctd(), str);
    }
}
