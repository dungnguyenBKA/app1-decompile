package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzeby extends zzeba<zzeej, zzeeg> {
    private final /* synthetic */ zzebw zzicw;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzeby(zzebw zzebw, Class cls) {
        super(cls);
        this.zzicw = zzebw;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeej zzeej) {
        zzeej zzeej2 = zzeej;
        zzeiv.zzfu(zzeej2.getKeySize());
        zzebw zzebw = this.zzicw;
        zzebw.zza((zzebw) zzeej2.zzbbt());
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeeg zze(zzeej zzeej) {
        zzeej zzeej2 = zzeej;
        return (zzeeg) ((zzelb) zzeeg.zzbbu().zzc(zzeej2.zzbbt()).zzu(zzejr.zzt(zzeiu.zzft(zzeej2.getKeySize()))).zzey(0).zzbiw());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeej zzr(zzejr zzejr) {
        return zzeej.zzh(zzejr, zzeko.zzbhw());
    }
}
