package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.g;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.apache.http.client.methods.HttpHead;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzauc extends zzaue {
    private final Object lock = new Object();
    private final Context zzaad;
    private SharedPreferences zzdyx;
    private final zzamb<JSONObject, JSONObject> zzdyy;

    public zzauc(Context context, zzamb<JSONObject, JSONObject> zzamb) {
        this.zzaad = context.getApplicationContext();
        this.zzdyy = zzamb;
    }

    public static JSONObject zzw(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzazn.zzaab().zzbrp);
            jSONObject.put("mf", zzadi.zzddw.get());
            jSONObject.put("cl", "350251165");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", HttpHead.METHOD_NAME);
            jSONObject.put("admob_module_version", g.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.c(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", g.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Void zzf(JSONObject jSONObject) {
        zzabp.zza(this.zzaad, 1, jSONObject);
        this.zzdyx.edit().putLong("js_last_update", zzr.zzky().a()).apply();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaue
    public final zzdzw<Void> zzwt() {
        synchronized (this.lock) {
            if (this.zzdyx == null) {
                this.zzdyx = this.zzaad.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzr.zzky().a() - this.zzdyx.getLong("js_last_update", 0) < zzadi.zzddx.get().longValue()) {
            return zzdzk.zzag(null);
        }
        return zzdzk.zzb(this.zzdyy.zzh(zzw(this.zzaad)), new zzauf(this), zzazp.zzeih);
    }
}
