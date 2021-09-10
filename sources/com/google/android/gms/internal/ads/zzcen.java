package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

public final class zzcen {
    private final zzdzv zzghl;
    private final zzcer zzghm;
    private final zzcfb zzghn;

    public zzcen(zzdzv zzdzv, zzcer zzcer, zzcfb zzcfb) {
        this.zzghl = zzdzv;
        this.zzghm = zzcer;
        this.zzghn = zzcfb;
    }

    public final zzdzw<zzccd> zza(zzdnl zzdnl, zzdmw zzdmw, JSONObject jSONObject) {
        zzdzw zzb;
        zzdzw zze = this.zzghl.zze(new zzceq(this, zzdnl, zzdmw, jSONObject));
        zzdzw<List<zzaed>> zzd = this.zzghm.zzd(jSONObject, "images");
        zzdzw<zzaed> zzc = this.zzghm.zzc(jSONObject, "secondary_image");
        zzdzw<zzaed> zzc2 = this.zzghm.zzc(jSONObject, "app_icon");
        zzdzw<zzady> zze2 = this.zzghm.zze(jSONObject, "attribution");
        zzdzw<zzbeb> zzm = this.zzghm.zzm(jSONObject);
        zzcer zzcer = this.zzghm;
        if (!jSONObject.optBoolean("enable_omid")) {
            zzb = zzdzk.zzag(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzb = zzdzk.zzag(null);
            } else {
                String optString = optJSONObject.optString("omid_html");
                if (TextUtils.isEmpty(optString)) {
                    zzb = zzdzk.zzag(null);
                } else {
                    zzb = zzdzk.zzb(zzdzk.zzag(null), new zzcev(zzcer, optString), zzazp.zzeig);
                }
            }
        }
        zzdzw<List<zzcfg>> zzg = this.zzghn.zzg(jSONObject, "custom_assets");
        return zzdzk.zza(zze, zzd, zzc, zzc2, zze2, zzm, zzb, zzg).zzb(new zzcep(this, zze, zzd, zzc2, zzc, zze2, jSONObject, zzm, zzb, zzg), this.zzghl);
    }
}
