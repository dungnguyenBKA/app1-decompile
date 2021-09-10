package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import javax.annotation.ParametersAreNonnullByDefault;
import org.apache.http.protocol.HTTP;

@ParametersAreNonnullByDefault
public final class zzrz {
    public static int zzbr(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes(HTTP.UTF_8);
        } catch (UnsupportedEncodingException unused) {
            bArr = str.getBytes();
        }
        int length = bArr.length;
        int i = 0;
        int i2 = (length & -4) + 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4 += 4) {
            int i5 = ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | (bArr[i4 + 3] << 24)) * -862048943;
            int i6 = i3 ^ (((i5 << 15) | (i5 >>> 17)) * 461845907);
            i3 = (((i6 >>> 19) | (i6 << 13)) * 5) - 430675100;
        }
        int i7 = length & 3;
        if (i7 != 1) {
            if (i7 != 2) {
                if (i7 == 3) {
                    i = (bArr[i2 + 2] & 255) << 16;
                }
                int i8 = i3 ^ length;
                int i9 = (i8 ^ (i8 >>> 16)) * -2048144789;
                int i10 = (i9 ^ (i9 >>> 13)) * -1028477387;
                return i10 ^ (i10 >>> 16);
            }
            i |= (bArr[i2 + 1] & 255) << 8;
        }
        int i11 = ((bArr[i2] & 255) | i) * -862048943;
        i3 ^= ((i11 >>> 17) | (i11 << 15)) * 461845907;
        int i82 = i3 ^ length;
        int i92 = (i82 ^ (i82 >>> 16)) * -2048144789;
        int i102 = (i92 ^ (i92 >>> 13)) * -1028477387;
        return i102 ^ (i102 >>> 16);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x007f, code lost:
        if (((r6 >= 65382 && r6 <= 65437) || (r6 >= 65441 && r6 <= 65500)) != false) goto L_0x0081;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00c4, code lost:
        if (r4 == false) goto L_0x00d6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x00d4, code lost:
        if (r4 == false) goto L_0x00d6;
     */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String[] zze(java.lang.String r11, boolean r12) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrz.zze(java.lang.String, boolean):java.lang.String[]");
    }
}
