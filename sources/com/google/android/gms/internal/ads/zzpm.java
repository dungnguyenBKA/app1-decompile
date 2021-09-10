package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;

public final class zzpm {
    public static final byte[] zzbjt = {0, 0, 0, 1};
    private static final float[] zzbkf = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzbkg = new Object();
    private static int[] zzbkh = new int[10];

    public static boolean zza(String str, byte b) {
        if ((!"video/avc".equals(str) || (b & 31) != 6) && (!"video/hevc".equals(str) || ((b & 126) >> 1) != 39)) {
            return false;
        }
        return true;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2;
        synchronized (zzbkg) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    if (i3 >= i - 2) {
                        i3 = i;
                        break;
                    }
                    if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                        break;
                    }
                    i3++;
                }
                if (i3 < i) {
                    int[] iArr = zzbkh;
                    if (iArr.length <= i4) {
                        zzbkh = Arrays.copyOf(iArr, iArr.length << 1);
                    }
                    zzbkh[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = zzbkh[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i5 = i10 + 1;
                bArr[i10] = 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [int, boolean] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00fc  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x0144  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0157  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.internal.ads.zzpl zzd(byte[] r18, int r19, int r20) {
        /*
        // Method dump skipped, instructions count: 385
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpm.zzd(byte[], int, int):com.google.android.gms.internal.ads.zzpl");
    }

    public static void zzp(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            if (i3 < position) {
                int i4 = byteBuffer.get(i) & 255;
                if (i2 == 3) {
                    if (i4 == 1 && (byteBuffer.get(i3) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                } else if (i4 == 0) {
                    i2++;
                }
                if (i4 != 0) {
                    i2 = 0;
                }
                i = i3;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }
}
