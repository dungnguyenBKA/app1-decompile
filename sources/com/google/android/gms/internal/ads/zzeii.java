package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;

public final class zzeii implements zzeid<KeyFactory> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ KeyFactory zza(String str, Provider provider) {
        if (provider == null) {
            return KeyFactory.getInstance(str);
        }
        return KeyFactory.getInstance(str, provider);
    }
}
