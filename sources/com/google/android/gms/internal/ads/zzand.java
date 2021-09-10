package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzand {
    private final long zzdmn;
    public final List<zzana> zzdmo;
    private final List<String> zzdmp;
    private final List<String> zzdmq;
    private final List<String> zzdmr;
    private final List<String> zzdms;
    private final List<String> zzdmt;
    private final boolean zzdmu;
    private final String zzdmv;
    private final long zzdmw;
    private final String zzdmx;
    private final int zzdmy;
    private final int zzdmz;
    private final long zzdna;
    private final boolean zzdnb;
    private final boolean zzdnc;
    private final boolean zzdnd;
    private final boolean zzdne;
    private int zzdnf;
    private int zzdng;
    private boolean zzdnh;

    public zzand(JSONObject jSONObject) {
        if (zzazk.isLoggable(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzd.zzeb(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                zzana zzana = new zzana(jSONArray.getJSONObject(i2));
                boolean z = true;
                if ("banner".equalsIgnoreCase(zzana.zzdmm)) {
                    this.zzdnh = true;
                }
                arrayList.add(zzana);
                if (i < 0) {
                    Iterator<String> it = zzana.zzdlt.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        i = i2;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        this.zzdnf = i;
        this.zzdng = jSONArray.length();
        this.zzdmo = Collections.unmodifiableList(arrayList);
        this.zzdmv = jSONObject.optString("qdata");
        this.zzdmz = jSONObject.optInt("fs_model_type", -1);
        long j = -1;
        this.zzdna = jSONObject.optLong("timeout_ms", -1);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            this.zzdmn = optJSONObject.optLong("ad_network_timeout_millis", -1);
            zzr.zzlj();
            this.zzdmp = zzanc.zza(optJSONObject, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_CLICK_URLS);
            zzr.zzlj();
            this.zzdmq = zzanc.zza(optJSONObject, "imp_urls");
            zzr.zzlj();
            this.zzdmr = zzanc.zza(optJSONObject, "downloaded_imp_urls");
            zzr.zzlj();
            this.zzdms = zzanc.zza(optJSONObject, "nofill_urls");
            zzr.zzlj();
            this.zzdmt = zzanc.zza(optJSONObject, "remote_ping_urls");
            this.zzdmu = optJSONObject.optBoolean("render_in_browser", false);
            long optLong = optJSONObject.optLong("refresh", -1);
            this.zzdmw = optLong > 0 ? 1000 * optLong : j;
            zzavj zza = zzavj.zza(optJSONObject.optJSONArray("rewards"));
            if (zza == null) {
                this.zzdmx = null;
                this.zzdmy = 0;
            } else {
                this.zzdmx = zza.type;
                this.zzdmy = zza.zzdzc;
            }
            this.zzdnb = optJSONObject.optBoolean("use_displayed_impression", false);
            this.zzdnc = optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            this.zzdnd = optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            this.zzdne = optJSONObject.optBoolean("allow_custom_click_gesture", false);
            return;
        }
        this.zzdmn = -1;
        this.zzdmp = null;
        this.zzdmq = null;
        this.zzdmr = null;
        this.zzdms = null;
        this.zzdmt = null;
        this.zzdmw = -1;
        this.zzdmx = null;
        this.zzdmy = 0;
        this.zzdnb = false;
        this.zzdmu = false;
        this.zzdnc = false;
        this.zzdnd = false;
        this.zzdne = false;
    }
}
