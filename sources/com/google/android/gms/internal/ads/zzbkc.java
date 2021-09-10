package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbkc implements Runnable {
    private final zzbeb zzeuk;
    private final JSONObject zzfst;

    zzbkc(zzbeb zzbeb, JSONObject jSONObject) {
        this.zzeuk = zzbeb;
        this.zzfst = jSONObject;
    }

    public final void run() {
        this.zzeuk.zzb("AFMA_updateActiveView", this.zzfst);
    }
}
