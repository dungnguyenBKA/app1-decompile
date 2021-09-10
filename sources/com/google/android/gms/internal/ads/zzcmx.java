package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzcmx {
    private final ScheduledExecutorService zzfri;
    private final zzdzv zzghl;
    private final zzepv<zzcol> zzgnt;
    private final zzcnn zzgod;

    public zzcmx(ScheduledExecutorService scheduledExecutorService, zzdzv zzdzv, zzcnn zzcnn, zzepv<zzcol> zzepv) {
        this.zzfri = scheduledExecutorService;
        this.zzghl = zzdzv;
        this.zzgod = zzcnn;
        this.zzgnt = zzepv;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzatq zzatq, int i, Throwable th) {
        return this.zzgnt.get().zzd(zzatq, i);
    }

    public final zzdzw<InputStream> zzg(zzatq zzatq) {
        zzdzw<InputStream> zzdzw;
        String str = zzatq.packageName;
        zzr.zzkr();
        if (zzj.zzek(str)) {
            zzdzw = zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR));
        } else {
            zzdzw = this.zzgod.zzj(zzatq);
        }
        int callingUid = Binder.getCallingUid();
        return zzdzf.zzg(zzdzw).zza((long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS, this.zzfri).zza(Throwable.class, new zzcna(this, zzatq, callingUid), this.zzghl);
    }
}
