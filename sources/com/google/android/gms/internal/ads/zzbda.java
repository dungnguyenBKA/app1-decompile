package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.ads.ADRequestList;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbda implements zzaif<zzbbo> {
    private boolean zzepk;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            zzwr.zzqn();
            return zzaza.zze(context, Integer.parseInt(str2));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(str2.length() + String.valueOf(str).length() + 34);
            sb.append("Could not parse ");
            sb.append(str);
            sb.append(" in a video GMSG: ");
            sb.append(str2);
            zzazk.zzex(sb.toString());
            return i;
        }
    }

    private static Integer zza(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 41);
            sb.append("Video gmsg invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzazk.zzex(sb.toString());
            return null;
        }
    }

    private static void zza(zzbax zzbax, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbax.zzdk(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                zzazk.zzex(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbax.zzdl(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbax.zzdm(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbax.zzdn(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbax.zzdo(Integer.parseInt(str5));
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbbo zzbbo, Map map) {
        int i;
        zzbbo zzbbo2 = zzbbo;
        String str = (String) map.get("action");
        if (str == null) {
            zzazk.zzex("Action missing from video GMSG.");
            return;
        }
        if (zzazk.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(jSONObject2).length() + str.length() + 13);
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            zzazk.zzdy(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzazk.zzex("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzbbo2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException unused) {
                zzazk.zzex("Invalid color parameter in video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str)) {
                String str3 = (String) map.get("mimeTypes");
                if (str3 == null) {
                    zzazk.zzex("No MIME types specified for decoder properties inspection.");
                    zzbax.zza(zzbbo2, "missingMimeTypes");
                    return;
                }
                HashMap hashMap = new HashMap();
                String[] split = str3.split(",");
                for (String str4 : split) {
                    hashMap.put(str4, zzbx.zzep(str4.trim()));
                }
                zzbax.zza(zzbbo2, hashMap);
                return;
            }
            zzbbd zzabb = zzbbo2.zzabb();
            if (zzabb == null) {
                zzazk.zzex("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = zzbbo2.getContext();
                int zza = zza(context, map, "x", 0);
                int zza2 = zza(context, map, "y", 0);
                int zza3 = zza(context, map, "w", -1);
                int zza4 = zza(context, map, ADRequestList.ORDER_H, -1);
                int min = Math.min(zza3, zzbbo2.zzabl() - zza);
                int min2 = Math.min(zza4, zzbbo2.zzabk() - zza2);
                try {
                    i = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException unused2) {
                    i = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || zzabb.zzaav() != null) {
                    zzabb.zze(zza, zza2, min, min2);
                    return;
                }
                zzabb.zza(zza, zza2, min, min2, i, parseBoolean, new zzbbl((String) map.get("flags")));
                zzbax zzaav = zzabb.zzaav();
                if (zzaav != null) {
                    zza(zzaav, (Map<String, String>) map);
                    return;
                }
                return;
            }
            zzbev zzabc = zzbbo2.zzabc();
            if (zzabc != null) {
                if ("timeupdate".equals(str)) {
                    String str5 = (String) map.get("currentTime");
                    if (str5 == null) {
                        zzazk.zzex("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        zzabc.zze(Float.parseFloat(str5));
                        return;
                    } catch (NumberFormatException unused3) {
                        zzazk.zzex(str5.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str5) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if ("skip".equals(str)) {
                    zzabc.zzaej();
                    return;
                }
            }
            zzbax zzaav2 = zzabb.zzaav();
            if (zzaav2 == null) {
                zzbax.zza(zzbbo2);
            } else if ("click".equals(str)) {
                Context context2 = zzbbo2.getContext();
                int zza5 = zza(context2, map, "x", 0);
                int zza6 = zza(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) zza5, (float) zza6, 0);
                zzaav2.zze(obtain);
                obtain.recycle();
            } else if ("currentTime".equals(str)) {
                String str6 = (String) map.get("time");
                if (str6 == null) {
                    zzazk.zzex("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    zzaav2.seekTo((int) (Float.parseFloat(str6) * 1000.0f));
                } catch (NumberFormatException unused4) {
                    zzazk.zzex(str6.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(str6) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                zzaav2.setVisibility(4);
            } else if ("load".equals(str)) {
                zzaav2.zzhy();
            } else if ("loadControl".equals(str)) {
                zza(zzaav2, (Map<String, String>) map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    zzaav2.zzaap();
                } else {
                    zzaav2.zzaaq();
                }
            } else if ("pause".equals(str)) {
                zzaav2.pause();
            } else if ("play".equals(str)) {
                zzaav2.play();
            } else if ("show".equals(str)) {
                zzaav2.setVisibility(0);
            } else if ("src".equals(str)) {
                String str7 = (String) map.get("src");
                Integer zza7 = zza(map, "periodicReportIntervalMs");
                String[] strArr = {str7};
                String str8 = (String) map.get("demuxed");
                if (str8 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str8);
                        String[] strArr2 = new String[jSONArray.length()];
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            strArr2[i2] = jSONArray.getString(i2);
                        }
                        strArr = strArr2;
                    } catch (JSONException unused5) {
                        zzazk.zzex(str8.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(str8) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str7};
                    }
                }
                if (zza7 != null) {
                    zzbbo2.zzdp(zza7.intValue());
                }
                zzaav2.zzc(str7, strArr);
            } else if ("touchMove".equals(str)) {
                Context context3 = zzbbo2.getContext();
                zzaav2.zza((float) zza(context3, map, "dx", 0), (float) zza(context3, map, "dy", 0));
                if (!this.zzepk) {
                    zzbbo2.zzwc();
                    this.zzepk = true;
                }
            } else if ("volume".equals(str)) {
                String str9 = (String) map.get("volume");
                if (str9 == null) {
                    zzazk.zzex("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    zzaav2.setVolume(Float.parseFloat(str9));
                } catch (NumberFormatException unused6) {
                    zzazk.zzex(str9.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(str9) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            } else if ("watermark".equals(str)) {
                zzaav2.zzaar();
            } else {
                zzazk.zzex(str.length() != 0 ? "Unknown video action: ".concat(str) : new String("Unknown video action: "));
            }
        }
    }
}
