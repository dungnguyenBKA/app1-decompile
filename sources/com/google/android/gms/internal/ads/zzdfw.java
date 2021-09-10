package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzdfw implements zzdfi<zzdfx> {
    private final Context context;
    private final Executor executor;
    private final ScheduledExecutorService zzfri;
    private final int zzgqc;
    private final zzayk zzhdv;

    public zzdfw(zzayk zzayk, Context context2, ScheduledExecutorService scheduledExecutorService, Executor executor2, int i) {
        this.zzhdv = zzayk;
        this.context = context2;
        this.zzfri = scheduledExecutorService;
        this.executor = executor2;
        this.zzgqc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfx> zzasy() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcpn)).booleanValue()) {
            return zzdzk.immediateFailedFuture(new Exception("Did not ad Ad ID into query param."));
        }
        return zzdzf.zzg(this.zzhdv.zza(this.context, this.zzgqc)).zza(zzdfz.zzeaj, this.executor).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcpo)).longValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(Throwable.class, new zzdfy(this), this.executor);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdfx zzf(Throwable th) {
        zzwr.zzqn();
        return new zzdfx(null, zzaza.zzbn(this.context));
    }
}
