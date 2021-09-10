package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public abstract class zzrv {
    private static MessageDigest zzbug;
    protected Object mLock = new Object();

    /* access modifiers changed from: package-private */
    public abstract byte[] zzbq(String str);

    /* access modifiers changed from: protected */
    public final MessageDigest zzms() {
        synchronized (this.mLock) {
            MessageDigest messageDigest = zzbug;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    zzbug = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return zzbug;
        }
    }
}
