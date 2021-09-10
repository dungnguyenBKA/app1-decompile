package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class zzdc implements Runnable {
    private zzdc() {
    }

    public final void run() {
        try {
            zzda.zza(MessageDigest.getInstance("MD5"));
        } catch (NoSuchAlgorithmException unused) {
        } finally {
            zzda.zznw.countDown();
        }
    }
}
