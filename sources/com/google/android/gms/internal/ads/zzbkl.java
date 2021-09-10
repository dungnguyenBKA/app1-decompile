package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbkl implements Runnable {
    private final JSONObject zzfst;
    private final zzbkm zzftf;

    zzbkl(zzbkm zzbkm, JSONObject jSONObject) {
        this.zzftf = zzbkm;
        this.zzfst = jSONObject;
    }

    public final void run() {
        this.zzftf.zzi(this.zzfst);
    }
}
