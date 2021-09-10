package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzctf implements zzcrj<zzbyy> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzbzy zzgtz;

    public zzctf(Context context2, zzazn zzazn, zzdnp zzdnp, Executor executor, zzbzy zzbzy, zzchq zzchq) {
        this.context = context2;
        this.zzfwy = zzdnp;
        this.zzgtz = zzbzy;
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
    public final zzdzw<zzbyy> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        zzcig zzcig = new zzcig();
        zzdzw<zzbyy> zzb = zzdzk.zzb(zzdzk.zzag(null), new zzcti(this, zzdmw, zzdnl, zzcig), this.zzfsj);
        zzb.addListener(zzcth.zza(zzcig), this.zzfsj);
        return zzb;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzb(zzdmw zzdmw, zzdnl zzdnl, zzcig zzcig, Object obj) {
        zzbeb zza = this.zzggk.zza(this.zzfwy.zzbpo, zzdmw, zzdnl.zzhks.zzess);
        zza.zzbb(zzdmw.zzdwz);
        zzcig.zzc(this.context, zza.getView());
        zzbaa zzbaa = new zzbaa();
        zzbza zza2 = this.zzgtz.zza(new zzboj(zzdnl, zzdmw, null), new zzbyz(new zzctl(this.context, this.zzboz, zzbaa, zzdmw, zza), zza));
        zzbaa.set(zza2);
        zza2.zzagq().zza(new zzctk(zza), zzazp.zzeih);
        zza2.zzahe().zza(zza, true);
        zza2.zzahe();
        zzdnd zzdnd = zzdmw.zzhjg;
        return zzdzk.zzb(zzchs.zza(zza, zzdnd.zzdsw, zzdnd.zzdsy), new zzctj(this, zza, zzdmw, zza2), this.zzfsj);
    }
}
