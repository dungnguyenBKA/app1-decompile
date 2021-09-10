package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

final class zzehk extends ThreadLocal<Cipher> {
    zzehk() {
    }

    private static Cipher zzbbc() {
        try {
            return zzeie.zzikg.zzhw("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Cipher initialValue() {
        return zzbbc();
    }
}
