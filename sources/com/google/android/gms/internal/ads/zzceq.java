package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzceq implements Callable {
    private final zzdmw zzfva;
    private final zzcen zzgho;
    private final zzdnl zzghw;
    private final JSONObject zzghx;

    zzceq(zzcen zzcen, zzdnl zzdnl, zzdmw zzdmw, JSONObject jSONObject) {
        this.zzgho = zzcen;
        this.zzghw = zzdnl;
        this.zzfva = zzdmw;
        this.zzghx = jSONObject;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdnl zzdnl = this.zzghw;
        zzdmw zzdmw = this.zzfva;
        JSONObject jSONObject = this.zzghx;
        zzccd zzccd = new zzccd();
        zzccd.zzdz(jSONObject.optInt(ReportDBAdapter.ReportColumns.COLUMN_TEMPATE_ID, -1));
        zzccd.zzfx(jSONObject.optString("custom_template_id"));
        JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
        zzccd.zzfy(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
        zzdnp zzdnp = zzdnl.zzhkr.zzfwy;
        if (zzdnp.zzhky.contains(Integer.toString(zzccd.zzanu()))) {
            if (zzccd.zzanu() == 3) {
                if (zzccd.getCustomTemplateId() == null) {
                    throw new zzcva(zzdom.INTERNAL_ERROR, "No custom template id for custom template ad response.");
                } else if (!zzdnp.zzhkz.contains(zzccd.getCustomTemplateId())) {
                    throw new zzcva(zzdom.INTERNAL_ERROR, "Unexpected custom template id in the response.");
                }
            }
            zzccd.setStarRating(jSONObject.optDouble("rating", -1.0d));
            String optString = jSONObject.optString("headline", null);
            if (zzdmw.zzdxt) {
                zzr.zzkr();
                String zzzb = zzj.zzzb();
                optString = ic.e(ic.m(optString, ic.m(zzzb, 3)), zzzb, " : ", optString);
            }
            zzccd.zzn("headline", optString);
            zzccd.zzn("body", jSONObject.optString("body", null));
            zzccd.zzn("call_to_action", jSONObject.optString("call_to_action", null));
            zzccd.zzn("store", jSONObject.optString("store", null));
            zzccd.zzn("price", jSONObject.optString("price", null));
            zzccd.zzn(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, jSONObject.optString(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, null));
            return zzccd;
        }
        throw new zzcva(zzdom.INTERNAL_ERROR, ic.C(32, "Invalid template ID: ", zzccd.zzanu()));
    }
}
