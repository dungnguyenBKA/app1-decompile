package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;

public final class zzcfn {
    private final Executor zzfsj;
    private final zzbxz zzgcm;
    private final zzbkm zzgim;

    zzcfn(Executor executor, zzbkm zzbkm, zzbxz zzbxz) {
        this.zzfsj = executor;
        this.zzgcm = zzbxz;
        this.zzgim = zzbkm;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(zzbeb zzbeb, Map map) {
        this.zzgim.disable();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzg(zzbeb zzbeb, Map map) {
        this.zzgim.enable();
    }

    public final void zzi(zzbeb zzbeb) {
        if (zzbeb != null) {
            this.zzgcm.zzv(zzbeb.getView());
            this.zzgcm.zza(new zzcfq(zzbeb), this.zzfsj);
            this.zzgcm.zza(new zzcfp(zzbeb), this.zzfsj);
            this.zzgcm.zza(this.zzgim, this.zzfsj);
            this.zzgim.zzd(zzbeb);
            zzbeb.zza("/trackActiveViewUnit", new zzcfs(this));
            zzbeb.zza("/untrackActiveViewUnit", new zzcfr(this));
        }
    }
}
