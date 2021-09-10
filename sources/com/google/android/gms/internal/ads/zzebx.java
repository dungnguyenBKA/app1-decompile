package com.google.android.gms.internal.ads;

final class zzebx extends zzeba<zzeef, zzeec> {
    private final /* synthetic */ zzebv zzicv;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzebx(zzebv zzebv, Class cls) {
        super(cls);
        this.zzicv = zzebv;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeef zzeef) {
        zzeef zzeef2 = zzeef;
        new zzebw().zzbao().zzd(zzeef2.zzbbq());
        new zzedn().zzbao().zzd(zzeef2.zzbbr());
        zzeiv.zzfu(zzeef2.zzbbq().getKeySize());
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeec zze(zzeef zzeef) {
        zzeef zzeef2 = zzeef;
        return (zzeec) ((zzelb) zzeec.zzbbo().zzc(new zzebw().zzbao().zze(zzeef2.zzbbq())).zzc(new zzedn().zzbao().zze(zzeef2.zzbbr())).zzex(0).zzbiw());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeef zzr(zzejr zzejr) {
        return zzeef.zzf(zzejr, zzeko.zzbhw());
    }
}
