package com.google.android.gms.internal.ads;

import com.google.ads.ADRequestList;

public final class zzbkv {
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzdnl zzeyz;

    public zzbkv(zzckn zzckn, zzdnl zzdnl, zzdrz zzdrz) {
        this.zzdic = zzdrz;
        this.zzdib = zzckn;
        this.zzeyz = zzdnl;
    }

    private static String zzdw(int i) {
        int i2 = zzbky.zzftz[i - 1];
        if (i2 == 1) {
            return "bb";
        }
        if (i2 == 2) {
            return ADRequestList.ORDER_H;
        }
        if (i2 == 3) {
            return "cc";
        }
        if (i2 != 4) {
            return i2 != 5 ? "u" : "cb";
        }
        return "ac";
    }

    public final void zzb(long j, int i) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            this.zzdic.zzb(zzdsa.zzgx("ad_closed").zzb(this.zzeyz.zzhks.zzess).zzu("show_time", String.valueOf(j)).zzu("ad_format", "app_open_ad").zzu("acr", zzdw(i)));
        } else {
            this.zzdib.zzaqr().zza(this.zzeyz.zzhks.zzess).zzr("action", "ad_closed").zzr("show_time", String.valueOf(j)).zzr("ad_format", "app_open_ad").zzr("acr", zzdw(i)).zzaqt();
        }
    }
}
