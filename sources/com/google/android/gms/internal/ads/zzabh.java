package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzabh extends zzaba<String> {
    zzabh(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ String zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (String) zzsb();
        }
        String valueOf2 = String.valueOf(getKey());
        return bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ String zzb(JSONObject jSONObject) {
        return jSONObject.optString(getKey(), (String) zzsb());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.content.SharedPreferences$Editor, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, String str) {
        editor.putString(getKey(), str);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ String zza(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(getKey(), (String) zzsb());
    }
}
