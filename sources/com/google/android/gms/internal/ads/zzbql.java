package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class zzbql implements zzbrm, zzbsa, zzbvq, zzbxp {
    private final Executor executor;
    private final zzbsd zzfxz;
    private final zzdmw zzfya;
    private final ScheduledExecutorService zzfyb;
    private zzeae<Boolean> zzfyc = zzeae.zzbag();
    private ScheduledFuture<?> zzfyd;

    public zzbql(zzbsd zzbsd, zzdmw zzdmw, ScheduledExecutorService scheduledExecutorService, Executor executor2) {
        this.zzfxz = zzbsd;
        this.zzfya = zzdmw;
        this.zzfyb = scheduledExecutorService;
        this.executor = executor2;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        int i = this.zzfya.zzhjs;
        if (i == 0 || i == 1) {
            this.zzfxz.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzald() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcre)).booleanValue()) {
            zzdmw zzdmw = this.zzfya;
            if (zzdmw.zzhjs != 2) {
                return;
            }
            if (zzdmw.zzhje == 0) {
                this.zzfxz.onAdImpression();
                return;
            }
            zzdzk.zza(this.zzfyc, new zzbqn(this), this.executor);
            this.zzfyd = this.zzfyb.schedule(new zzbqo(this), (long) this.zzfya.zzhje, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final synchronized void zzale() {
        if (!this.zzfyc.isDone()) {
            ScheduledFuture<?> scheduledFuture = this.zzfyd;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zzfyc.set(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzalf() {
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzalg() {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzalh() {
        synchronized (this) {
            if (!this.zzfyc.isDone()) {
                this.zzfyc.set(Boolean.TRUE);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzauk, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final synchronized void zzk(zzvg zzvg) {
        if (!this.zzfyc.isDone()) {
            ScheduledFuture<?> scheduledFuture = this.zzfyd;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zzfyc.setException(new Exception());
        }
    }
}
