package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

public final class zzcwo implements zzcrj<zzblv> {
    private final zzdrj zzfwz;
    private final zzbmr zzgto;
    private final zzdzv zzgwi;
    private final Context zzgwp;
    private final zzacl zzgwq;

    public zzcwo(Context context, zzbmr zzbmr, zzdrj zzdrj, zzdzv zzdzv, zzacl zzacl) {
        this.zzgwp = context;
        this.zzgto = zzbmr;
        this.zzfwz = zzdrj;
        this.zzgwi = zzdzv;
        this.zzgwq = zzacl;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd;
        return (this.zzgwq == null || (zzdnd = zzdmw.zzhjg) == null || zzdnd.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblv> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        zzbly zza = this.zzgto.zza(new zzboj(zzdnl, zzdmw, null), new zzcwp(this, new View(this.zzgwp), null, zzcwn.zzgwo, zzdmw.zzhji.get(0)));
        zzcws zzahq = zza.zzahq();
        zzdnd zzdnd = zzdmw.zzhjg;
        return this.zzfwz.zzt(zzdrk.CUSTOM_RENDER_SYN).zza(new zzcwq(this, new zzace(zzahq, zzdnd.zzdsw, zzdnd.zzdsy)), this.zzgwi).zzv(zzdrk.CUSTOM_RENDER_ACK).zze(zzdzk.zzag(zza.zzaho())).zzaxj();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzace zzace) {
        this.zzgwq.zza(zzace);
    }
}
