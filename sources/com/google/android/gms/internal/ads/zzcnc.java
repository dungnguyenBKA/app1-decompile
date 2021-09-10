package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

public final class zzcnc implements zzcnz {
    private static final Pattern zzgoi = Pattern.compile("Received error HTTP response code: (.*)");
    private final ScheduledExecutorService zzfri;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;
    private final zzcme zzgog;
    private final zzcqb zzgoh;

    zzcnc(zzdnp zzdnp, zzcme zzcme, zzdzv zzdzv, ScheduledExecutorService scheduledExecutorService, zzcqb zzcqb) {
        this.zzfwy = zzdnp;
        this.zzgog = zzcme;
        this.zzghl = zzdzv;
        this.zzfri = scheduledExecutorService;
        this.zzgoh = zzcqb;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzd(InputStream inputStream) {
        return zzdzk.zzag(new zzdnl(new zzdng(this.zzfwy), zzdnj.zza(new InputStreamReader(inputStream))));
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final zzdzw<zzdnl> zzh(zzatq zzatq) {
        zzdzw<zzdnl> zzb = zzdzk.zzb(this.zzgog.zze(zzatq), new zzcnb(this), this.zzghl);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwm)).booleanValue()) {
            zzb = zzdzk.zzb(zzdzk.zza(zzb, (long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS, this.zzfri), TimeoutException.class, zzcne.zzboq, zzazp.zzeih);
        }
        zzdzk.zza(zzb, new zzcnd(this), zzazp.zzeih);
        return zzb;
    }
}
