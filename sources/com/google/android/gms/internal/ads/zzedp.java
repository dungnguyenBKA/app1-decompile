package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* access modifiers changed from: package-private */
public final class zzedp extends zzeba<zzefz, zzefv> {
    private final /* synthetic */ zzedn zzidw;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzedp(zzedn zzedn, Class cls) {
        super(cls);
        this.zzidw = zzedn;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzefz zzefz) {
        zzefz zzefz2 = zzefz;
        if (zzefz2.getKeySize() >= 16) {
            zzedn.zza(zzefz2.zzbdo());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzefv zze(zzefz zzefz) {
        zzefz zzefz2 = zzefz;
        return (zzefv) ((zzelb) zzefv.zzbdp().zzfi(0).zzd(zzefz2.zzbdo()).zzae(zzejr.zzt(zzeiu.zzft(zzefz2.getKeySize()))).zzbiw());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzefz zzr(zzejr zzejr) {
        return zzefz.zzu(zzejr, zzeko.zzbhw());
    }
}
