package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbdm implements zzaif<zzbbo> {
    private static Integer zza(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 39);
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzazk.zzex(sb.toString());
            return null;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbbo zzbbo, Map map) {
        zzbdd zzbdd;
        zzbbo zzbbo2 = zzbbo;
        if (zzazk.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject);
            StringBuilder sb = new StringBuilder(valueOf.length() + 15);
            sb.append("Precache GMSG: ");
            sb.append(valueOf);
            zzazk.zzdy(sb.toString());
        }
        zzr.zzln();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            Integer zza = zza(map, "periodicReportIntervalMs");
            if (str != null) {
                String[] strArr = {str};
                String str2 = (String) map.get("demuxed");
                if (str2 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str2);
                        String[] strArr2 = new String[jSONArray.length()];
                        for (int i = 0; i < jSONArray.length(); i++) {
                            strArr2[i] = jSONArray.getString(i);
                        }
                        strArr = strArr2;
                    } catch (JSONException unused) {
                        zzazk.zzex(str2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(str2) : new String("Malformed demuxed URL list for precache: "));
                        strArr = null;
                    }
                }
                if (strArr == null) {
                    strArr = new String[]{str};
                }
                if (zzbde.zzd(zzbbo2) != null) {
                    zzazk.zzex("Precache task is already running.");
                    return;
                } else if (zzbbo2.zzabf() == null) {
                    zzazk.zzex("Precache requires a dependency provider.");
                    return;
                } else {
                    zzbbl zzbbl = new zzbbl((String) map.get("flags"));
                    Integer zza2 = zza(map, "player");
                    if (zza2 == null) {
                        zza2 = 0;
                    }
                    if (zza != null) {
                        zzbbo2.zzdp(zza.intValue());
                    }
                    zzbdd = zzbbo2.zzabf().zzbok.zza(zzbbo2, zza2.intValue(), null, zzbbl);
                    new zzbdc(zzbbo2, zzbdd, str, strArr).zzye();
                }
            } else {
                zzbdc zzd = zzbde.zzd(zzbbo2);
                if (zzd != null) {
                    zzbdd = zzd.zzepm;
                } else {
                    zzazk.zzex("Precache must specify a source.");
                    return;
                }
            }
            Integer zza3 = zza(map, "minBufferMs");
            if (zza3 != null) {
                zzbdd.zzdk(zza3.intValue());
            }
            Integer zza4 = zza(map, "maxBufferMs");
            if (zza4 != null) {
                zzbdd.zzdl(zza4.intValue());
            }
            Integer zza5 = zza(map, "bufferForPlaybackMs");
            if (zza5 != null) {
                zzbdd.zzdm(zza5.intValue());
            }
            Integer zza6 = zza(map, "bufferForPlaybackAfterRebufferMs");
            if (zza6 != null) {
                zzbdd.zzdn(zza6.intValue());
            }
        } else if (!zzbde.zzc(zzbbo2)) {
            zzazk.zzex("Precache abort but no precache task running.");
        }
    }
}
