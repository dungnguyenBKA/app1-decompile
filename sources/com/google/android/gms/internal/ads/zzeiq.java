package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public final class zzeiq implements zzedv {
    private final SecretKey zzidi;
    private byte[] zziku;
    private byte[] zzikv;

    public zzeiq(byte[] bArr) {
        zzeiv.zzfu(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.zzidi = secretKeySpec;
        Cipher zzbfs = zzbfs();
        zzbfs.init(1, secretKeySpec);
        byte[] zzp = zzehl.zzp(zzbfs.doFinal(new byte[16]));
        this.zziku = zzp;
        this.zzikv = zzehl.zzp(zzp);
    }

    private static Cipher zzbfs() {
        return zzeie.zzikg.zzhw("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.zzedv
    public final byte[] zzd(byte[] bArr, int i) {
        byte[] bArr2;
        if (i <= 16) {
            Cipher zzbfs = zzbfs();
            zzbfs.init(1, this.zzidi);
            double length = (double) bArr.length;
            Double.isNaN(length);
            int max = Math.max(1, (int) Math.ceil(length / 16.0d));
            if ((max << 4) == bArr.length) {
                bArr2 = zzeho.zza(bArr, (max - 1) << 4, this.zziku, 0, 16);
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length);
                if (copyOfRange.length < 16) {
                    byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                    copyOf[copyOfRange.length] = Byte.MIN_VALUE;
                    bArr2 = zzeho.zzd(copyOf, this.zzikv);
                } else {
                    throw new IllegalArgumentException("x must be smaller than a block.");
                }
            }
            byte[] bArr3 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr3 = zzbfs.doFinal(zzeho.zza(bArr3, 0, bArr, i2 << 4, 16));
            }
            return Arrays.copyOf(zzbfs.doFinal(zzeho.zzd(bArr2, bArr3)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
