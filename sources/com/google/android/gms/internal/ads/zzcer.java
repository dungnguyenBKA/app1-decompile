package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.ads.ADRequestList;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.analytics.AnalyticsEvent;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.http.protocol.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzcer {
    private final Context context;
    private final Executor executor;
    private final zzazn zzbpn;
    private final zzaeh zzdoe;
    private final zztu zzeqv;
    private final zzei zzesm;
    private final ScheduledExecutorService zzfri;
    private final zzcem zzghy;
    private final zzb zzghz;
    private final zzcfi zzgia;

    public zzcer(Context context2, zzcem zzcem, zzei zzei, zzazn zzazn, zzb zzb, zztu zztu, Executor executor2, zzdnp zzdnp, zzcfi zzcfi, ScheduledExecutorService scheduledExecutorService) {
        this.context = context2;
        this.zzghy = zzcem;
        this.zzesm = zzei;
        this.zzbpn = zzazn;
        this.zzghz = zzb;
        this.zzeqv = zztu;
        this.executor = executor2;
        this.zzdoe = zzdnp.zzdoe;
        this.zzgia = zzcfi;
        this.zzfri = scheduledExecutorService;
    }

    private final zzdzw<List<zzaed>> zza(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzdzk.zzag(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zza(jSONArray.optJSONObject(i), z));
        }
        return zzdzk.zzb(zzdzk.zzi(arrayList), zzceu.zzeaj, this.executor);
    }

    private static Integer zzf(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt(ADRequestList.ORDER_R), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static List<zzzu> zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject(AnalyticsEvent.Ad.mute);
        if (optJSONObject == null) {
            return zzdxd.zzazm();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzdxd.zzazm();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            zzzu zzl = zzl(optJSONArray.optJSONObject(i));
            if (zzl != null) {
                arrayList.add(zzl);
            }
        }
        return zzdxd.zzb(arrayList);
    }

    public static zzzu zzk(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject(AnalyticsEvent.Ad.mute);
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzl(optJSONObject);
    }

    private static zzzu zzl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new zzzu(optString, optString2);
    }

    public final zzdzw<zzaed> zzc(JSONObject jSONObject, String str) {
        return zza(jSONObject.optJSONObject(str), this.zzdoe.zzdft);
    }

    public final zzdzw<List<zzaed>> zzd(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        zzaeh zzaeh = this.zzdoe;
        return zza(optJSONArray, zzaeh.zzdft, zzaeh.zzbnu);
    }

    public final zzdzw<zzady> zze(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return zzdzk.zzag(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return zza(optJSONObject.optBoolean("require"), zzdzk.zzb(zza(optJSONArray, false, true), new zzcew(this, optJSONObject), this.executor), (Object) null);
    }

    public final zzdzw<zzbeb> zzm(JSONObject jSONObject) {
        JSONObject zza = zzbh.zza(jSONObject, "html_containers", "instream");
        if (zza == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject(Advertisement.KEY_VIDEO);
            if (optJSONObject == null) {
                return zzdzk.zzag(null);
            }
            if (TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
                zzazk.zzex("Required field 'vast_xml' is missing");
                return zzdzk.zzag(null);
            }
            return zza(zzdzk.zza(this.zzgia.zzn(optJSONObject), (long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcta)).intValue(), TimeUnit.SECONDS, this.zzfri), (Object) null);
        }
        zzdzw<zzbeb> zzo = this.zzgia.zzo(zza.optString("base_url"), zza.optString("html"));
        return zzdzk.zzb(zzo, new zzcey(zzo), zzazp.zzeih);
    }

    private final zzdzw<zzaed> zza(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzdzk.zzag(null);
        }
        String optString = jSONObject.optString(ReportDBAdapter.ReportColumns.COLUMN_URL);
        if (TextUtils.isEmpty(optString)) {
            return zzdzk.zzag(null);
        }
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        int optInt = jSONObject.optInt("width", -1);
        int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzdzk.zzag(new zzaed(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zza(jSONObject.optBoolean("require"), zzdzk.zzb(this.zzghy.zza(optString, optDouble, optBoolean), new zzcet(optString, optDouble, optInt, optInt2), this.executor), (Object) null);
    }

    private static <T> zzdzw<T> zza(zzdzw<T> zzdzw, T t) {
        return zzdzk.zzb(zzdzw, Exception.class, new zzcex(null), zzazp.zzeih);
    }

    private static <T> zzdzw<T> zza(boolean z, zzdzw<T> zzdzw, T t) {
        if (z) {
            return zzdzk.zzb(zzdzw, new zzcfa(zzdzw), zzazp.zzeih);
        }
        return zza(zzdzw, (Object) null);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(String str, Object obj) {
        zzr.zzks();
        zzbeb zza = zzbej.zza(this.context, zzbft.zzael(), "native-omid", false, false, this.zzesm, null, this.zzbpn, null, null, this.zzghz, this.zzeqv, null, null);
        zzazx zzk = zzazx.zzk(zza);
        zza.zzacx().zza(new zzcez(zzk));
        zza.loadData(str, "text/html", HTTP.UTF_8);
        return zzk;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzady zza(JSONObject jSONObject, List list) {
        Integer num = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer zzf = zzf(jSONObject, "bg_color");
        Integer zzf2 = zzf(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", AdError.NETWORK_ERROR_CODE);
        int optInt3 = jSONObject.optInt("presentation_ms", 4000);
        if (optInt > 0) {
            num = Integer.valueOf(optInt);
        }
        return new zzady(optString, list, zzf, zzf2, num, optInt3 + optInt2, this.zzdoe.zzbnv, optBoolean);
    }
}
