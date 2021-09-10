package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.vungle.warren.model.ReportDBAdapter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class zzdar implements zzdfj<Bundle> {
    private final zzdnp zzfwy;

    public zzdar(zzdnp zzdnp) {
        n.i(zzdnp, "the targeting must not be null");
        this.zzfwy = zzdnp;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzvl zzvl = this.zzfwy.zzhkw;
        bundle2.putInt("http_timeout_millis", zzvl.zzcic);
        bundle2.putString("slotname", this.zzfwy.zzhkx);
        boolean z = true;
        int i = zzdaq.zzgju[this.zzfwy.zzhle.zzhki - 1];
        if (i == 1) {
            bundle2.putBoolean("is_new_rewarded", true);
        } else if (i == 2) {
            bundle2.putBoolean("is_rewarded_interstitial", true);
        }
        zzdnz.zza(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzvl.zzchn)), zzvl.zzchn != -1);
        zzdnz.zza(bundle2, "extras", zzvl.extras);
        zzdnz.zza(bundle2, "cust_gender", Integer.valueOf(zzvl.zzcho), zzvl.zzcho != -1);
        zzdnz.zza(bundle2, "kw", zzvl.zzchp);
        zzdnz.zza(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzvl.zzado), zzvl.zzado != -1);
        boolean z2 = zzvl.zzchq;
        if (z2) {
            bundle2.putBoolean("test_request", z2);
        }
        zzdnz.zza(bundle2, "d_imp_hdr", (Integer) 1, zzvl.versionCode >= 2 && zzvl.zzbni);
        String str = zzvl.zzchr;
        zzdnz.zza(bundle2, "ppid", str, zzvl.versionCode >= 2 && !TextUtils.isEmpty(str));
        Location location = zzvl.zznb;
        if (location != null) {
            Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
            Long valueOf2 = Long.valueOf(location.getTime() * 1000);
            Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
            Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", valueOf.floatValue());
            bundle3.putLong("lat", valueOf3.longValue());
            bundle3.putLong("long", valueOf4.longValue());
            bundle3.putLong("time", valueOf2.longValue());
            bundle2.putBundle("uule", bundle3);
        }
        zzdnz.zza(bundle2, ReportDBAdapter.ReportColumns.COLUMN_URL, zzvl.zzcht);
        zzdnz.zza(bundle2, "neighboring_content_urls", zzvl.zzcib);
        zzdnz.zza(bundle2, "custom_targeting", zzvl.zzchv);
        zzdnz.zza(bundle2, "category_exclusions", zzvl.zzchw);
        zzdnz.zza(bundle2, "request_agent", zzvl.zzchx);
        zzdnz.zza(bundle2, "request_pkg", zzvl.zzchy);
        zzdnz.zza(bundle2, "is_designed_for_families", Boolean.valueOf(zzvl.zzchz), zzvl.versionCode >= 7);
        if (zzvl.versionCode >= 8) {
            Integer valueOf5 = Integer.valueOf(zzvl.zzadp);
            if (zzvl.zzadp == -1) {
                z = false;
            }
            zzdnz.zza(bundle2, "tag_for_under_age_of_consent", valueOf5, z);
            zzdnz.zza(bundle2, "max_ad_content_rating", zzvl.zzadq);
        }
    }
}
