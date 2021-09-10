package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.ads.ADRequestList;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzbq;
import com.google.android.gms.ads.internal.util.zzd;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzahm {
    public static final zzaif<zzbeb> zzdhb = zzahp.zzdhv;
    public static final zzaif<zzbeb> zzdhc = zzaho.zzdhv;
    public static final zzaif<zzbeb> zzdhd = zzahr.zzdhv;
    public static final zzaif<zzbeb> zzdhe = zzahq.zzdhv;
    public static final zzaif<zzbeb> zzdhf = new zzahv();
    public static final zzaif<zzbeb> zzdhg = new zzahx();
    public static final zzaif<zzbeb> zzdhh = zzaht.zzdhv;
    public static final zzaif<Object> zzdhi = new zzahw();
    public static final zzaif<zzbeb> zzdhj = new zzahz();
    public static final zzaif<zzbeb> zzdhk = zzahs.zzdhv;
    public static final zzaif<zzbeb> zzdhl = new zzahy();
    public static final zzaif<zzbeb> zzdhm = new zzaib();
    public static final zzaif<zzbbo> zzdhn = new zzbda();
    public static final zzaif<zzbbo> zzdho = new zzbcz();
    public static final zzaif<zzbeb> zzdhp = new zzahn();
    public static final zzain zzdhq = new zzain();
    public static final zzaif<zzbeb> zzdhr = new zzaia();
    public static final zzaif<zzbeb> zzdhs = new zzaid();
    public static final zzaif<zzbeb> zzdht = new zzaic();
    public static final zzaif<zzbeb> zzdhu = new zzahu();

    public static <T extends zzbfd & zzbfm & zzbfo> String zza(T t, String str) {
        Uri parse = Uri.parse(str);
        try {
            zzei zzada = t.zzada();
            if (zzada != null && zzada.zzb(parse)) {
                parse = zzada.zza(parse, t.getContext(), t.getView(), t.zzabe());
            }
        } catch (zzeh unused) {
            String valueOf = String.valueOf(str);
            zzazk.zzex(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
        }
        return zzaxu.zzb(parse, t.getContext());
    }

    static final /* synthetic */ void zzb(zzbfd zzbfd, Map map) {
        PackageManager packageManager = zzbfd.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString(FacebookAdapter.KEY_ID);
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString(ADRequestList.ORDER_M);
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                zzazk.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                            }
                        }
                        boolean z = true;
                        if (intent == null) {
                            intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                        }
                        if (packageManager.resolveActivity(intent, 65536) == null) {
                            z = false;
                        }
                        try {
                            jSONObject.put(optString, z);
                        } catch (JSONException e2) {
                            zzazk.zzc("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        zzazk.zzc("Error parsing the intent data.", e3);
                    }
                }
                ((zzaki) zzbfd).zza("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((zzaki) zzbfd).zza("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((zzaki) zzbfd).zza("openableIntents", new JSONObject());
        }
    }

    static final /* synthetic */ void zzc(zzbfd zzbfd, Map map) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczw)).booleanValue()) {
            zzazk.zzex("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            zzazk.zzex("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        Boolean valueOf = Boolean.valueOf(zzbfd.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
        hashMap.put(str, valueOf);
        String valueOf2 = String.valueOf(valueOf);
        StringBuilder sb = new StringBuilder(valueOf2.length() + String.valueOf(str).length() + 13);
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(valueOf2);
        zzd.zzeb(sb.toString());
        ((zzaki) zzbfd).zza("openableApp", hashMap);
    }

    static final /* synthetic */ void zzd(zzbfd zzbfd, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            zzazk.zzex("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzbfd.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str2, valueOf);
            String valueOf2 = String.valueOf(valueOf);
            StringBuilder sb = new StringBuilder(valueOf2.length() + str2.length() + 14);
            sb.append("/canOpenURLs;");
            sb.append(str2);
            sb.append(";");
            sb.append(valueOf2);
            zzd.zzeb(sb.toString());
        }
        ((zzaki) zzbfd).zza("openableURLs", hashMap);
    }

    static final /* synthetic */ void zza(zzbfm zzbfm, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzei zzada = zzbfm.zzada();
            if (zzada != null) {
                zzada.zzca().zza(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException unused) {
            zzazk.zzex("Could not parse touch parameters from gmsg.");
        }
    }

    static final /* synthetic */ void zza(zzbfd zzbfd, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzazk.zzex("URL missing from httpTrack GMSG.");
        } else {
            new zzbq(zzbfd.getContext(), ((zzbfl) zzbfd).zzabj().zzbrp, str).zzye();
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: com.google.android.gms.internal.ads.zzbdu */
    /* JADX WARN: Multi-variable type inference failed */
    static final /* synthetic */ void zza(zzbdu zzbdu, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzazk.zzex("URL missing from click GMSG.");
            return;
        }
        new zzbq(((zzbfd) zzbdu).getContext(), ((zzbfl) zzbdu).zzabj().zzbrp, zza((zzbfd) zzbdu, str)).zzye();
    }
}
