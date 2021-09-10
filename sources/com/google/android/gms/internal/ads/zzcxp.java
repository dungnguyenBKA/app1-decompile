package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzcxp extends zzapo {
    private final String zzdit;
    private final zzapk zzgxl;
    private zzbaa<JSONObject> zzgxm;
    private final JSONObject zzgxn;
    @GuardedBy("this")
    private boolean zzgxo = false;

    public zzcxp(String str, zzapk zzapk, zzbaa<JSONObject> zzbaa) {
        JSONObject jSONObject = new JSONObject();
        this.zzgxn = jSONObject;
        this.zzgxm = zzbaa;
        this.zzdit = str;
        this.zzgxl = zzapk;
        try {
            jSONObject.put("adapter_version", zzapk.zzvc().toString());
            jSONObject.put("sdk_version", zzapk.zzvd().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final synchronized void onFailure(String str) {
        if (!this.zzgxo) {
            try {
                this.zzgxn.put("signal_error", str);
            } catch (JSONException unused) {
            }
            this.zzgxm.set(this.zzgxn);
            this.zzgxo = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final synchronized void zzdn(String str) {
        if (!this.zzgxo) {
            if (str == null) {
                onFailure("Adapter returned null signals");
                return;
            }
            try {
                this.zzgxn.put("signals", str);
            } catch (JSONException unused) {
            }
            this.zzgxm.set(this.zzgxn);
            this.zzgxo = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final synchronized void zzh(zzvg zzvg) {
        if (!this.zzgxo) {
            try {
                this.zzgxn.put("signal_error", zzvg.zzchg);
            } catch (JSONException unused) {
            }
            this.zzgxm.set(this.zzgxn);
            this.zzgxo = true;
        }
    }
}
