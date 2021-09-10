package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzain implements zzaif<Object> {
    private final Object lock = new Object();
    @GuardedBy("lock")
    private final Map<String, zzaip> zzdil = new HashMap();

    public final void zza(String str, zzaip zzaip) {
        synchronized (this.lock) {
            this.zzdil.put(str, zzaip);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get(FacebookAdapter.KEY_ID);
        String str3 = map.get("fail");
        String str4 = map.get("fail_reason");
        String str5 = map.get("fail_stack");
        String str6 = map.get("result");
        if (TextUtils.isEmpty(str5)) {
            str4 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str5)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str5);
            str = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.lock) {
            zzaip remove = this.zzdil.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzazk.zzex(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str4);
                String valueOf4 = String.valueOf(str);
                remove.onFailure(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.zzc(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zzd.zzyg()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zzd.zzeb(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.zzc(jSONObject);
                } catch (JSONException e) {
                    remove.onFailure(e.getMessage());
                }
            }
        }
    }

    public final <EngineT extends zzakw> zzdzw<JSONObject> zza(EngineT enginet, String str, JSONObject jSONObject) {
        zzbaa zzbaa = new zzbaa();
        zzr.zzkr();
        String zzyy = zzj.zzyy();
        zza(zzyy, new zzaim(this, zzbaa));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(FacebookAdapter.KEY_ID, zzyy);
            jSONObject2.put("args", jSONObject);
            enginet.zzb(str, jSONObject2);
        } catch (Exception e) {
            zzbaa.setException(e);
        }
        return zzbaa;
    }
}
