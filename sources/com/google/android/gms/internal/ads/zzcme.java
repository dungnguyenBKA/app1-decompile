package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public final class zzcme {
    private final zzdzv zzghl;
    private final zzdzv zzgnr;
    private final zzcnj zzgns;
    private final zzepv<zzcol> zzgnt;

    public zzcme(zzdzv zzdzv, zzdzv zzdzv2, zzcnj zzcnj, zzepv<zzcol> zzepv) {
        this.zzgnr = zzdzv;
        this.zzghl = zzdzv2;
        this.zzgns = zzcnj;
        this.zzgnt = zzepv;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzatq zzatq, int i, zzcoc zzcoc) {
        return this.zzgnt.get().zzb(zzatq, i);
    }

    public final zzdzw<InputStream> zze(zzatq zzatq) {
        zzdzw zzdzw;
        String str = zzatq.packageName;
        zzr.zzkr();
        if (zzj.zzek(str)) {
            zzdzw = zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR));
        } else {
            zzdzw = zzdzk.zzb(this.zzgnr.zze(new zzcmd(this, zzatq)), ExecutionException.class, zzcmg.zzboq, this.zzghl);
        }
        return zzdzk.zzb(zzdzw, zzcoc.class, new zzcmf(this, zzatq, Binder.getCallingUid()), this.zzghl);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ InputStream zzf(zzatq zzatq) {
        return this.zzgns.zzi(zzatq).get((long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS);
    }
}
