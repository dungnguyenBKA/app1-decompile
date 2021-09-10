package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzayp {
    private String zzduz;
    private final long zzecl;
    private final List<String> zzecm = new ArrayList();
    private final List<String> zzecn = new ArrayList();
    private final Map<String, zzand> zzeco = new HashMap();
    private String zzecp;
    private JSONObject zzecq;
    private boolean zzecr;

    public zzayp(String str, long j) {
        JSONObject optJSONObject;
        this.zzecr = false;
        this.zzduz = str;
        this.zzecl = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.zzecq = jSONObject;
                if (jSONObject.optInt(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, -1) != 1) {
                    this.zzecr = false;
                    zzazk.zzex("App settings could not be fetched successfully.");
                    return;
                }
                this.zzecr = true;
                this.zzecp = this.zzecq.optString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID);
                JSONArray optJSONArray = this.zzecq.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString)) {
                            if (!TextUtils.isEmpty(optString2)) {
                                if ("interstitial".equalsIgnoreCase(optString)) {
                                    this.zzecn.add(optString2);
                                } else if (("rewarded".equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject = jSONObject2.optJSONObject("mediation_config")) != null) {
                                    this.zzeco.put(optString2, new zzand(optJSONObject));
                                }
                            }
                        }
                    }
                }
                JSONArray optJSONArray2 = this.zzecq.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        this.zzecm.add(optJSONArray2.optString(i2));
                    }
                }
            } catch (JSONException e) {
                zzazk.zzd("Exception occurred while processing app setting json", e);
                zzr.zzkv().zza(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    public final long zzxw() {
        return this.zzecl;
    }

    public final boolean zzxx() {
        return this.zzecr;
    }

    public final String zzxy() {
        return this.zzduz;
    }

    public final String zzxz() {
        return this.zzecp;
    }

    public final Map<String, zzand> zzya() {
        return this.zzeco;
    }

    public final JSONObject zzyb() {
        return this.zzecq;
    }
}
