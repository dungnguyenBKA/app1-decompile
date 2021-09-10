package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Mac;

public final class zzeik implements zzeid<Mac> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ Mac zza(String str, Provider provider) {
        if (provider == null) {
            return Mac.getInstance(str);
        }
        return Mac.getInstance(str, provider);
    }
}
