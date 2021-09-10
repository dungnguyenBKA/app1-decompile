package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdfd implements zzdfi<zzdfj<Bundle>> {
    private final Context zzaad;
    private final zzdzv zzghl;

    zzdfd(zzdzv zzdzv, Context context) {
        this.zzghl = zzdzv;
        this.zzaad = context;
    }

    public static Bundle zza(Context context, JSONArray jSONArray) {
        int i;
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            if (optInt == 0) {
                i = zzdfh.zzhdh;
            } else if (optInt == 1) {
                i = zzdfh.zzhdi;
            } else if (optInt != 2) {
                i = 0;
            } else {
                i = zzdfh.zzhdj;
            }
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i != 0) {
                String[] split = optString2.split("/");
                if (split.length > 2 || split.length == 0) {
                    obj = null;
                } else {
                    if (split.length == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str = split[0];
                    } else {
                        sharedPreferences = context.getSharedPreferences(split[0], 0);
                        str = split[1];
                    }
                    obj = sharedPreferences.getAll().get(str);
                }
                if (obj != null) {
                    int i3 = zzdfe.zzhdg[i - 1];
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 == 3 && (obj instanceof Boolean)) {
                                bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(optString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(optString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(optString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(optString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        return this.zzghl.zze(new zzdfc(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdfj zzatp() {
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcxu);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new zzdff(zza(this.zzaad, new JSONArray(str)));
        } catch (JSONException e) {
            zzazk.zzb("JSON parsing error", e);
            return null;
        }
    }
}
