package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

public abstract class zzckv {
    private final Executor executor;
    private final String zzdat = zzadf.zzddh.get();
    private final boolean zzdbd;
    protected final zzazo zzegt;
    protected final Map<String, String> zzgls = new HashMap();
    private final zzdsj zzgmc;

    protected zzckv(Executor executor2, zzazo zzazo, zzdsj zzdsj) {
        boolean z;
        this.executor = executor2;
        this.zzegt = zzazo;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue()) {
            z = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrn)).booleanValue();
        } else {
            z = ((double) zzwr.zzqu().nextFloat()) <= zzadf.zzddg.get().doubleValue();
        }
        this.zzdbd = z;
        this.zzgmc = zzdsj;
    }

    /* access modifiers changed from: protected */
    public abstract void zzaqw();

    public final void zzo(Map<String, String> map) {
        String zzp = zzp(map);
        if (this.zzdbd) {
            this.executor.execute(new zzcky(this, zzp));
        }
        zzd.zzeb(zzp);
    }

    /* access modifiers changed from: protected */
    public final String zzp(Map<String, String> map) {
        return this.zzgmc.zzr(map);
    }
}
