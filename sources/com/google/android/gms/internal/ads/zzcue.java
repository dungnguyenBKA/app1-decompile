package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcue implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzctx zzguq;
    private final zzdnl zzgut;
    private final zzdmw zzguu;
    private final JSONObject zzguv;

    zzcue(zzctx zzctx, zzdzw zzdzw, zzdzw zzdzw2, zzdnl zzdnl, zzdmw zzdmw, JSONObject jSONObject) {
        this.zzguq = zzctx;
        this.zzfym = zzdzw;
        this.zzfwq = zzdzw2;
        this.zzgut = zzdnl;
        this.zzguu = zzdmw;
        this.zzguv = jSONObject;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzguq.zza(this.zzfym, this.zzfwq, this.zzgut, this.zzguu, this.zzguv);
    }
}
