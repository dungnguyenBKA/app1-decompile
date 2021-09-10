package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final /* synthetic */ class zzakk {
    public static void zza(zzakl zzakl, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        zzakl.zzi(str, jSONObject.toString());
    }

    public static void zzb(zzakl zzakl, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzazk.zzdy(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzakl.zzcv(sb.toString());
    }

    public static void zza(zzakl zzakl, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 3);
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        zzakl.zzcv(sb.toString());
    }

    public static void zza(zzakl zzakl, String str, Map map) {
        try {
            zzakl.zza(str, zzr.zzkr().zzj(map));
        } catch (JSONException unused) {
            zzazk.zzex("Could not convert parameters to JSON.");
        }
    }
}
