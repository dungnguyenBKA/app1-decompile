package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.VungleApiClient;
import java.util.HashMap;
import java.util.Map;

public final class zzdsa {
    private final HashMap<String, String> zzhrj = new HashMap<>();
    private final zzdsd zzhrk = new zzdsd(zzr.zzky());

    private zzdsa() {
    }

    public static zzdsa zzgx(String str) {
        zzdsa zzdsa = new zzdsa();
        zzdsa.zzhrj.put("action", str);
        return zzdsa;
    }

    public static zzdsa zzgy(String str) {
        zzdsa zzdsa = new zzdsa();
        zzdsa.zzu("request_id", str);
        return zzdsa;
    }

    public final zzdsa zza(zzdnl zzdnl, zzayy zzayy) {
        zzdnj zzdnj = zzdnl.zzhks;
        if (zzdnj == null) {
            return this;
        }
        zzdnb zzdnb = zzdnj.zzess;
        if (zzdnb != null) {
            zzb(zzdnb);
        }
        if (!zzdnj.zzhkp.isEmpty()) {
            switch (zzdnj.zzhkp.get(0).zzhiy) {
                case 1:
                    this.zzhrj.put("ad_format", "banner");
                    break;
                case 2:
                    this.zzhrj.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.zzhrj.put("ad_format", "native_express");
                    break;
                case 4:
                    this.zzhrj.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.zzhrj.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.zzhrj.put("ad_format", "app_open_ad");
                    if (zzayy != null) {
                        this.zzhrj.put("as", zzayy.zzyf() ? "1" : "0");
                        break;
                    }
                    break;
                default:
                    this.zzhrj.put("ad_format", VungleApiClient.ConnectionTypeDetail.UNKNOWN);
                    break;
            }
        }
        return this;
    }

    public final zzdsa zzb(zzdnb zzdnb) {
        if (!TextUtils.isEmpty(zzdnb.zzbvs)) {
            this.zzhrj.put("gqi", zzdnb.zzbvs);
        }
        return this;
    }

    public final zzdsa zzf(zzdmw zzdmw) {
        this.zzhrj.put("aai", zzdmw.zzdlu);
        return this;
    }

    public final zzdsa zzgz(String str) {
        this.zzhrk.zzha(str);
        return this;
    }

    public final Map<String, String> zzls() {
        HashMap hashMap = new HashMap(this.zzhrj);
        for (zzdsg zzdsg : this.zzhrk.zzaxl()) {
            hashMap.put(zzdsg.label, zzdsg.value);
        }
        return hashMap;
    }

    public final zzdsa zzq(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zzhrj.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zzhrj.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final zzdsa zzu(String str, String str2) {
        this.zzhrj.put(str, str2);
        return this;
    }

    public final zzdsa zzv(String str, String str2) {
        this.zzhrk.zzw(str, str2);
        return this;
    }
}
