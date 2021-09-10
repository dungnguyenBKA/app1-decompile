package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class zzehg implements zzeio {
    private static final ThreadLocal<Cipher> zzidh = new zzehf();
    private final SecretKeySpec zziiv;
    private final int zziiw;
    private final int zziix;

    public zzehg(byte[] bArr, int i) {
        zzeiv.zzfu(bArr.length);
        this.zziiv = new SecretKeySpec(bArr, "AES");
        int blockSize = zzidh.get().getBlockSize();
        this.zziix = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.zziiw = i;
    }

    @Override // com.google.android.gms.internal.ads.zzeio
    public final byte[] zzn(byte[] bArr) {
        int length = bArr.length;
        int i = this.zziiw;
        if (length <= Integer.MAX_VALUE - i) {
            byte[] bArr2 = new byte[(bArr.length + i)];
            byte[] zzft = zzeiu.zzft(i);
            System.arraycopy(zzft, 0, bArr2, 0, this.zziiw);
            int length2 = bArr.length;
            int i2 = this.zziiw;
            Cipher cipher = zzidh.get();
            byte[] bArr3 = new byte[this.zziix];
            System.arraycopy(zzft, 0, bArr3, 0, this.zziiw);
            cipher.init(1, this.zziiv, new IvParameterSpec(bArr3));
            if (cipher.doFinal(bArr, 0, length2, bArr2, i2) == length2) {
                return bArr2;
            }
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        throw new GeneralSecurityException(ic.C(43, "plaintext length can not exceed ", Integer.MAX_VALUE - this.zziiw));
    }
}
