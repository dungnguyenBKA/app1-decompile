package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbfk {
    private static final Pattern zzeul = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);
    private static final Pattern zzeum = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    public static String zzaek() {
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcns);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ClientCookie.VERSION_ATTR, str);
            jSONObject.put("sdk", "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            StringBuilder r = ic.r("<script>", "Object.defineProperty(window,'MRAID_ENV',{get:function(){return ");
            r.append(jSONObject.toString());
            r.append("}});");
            r.append("</script>");
            return r.toString();
        } catch (JSONException e) {
            zzazk.zzd("Unable to build MRAID_ENV", e);
            return null;
        }
    }

    public static String zzf(String str, String... strArr) {
        if (strArr.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = zzeul.matcher(str);
        int i = 0;
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            int length = strArr.length;
            while (i < length) {
                String str2 = strArr[i];
                if (str2 != null) {
                    sb.append(str2);
                }
                i++;
            }
            sb.append(str.substring(end));
        } else {
            if (!zzeum.matcher(str).find()) {
                int length2 = strArr.length;
                while (i < length2) {
                    String str3 = strArr[i];
                    if (str3 != null) {
                        sb.append(str3);
                    }
                    i++;
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
