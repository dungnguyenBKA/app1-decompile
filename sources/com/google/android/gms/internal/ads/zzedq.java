package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* access modifiers changed from: package-private */
public final class zzedq extends zzeaz<zzebd, zzefv> {
    zzedq(Class cls) {
        super(cls);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzeaz
    public final /* synthetic */ zzebd zzah(zzefv zzefv) {
        zzefv zzefv2 = zzefv;
        zzeft zzbdu = zzefv2.zzbdo().zzbdu();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzefv2.zzbbe().toByteArray(), "HMAC");
        int zzbbj = zzefv2.zzbdo().zzbbj();
        int i = zzeds.zzidt[zzbdu.ordinal()];
        if (i == 1) {
            return new zzeir(new zzeip("HMACSHA1", secretKeySpec), zzbbj);
        }
        if (i == 2) {
            return new zzeir(new zzeip("HMACSHA256", secretKeySpec), zzbbj);
        }
        if (i == 3) {
            return new zzeir(new zzeip("HMACSHA512", secretKeySpec), zzbbj);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
