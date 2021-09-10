package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class LD {
    public static byte[] A00;
    public static String[] A01;

    static {
        A06();
        A05();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 5);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-75, -40, -37, -44, -113, -35, -34, -29, -113, -43, -34, -28, -35, -45, -113, -34, -31, -113, -35, -34, -29, -113, -48, -46, -46, -44, -30, -30, -40, -47, -37, -44, -99, -98, -92, 117, -70, -51, -72, -70, -59, -55, -66, -60, -61, -125, -69, -78, -93, -84, -51, 126, -47, -45, -63, -58, 126, -65, -54, -59, -51, -48, -57, -46, -58, -53, -116};
    }

    public static void A06() {
        A01 = new String[]{"IOEZorjxOvw6WLkUEnC6RZ8kEO9", "tHPeSZxRvwouZJrSTjrDS", "TwGUtlC7GZyiucHxYkx3tmK4C4H8dlEQ", "GjCU5mOPxx9IT2wExHvtqMTRFU0QzxAJ", "XmpOvjLSyfhgS8Wil7aGxd4h0rPRF491", "y4S9iPYd4rIMIRQ9MJO3pBhIPGP4T8Jh", "23Thg1fStvZGySLsE7bFCmDmP0GXJhTR", "jegZiJVYRtoFlccHEdL0d7ywmKE0efBM"};
    }

    @Nullable
    public static String A01(File file) throws Exception {
        int read;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                MessageDigest instance = MessageDigest.getInstance(A00(46, 3, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS));
                byte[] bArr = new byte[1024];
                do {
                    read = fileInputStream.read(bArr);
                    if (read > 0) {
                        instance.update(bArr, 0, read);
                    }
                } while (read != -1);
                String A04 = A04(instance.digest());
                try {
                    fileInputStream.close();
                } catch (IOException unused) {
                }
                return A04;
            } catch (NoSuchAlgorithmException unused2) {
                throw new Exception(A00(49, 18, 89));
            } catch (IOException unused3) {
                throw new Exception(A00(33, 13, 80));
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (IOException unused4) {
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            throw new Exception(A00(0, 33, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE));
        }
    }

    @Nullable
    public static final String A02(String str) throws Exception {
        return A01(new File(str));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0043, code lost:
        r4 = r4 + 1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0046 A[LOOP:1: B:3:0x0010->B:12:0x0046, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0043 A[EDGE_INSN: B:20:0x0043->B:11:0x0043 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String A03(byte[] r10) {
        /*
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            int r5 = r10.length
            r4 = 0
        L_0x0007:
            if (r4 >= r5) goto L_0x0054
            byte r9 = r10[r4]
            int r0 = r9 >>> 4
            r7 = r0 & 15
            r3 = 0
        L_0x0010:
            if (r7 < 0) goto L_0x0048
            r8 = 9
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.LD.A01
            r0 = 2
            r1 = r2[r0]
            r0 = 3
            r2 = r2[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L_0x004e
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.LD.A01
            java.lang.String r1 = "WYC0eM9KSy1kpGQhaCsWuh8F6Di5rl0B"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "cvJ0Eg1FAjPz1pwRpU9xefwXrHpQMXjt"
            r0 = 3
            r2[r0] = r1
            if (r7 > r8) goto L_0x0048
            int r0 = r7 + 48
            char r0 = (char) r0
        L_0x0039:
            r6.append(r0)
            r7 = r9 & 15
            int r1 = r3 + 1
            r0 = 1
            if (r3 < r0) goto L_0x0046
            int r4 = r4 + 1
            goto L_0x0007
        L_0x0046:
            r3 = r1
            goto L_0x0010
        L_0x0048:
            int r0 = r7 + -10
            int r0 = r0 + 97
            char r0 = (char) r0
            goto L_0x0039
        L_0x004e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x0054:
            java.lang.String r0 = r6.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.LD.A03(byte[]):java.lang.String");
    }

    public static String A04(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }
}
