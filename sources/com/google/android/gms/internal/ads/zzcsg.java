package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;

public final class zzcsg implements zzcrj<zzblv> {
    private final Context context;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzbmr zzgto;
    private final zzdvz<zzdmw, zzad> zzgtp;

    public zzcsg(zzbmr zzbmr, Context context2, Executor executor, zzchq zzchq, zzdnp zzdnp, zzdvz<zzdmw, zzad> zzdvz) {
        this.context = context2;
        this.zzgto = zzbmr;
        this.zzfsj = executor;
        this.zzggk = zzchq;
        this.zzfwy = zzdnp;
        this.zzgtp = zzdvz;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd = zzdmw.zzhjg;
        return (zzdnd == null || zzdnd.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblv> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzcsf(this, zzdnl, zzdmw), this.zzfsj);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(zzbeb zzbeb) {
        zzbeb.zzacr();
        zzbev zzabc = zzbeb.zzabc();
        zzaau zzaau = this.zzfwy.zzhkv;
        if (zzaau != null && zzabc != null) {
            zzabc.zzb(zzaau);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzb(zzdnl zzdnl, zzdmw zzdmw, Object obj) {
        View view;
        zzvs zzb = zzdnu.zzb(this.context, zzdmw.zzhji);
        zzbeb zza = this.zzggk.zza(zzb, zzdmw, zzdnl.zzhks.zzess);
        zza.zzbb(zzdmw.zzdwz);
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczh)).booleanValue() || !zzdmw.zzhjx) {
            view = new zzcid(this.context, zza.getView(), this.zzgtp.apply(zzdmw));
        } else {
            view = zzbnj.zza(this.context, zza.getView(), zzdmw);
        }
        zzbly zza2 = this.zzgto.zza(new zzboj(zzdnl, zzdmw, null), new zzbmc(view, zza, zzcsi.zzm(zza), zzdnu.zzh(zzb)));
        zza2.zzahe().zza(zza, false);
        zzbsd zzagq = zza2.zzagq();
        zzcsh zzcsh = new zzcsh(zza);
        zzdzv zzdzv = zzazp.zzeih;
        zzagq.zza(zzcsh, zzdzv);
        zza2.zzahe();
        zzdnd zzdnd = zzdmw.zzhjg;
        zzdzw<?> zza3 = zzchs.zza(zza, zzdnd.zzdsw, zzdnd.zzdsy);
        if (zzdmw.zzdxt) {
            zza3.addListener(zzcsk.zze(zza), this.zzfsj);
        }
        zza3.addListener(new zzcsj(this, zza), this.zzfsj);
        return zzdzk.zzb(zza3, new zzcsm(zza2), zzdzv);
    }
}
