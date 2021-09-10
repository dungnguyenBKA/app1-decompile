package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;
import org.apache.http.protocol.HTTP;

@ParametersAreNonnullByDefault
public final class zzsc extends zzrv {
    private MessageDigest zzbuj;
    private final int zzbuk;
    private final int zzbul;

    public zzsc(int i) {
        int i2 = i / 8;
        this.zzbuk = i % 8 > 0 ? i2 + 1 : i2;
        this.zzbul = i;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final byte[] zzbq(String str) {
        synchronized (this.mLock) {
            MessageDigest zzms = zzms();
            this.zzbuj = zzms;
            if (zzms == null) {
                return new byte[0];
            }
            zzms.reset();
            this.zzbuj.update(str.getBytes(Charset.forName(HTTP.UTF_8)));
            byte[] digest = this.zzbuj.digest();
            int length = digest.length;
            int i = this.zzbuk;
            if (length <= i) {
                i = digest.length;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(digest, 0, bArr, 0, i);
            if (this.zzbul % 8 > 0) {
                long j = 0;
                for (int i2 = 0; i2 < i; i2++) {
                    if (i2 > 0) {
                        j <<= 8;
                    }
                    j += (long) (bArr[i2] & 255);
                }
                long j2 = j >>> (8 - (this.zzbul % 8));
                for (int i3 = this.zzbuk - 1; i3 >= 0; i3--) {
                    bArr[i3] = (byte) ((int) (255 & j2));
                    j2 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
