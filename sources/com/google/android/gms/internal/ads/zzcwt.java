package com.google.android.gms.internal.ads;

public final class zzcwt<AdT> implements zzcrj<AdT> {
    private final zzdrj zzfwz;
    private final zzdzv zzgwi;
    private final zzacl zzgwq;
    private final zzcwy<AdT> zzgwu;

    public zzcwt(zzdrj zzdrj, zzdzv zzdzv, zzacl zzacl, zzcwy<AdT> zzcwy) {
        this.zzfwz = zzdrj;
        this.zzgwi = zzdzv;
        this.zzgwq = zzacl;
        this.zzgwu = zzcwy;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd;
        return (this.zzgwq == null || (zzdnd = zzdmw.zzhjg) == null || zzdnd.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdT> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        zzbaa zzbaa = new zzbaa();
        zzcxb zzcxb = new zzcxb();
        zzcxb.zza(new zzcwv(this, zzbaa, zzdnl, zzdmw, zzcxb));
        zzdnd zzdnd = zzdmw.zzhjg;
        return this.zzfwz.zzt(zzdrk.CUSTOM_RENDER_SYN).zza(new zzcww(this, new zzace(zzcxb, zzdnd.zzdsw, zzdnd.zzdsy)), this.zzgwi).zzv(zzdrk.CUSTOM_RENDER_ACK).zze(zzbaa).zzaxj();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzace zzace) {
        this.zzgwq.zza(zzace);
    }
}
