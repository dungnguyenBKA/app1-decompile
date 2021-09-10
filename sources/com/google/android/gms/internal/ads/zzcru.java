package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcru implements zzcrj<zzblq> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzblk zzgte;

    public zzcru(zzblk zzblk, Context context2, Executor executor, zzchq zzchq, zzdnp zzdnp, zzazn zzazn) {
        this.context = context2;
        this.zzgte = zzblk;
        this.zzfsj = executor;
        this.zzggk = zzchq;
        this.zzfwy = zzdnp;
        this.zzboz = zzazn;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd = zzdmw.zzhjg;
        return (zzdnd == null || zzdnd.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblq> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        zzcig zzcig = new zzcig();
        zzdzw<zzblq> zzb = zzdzk.zzb(zzdzk.zzag(null), new zzcrt(this, zzdmw, zzdnl, zzcig), this.zzfsj);
        zzb.addListener(zzcrw.zza(zzcig), this.zzfsj);
        return zzb;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdmw zzdmw, zzdnl zzdnl, zzcig zzcig, Object obj) {
        zzbeb zza = this.zzggk.zza(this.zzfwy.zzbpo, zzdmw, zzdnl.zzhks.zzess);
        zza.zzbb(zzdmw.zzdwz);
        zzcig.zzc(this.context, zza.getView());
        zzbaa zzbaa = new zzbaa();
        zzbli zza2 = this.zzgte.zza(new zzboj(zzdnl, zzdmw, null), new zzbyz(new zzcsa(this.zzboz, zzbaa, zzdmw, zza, this.zzfwy), zza), new zzblh(zzdmw.zzfto));
        zza2.zzahe().zza(zza, false);
        zzbaa.set(zza2);
        zza2.zzagq().zza(new zzcrv(zza), zzazp.zzeih);
        zza2.zzahe();
        zzdnd zzdnd = zzdmw.zzhjg;
        return zzdzk.zzb(zzchs.zza(zza, zzdnd.zzdsw, zzdnd.zzdsy), new zzcry(this, zza, zzdmw, zza2), this.zzfsj);
    }
}
