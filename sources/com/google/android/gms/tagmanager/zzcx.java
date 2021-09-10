package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

public final class zzcx {
    static final Map<String, String> zza = new HashMap();

    public static void zzc(Context context, String str) {
        String str2;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "http://hostname/?".concat(valueOf);
        } else {
            str2 = new String("http://hostname/?");
        }
        String queryParameter = Uri.parse(str2).getQueryParameter("conv");
        if (queryParameter != null && queryParameter.length() > 0) {
            zza.put(queryParameter, str);
            SharedPreferences.Editor edit = context.getSharedPreferences("gtm_click_referrers", 0).edit();
            edit.putString(queryParameter, str);
            edit.apply();
        }
    }
}
