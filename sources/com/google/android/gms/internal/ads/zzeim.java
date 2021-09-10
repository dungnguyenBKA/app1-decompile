package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;

public final class zzeim implements zzeid<Signature> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ Signature zza(String str, Provider provider) {
        if (provider == null) {
            return Signature.getInstance(str);
        }
        return Signature.getInstance(str, provider);
    }
}
