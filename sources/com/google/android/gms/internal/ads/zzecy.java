package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;

final class zzecy extends zzeaz<zzeau, zzefn> {
    zzecy(Class cls) {
        super(cls);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzeaz
    public final /* synthetic */ zzeau zzah(zzefn zzefn) {
        zzefn zzefn2 = zzefn;
        zzefk zzbcu = zzefn2.zzbdb().zzbcu();
        zzefr zzbcw = zzbcu.zzbcw();
        zzehz zza = zzedh.zza(zzbcw.zzbdj());
        byte[] byteArray = zzefn2.zzbbe().toByteArray();
        return new zzehu((ECPrivateKey) zzeie.zzikm.zzhw("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, byteArray), zzehx.zza(zza))), zzbcw.zzbdl().toByteArray(), zzedh.zza(zzbcw.zzbdk()), zzedh.zza(zzbcu.zzbcy()), new zzedj(zzbcu.zzbcx().zzbcr()));
    }
}
