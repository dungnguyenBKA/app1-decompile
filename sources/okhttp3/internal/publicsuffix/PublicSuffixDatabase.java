package okhttp3.internal.publicsuffix;

import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PublicSuffixDatabase {
    private static final byte[] e = {42};
    private static final String[] f = new String[0];
    private static final String[] g = {"*"};
    private static final PublicSuffixDatabase h = new PublicSuffixDatabase();
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final CountDownLatch b = new CountDownLatch(1);
    private byte[] c;
    private byte[] d;

    private static String a(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 > -1 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    z = z2;
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 == 0) {
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    } else if (bArr2[i10].length != i11) {
                        z2 = z;
                    } else if (i10 == bArr2.length - 1) {
                        break;
                    } else {
                        i10++;
                        z2 = true;
                        i11 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            return new String(bArr, i7, i9, rh0.i);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i7 - 1;
        }
        return null;
    }

    public static PublicSuffixDatabase b() {
        return h;
    }

    private void d() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream != null) {
            zj0 c2 = ik0.c(new gk0(ik0.h(resourceAsStream)));
            try {
                byte[] bArr = new byte[c2.readInt()];
                c2.readFully(bArr);
                byte[] bArr2 = new byte[c2.readInt()];
                c2.readFully(bArr2);
                synchronized (this) {
                    this.c = bArr;
                    this.d = bArr2;
                }
                this.b.countDown();
            } finally {
                rh0.g(c2);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (r1 == false) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0037, code lost:
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0025, code lost:
        if (r1 != false) goto L_0x0037;
     */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x010f  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x0121 A[LOOP:5: B:79:0x011e->B:81:0x0121, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String c(java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 328
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.c(java.lang.String):java.lang.String");
    }
}
