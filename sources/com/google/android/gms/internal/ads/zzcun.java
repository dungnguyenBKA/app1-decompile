package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class zzcun<AdT> implements zzcrj<AdT> {
    private static Bundle zzm(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    /* access modifiers changed from: protected */
    public abstract zzdzw<AdT> zza(zzdnp zzdnp, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        return !TextUtils.isEmpty(zzdmw.zzhjj.optString("pubid", ""));
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdT> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        String optString = zzdmw.zzhjj.optString("pubid", "");
        zzdnp zzdnp = zzdnl.zzhkr.zzfwy;
        zzdnr zzgs = new zzdnr().zzc(zzdnp).zzgs(optString);
        Bundle zzm = zzm(zzdnp.zzhkw.zzchu);
        Bundle zzm2 = zzm(zzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzm2.putInt("gw", 1);
        String optString2 = zzdmw.zzhjj.optString("mad_hac", null);
        if (optString2 != null) {
            zzm2.putString("mad_hac", optString2);
        }
        String optString3 = zzdmw.zzhjj.optString("adJson", null);
        if (optString3 != null) {
            zzm2.putString("_ad", optString3);
        }
        zzm2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzdmw.zzhjm.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzdmw.zzhjm.optString(next, null);
            if (next != null) {
                zzm2.putString(next, optString4);
            }
        }
        zzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzm2);
        zzvl zzvl = zzdnp.zzhkw;
        zzdnp zzavh = zzgs.zzh(new zzvl(zzvl.versionCode, zzvl.zzchn, zzm2, zzvl.zzcho, zzvl.zzchp, zzvl.zzchq, zzvl.zzado, zzvl.zzbni, zzvl.zzchr, zzvl.zzchs, zzvl.zznb, zzvl.zzcht, zzm, zzvl.zzchv, zzvl.zzchw, zzvl.zzchx, zzvl.zzchy, zzvl.zzchz, zzvl.zzcia, zzvl.zzadp, zzvl.zzadq, zzvl.zzcib, zzvl.zzcic)).zzavh();
        Bundle bundle = new Bundle();
        zzdnb zzdnb = zzdnl.zzhks.zzess;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzdnb.zzdms));
        bundle2.putInt("refresh_interval", zzdnb.zzhkg);
        bundle2.putString("gws_query_id", zzdnb.zzbvs);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzdnl.zzhkr.zzfwy.zzhkx;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzdmw.zzdlu);
        bundle3.putStringArrayList(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_CLICK_URLS, new ArrayList<>(zzdmw.zzdmp));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzdmw.zzdmq));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzdmw.zzdwa));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzdmw.zzhjc));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzdmw.zzdwn));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzdmw.zzdwo));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzdmw.zzhjb));
        bundle3.putString("transaction_id", zzdmw.zzdmf);
        bundle3.putString("valid_from_timestamp", zzdmw.zzdmg);
        bundle3.putBoolean("is_closable_area_disabled", zzdmw.zzbpm);
        if (zzdmw.zzdwm != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzdmw.zzdwm.zzdzc);
            bundle4.putString("rb_type", zzdmw.zzdwm.type);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zza(zzavh, bundle);
    }
}
