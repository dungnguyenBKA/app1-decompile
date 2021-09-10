package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzabd extends zzaba<Boolean> {
    zzabd(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ Boolean zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Boolean) zzsb();
        }
        String valueOf2 = String.valueOf(getKey());
        return Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ Boolean zzb(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(getKey(), ((Boolean) zzsb()).booleanValue()));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.content.SharedPreferences$Editor, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(getKey(), bool.booleanValue());
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ Boolean zza(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(getKey(), ((Boolean) zzsb()).booleanValue()));
    }
}
