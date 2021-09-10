package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzdgk implements zzdfi<zzdgl> {
    private final Context context;
    private final Executor executor;
    private final zzayo zzbqd;
    private final ScheduledExecutorService zzfri;
    private final int zzgqc;
    private final zzayk zzhdv;

    public zzdgk(zzayk zzayk, int i, Context context2, zzayo zzayo, ScheduledExecutorService scheduledExecutorService, Executor executor2) {
        this.zzhdv = zzayk;
        this.zzgqc = i;
        this.context = context2;
        this.zzbqd = zzayo;
        this.zzfri = scheduledExecutorService;
        this.executor = executor2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgl> zzasy() {
        return zzdzf.zzg(zzdzk.zza(new zzdgn(this), this.executor)).zza(zzdgm.zzeaj, this.executor).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcpo)).longValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(Exception.class, new zzdgp(this), zzdzy.zzbaf());
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzatu() {
        return this.zzhdv.zzb(this.context, this.zzgqc);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdgl zzb(Exception exc) {
        this.zzbqd.zza(exc, "AttestationTokenSignal");
        return null;
    }
}
