package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcvo implements zzcrj<zzchb> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzchi zzgvn;

    public zzcvo(Context context2, zzazn zzazn, zzdnp zzdnp, Executor executor, zzchi zzchi, zzchq zzchq) {
        this.context = context2;
        this.zzfwy = zzdnp;
        this.zzgvn = zzchi;
        this.zzfsj = executor;
        this.zzboz = zzazn;
        this.zzggk = zzchq;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd = zzdmw.zzhjg;
        return (zzdnd == null || zzdnd.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzchb> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        zzcig zzcig = new zzcig();
        zzdzw<zzchb> zzb = zzdzk.zzb(zzdzk.zzag(null), new zzcvn(this, zzdmw, zzdnl, zzcig), this.zzfsj);
        zzb.addListener(zzcvq.zza(zzcig), this.zzfsj);
        return zzb;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzc(zzdmw zzdmw, zzdnl zzdnl, zzcig zzcig, Object obj) {
        zzbeb zza = this.zzggk.zza(this.zzfwy.zzbpo, zzdmw, zzdnl.zzhks.zzess);
        zza.zzbb(zzdmw.zzdwz);
        zzcig.zzc(this.context, zza.getView());
        zzbaa zzbaa = new zzbaa();
        zzchd zza2 = this.zzgvn.zza(new zzboj(zzdnl, zzdmw, null), new zzchg(new zzcvu(this.context, this.zzggk, this.zzfwy, this.zzboz, zzdmw, zzbaa, zza), zza));
        zzbaa.set(zza2);
        zzaio.zza(zza, zza2.zzaih());
        zza2.zzagq().zza(new zzcvp(zza), zzazp.zzeih);
        zza2.zzahe().zza(zza, true);
        zza2.zzahe();
        zzdnd zzdnd = zzdmw.zzhjg;
        return zzdzk.zzb(zzchs.zza(zza, zzdnd.zzdsw, zzdnd.zzdsy), new zzcvs(this, zza, zzdmw, zza2), this.zzfsj);
    }
}
