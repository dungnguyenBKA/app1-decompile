package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Cipher;

public final class zzeig implements zzeid<Cipher> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ Cipher zza(String str, Provider provider) {
        if (provider == null) {
            return Cipher.getInstance(str);
        }
        return Cipher.getInstance(str, provider);
    }
}
