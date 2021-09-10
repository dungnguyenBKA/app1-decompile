package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.warren.VungleApiClient;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Deprecated
public final class zzckl {
    private final zzayy zzebw;
    private ConcurrentHashMap<String, String> zzglq;

    public zzckl(zzckw zzckw, zzayy zzayy) {
        this.zzglq = new ConcurrentHashMap<>(zzckw.zzgls);
        this.zzebw = zzayy;
    }

    public final void zzc(zzdnl zzdnl) {
        if (zzdnl.zzhks.zzhkp.size() > 0) {
            switch (zzdnl.zzhks.zzhkp.get(0).zzhiy) {
                case 1:
                    this.zzglq.put("ad_format", "banner");
                    break;
                case 2:
                    this.zzglq.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.zzglq.put("ad_format", "native_express");
                    break;
                case 4:
                    this.zzglq.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.zzglq.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.zzglq.put("ad_format", "app_open_ad");
                    this.zzglq.put("as", this.zzebw.zzyf() ? "1" : "0");
                    break;
                default:
                    this.zzglq.put("ad_format", VungleApiClient.ConnectionTypeDetail.UNKNOWN);
                    break;
            }
        }
        if (!TextUtils.isEmpty(zzdnl.zzhks.zzess.zzbvs)) {
            this.zzglq.put("gqi", zzdnl.zzhks.zzess.zzbvs);
        }
    }

    public final void zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zzglq.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zzglq.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> zzso() {
        return this.zzglq;
    }
}
