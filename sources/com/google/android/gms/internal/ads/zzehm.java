package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

final class zzehm extends ThreadLocal<Cipher> {
    zzehm() {
    }

    private static Cipher zzbbc() {
        try {
            return zzeie.zzikg.zzhw("AES/GCM/NoPadding");
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
