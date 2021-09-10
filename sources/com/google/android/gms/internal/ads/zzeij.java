package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;

public final class zzeij implements zzeid<MessageDigest> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ MessageDigest zza(String str, Provider provider) {
        if (provider == null) {
            return MessageDigest.getInstance(str);
        }
        return MessageDigest.getInstance(str, provider);
    }
}
