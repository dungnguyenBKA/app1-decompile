package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

public final class zzbjq implements zzbrm, zzbsa, zzbse, zzbtb, zzvc {
    private final Context context;
    private final Executor executor;
    private final zzacq zzesn;
    private final zzdnl zzfrd;
    private final zzdsq zzfre;
    private final ScheduledExecutorService zzfri;
    private final zzdmw zzfrj;
    private final zzdnx zzfrk;
    private final zzei zzfrl;
    private final zzacv zzfrm;
    private final WeakReference<View> zzfrn;
    @GuardedBy("this")
    private boolean zzfro;
    @GuardedBy("this")
    private boolean zzfrp;

    public zzbjq(Context context2, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzdnl zzdnl, zzdmw zzdmw, zzdsq zzdsq, zzdnx zzdnx, View view, zzei zzei, zzacq zzacq, zzacv zzacv) {
        this.context = context2;
        this.executor = executor2;
        this.zzfri = scheduledExecutorService;
        this.zzfrd = zzdnl;
        this.zzfrj = zzdmw;
        this.zzfre = zzdsq;
        this.zzfrk = zzdnx;
        this.zzfrl = zzei;
        this.zzfrn = new WeakReference<>(view);
        this.zzesn = zzacq;
        this.zzfrm = zzacv;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        if ((((Boolean) zzwr.zzqr().zzd(zzabp.zzcoq)).booleanValue() && this.zzfrd.zzhks.zzess.zzeeb) || !zzadj.zzddy.get().booleanValue()) {
            zzdnx zzdnx = this.zzfrk;
            zzdsq zzdsq = this.zzfre;
            zzdnl zzdnl = this.zzfrd;
            zzdmw zzdmw = this.zzfrj;
            List<String> zza = zzdsq.zza(zzdnl, zzdmw, zzdmw.zzdmp);
            zzr.zzkr();
            zzdnx.zza(zza, zzj.zzba(this.context) ? zzcqs.zzgru : zzcqs.zzgrt);
            return;
        }
        zzdzk.zza(zzdzf.zzg(this.zzfrm.zza(this.context, this.zzesn.zzsx(), this.zzesn.zzsy())).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcpo)).longValue(), TimeUnit.MILLISECONDS, this.zzfri), new zzbjp(this), this.executor);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final synchronized void onAdImpression() {
        if (!this.zzfrp) {
            String str = null;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsq)).booleanValue()) {
                str = this.zzfrl.zzca().zza(this.context, this.zzfrn.get(), (Activity) null);
            }
            if (!(((Boolean) zzwr.zzqr().zzd(zzabp.zzcoq)).booleanValue() && this.zzfrd.zzhks.zzess.zzeeb)) {
                if (zzadj.zzddz.get().booleanValue()) {
                    zzdzk.zza(zzdzf.zzg(this.zzfrm.zzk(this.context)).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcpo)).longValue(), TimeUnit.MILLISECONDS, this.zzfri), new zzbjs(this, str), this.executor);
                    this.zzfrp = true;
                }
            }
            zzdnx zzdnx = this.zzfrk;
            zzdsq zzdsq = this.zzfre;
            zzdnl zzdnl = this.zzfrd;
            zzdmw zzdmw = this.zzfrj;
            zzdnx.zzj(zzdsq.zza(zzdnl, zzdmw, false, str, null, zzdmw.zzdmq));
            this.zzfrp = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final synchronized void onAdLoaded() {
        if (this.zzfro) {
            ArrayList arrayList = new ArrayList(this.zzfrj.zzdmq);
            arrayList.addAll(this.zzfrj.zzhja);
            this.zzfrk.zzj(this.zzfre.zza(this.zzfrd, this.zzfrj, true, null, null, arrayList));
        } else {
            zzdnx zzdnx = this.zzfrk;
            zzdsq zzdsq = this.zzfre;
            zzdnl zzdnl = this.zzfrd;
            zzdmw zzdmw = this.zzfrj;
            zzdnx.zzj(zzdsq.zza(zzdnl, zzdmw, zzdmw.zzhjc));
            zzdnx zzdnx2 = this.zzfrk;
            zzdsq zzdsq2 = this.zzfre;
            zzdnl zzdnl2 = this.zzfrd;
            zzdmw zzdmw2 = this.zzfrj;
            zzdnx2.zzj(zzdsq2.zza(zzdnl2, zzdmw2, zzdmw2.zzhja));
        }
        this.zzfro = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zzdnx zzdnx = this.zzfrk;
        zzdsq zzdsq = this.zzfre;
        zzdnl zzdnl = this.zzfrd;
        zzdmw zzdmw = this.zzfrj;
        zzdnx.zzj(zzdsq.zza(zzdnl, zzdmw, zzdmw.zzhjb));
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zzdnx zzdnx = this.zzfrk;
        zzdsq zzdsq = this.zzfre;
        zzdnl zzdnl = this.zzfrd;
        zzdmw zzdmw = this.zzfrj;
        zzdnx.zzj(zzdsq.zza(zzdnl, zzdmw, zzdmw.zzdwn));
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzauk, String str, String str2) {
        zzdnx zzdnx = this.zzfrk;
        zzdsq zzdsq = this.zzfre;
        zzdmw zzdmw = this.zzfrj;
        zzdnx.zzj(zzdsq.zza(zzdmw, zzdmw.zzdwo, zzauk));
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvg) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrd)).booleanValue()) {
            this.zzfrk.zzj(this.zzfre.zza(this.zzfrd, this.zzfrj, zzdsq.zza(2, zzvg.errorCode, this.zzfrj.zzhjd)));
        }
    }
}
