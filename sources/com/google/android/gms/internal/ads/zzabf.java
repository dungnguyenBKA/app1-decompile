package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzabf extends zzaba<Long> {
    zzabf(int i, String str, Long l) {
        super(1, str, l, null);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ Long zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Long) zzsb();
        }
        String valueOf2 = String.valueOf(getKey());
        return Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ Long zzb(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(getKey(), ((Long) zzsb()).longValue()));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.content.SharedPreferences$Editor, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Long l) {
        editor.putLong(getKey(), l.longValue());
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzaba
    public final /* synthetic */ Long zza(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(getKey(), ((Long) zzsb()).longValue()));
    }
}
