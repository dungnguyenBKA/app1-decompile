package com.google.android.gms.internal.ads;

import java.security.KeyPairGenerator;
import java.security.Provider;

public final class zzeih implements zzeid<KeyPairGenerator> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ KeyPairGenerator zza(String str, Provider provider) {
        if (provider == null) {
            return KeyPairGenerator.getInstance(str);
        }
        return KeyPairGenerator.getInstance(str, provider);
    }
}
