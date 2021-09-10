package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;

@SuppressLint({"BadMethodUse-java.lang.String.length"})
public final class RR implements AnonymousClass00 {
    public static byte[] A09;
    public static String[] A0A;
    public static final String A0B = RR.class.getSimpleName();
    public final int A00;
    public final int A01;
    public final AnonymousClass08 A02;
    public final AnonymousClass0A A03;
    public final AnonymousClass0L A04;
    public final AnonymousClass8D A05;
    public final Map<String, File> A06 = Collections.synchronizedMap(new HashMap());
    public final Map<String, Semaphore> A07 = new HashMap();
    public final boolean A08;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] - i3;
            String[] strArr = A0A;
            if (strArr[5].length() != strArr[7].length()) {
                String[] strArr2 = A0A;
                strArr2[5] = "m9U6X0moZlc";
                strArr2[7] = "IfCNkNm6kG";
                copyOfRange[i4] = (byte) (i5 - 76);
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-105, -33, -40, -22, -105, -39, -36, -36, -27, -105, -32, -27, -21, -36, -23, -23, -20, -25, -21, -36, -37, -91, -63, -75, -5, -2, 1, -6, -75, -8, 1, -6, -10, 3, -6, -7, -49, -75, -125, 117, -106, -55, -55, -70, -62, -59, -55, -113, 117, -7, 23, 25, 30, 31, 36, 29, -42, 28, 31, 34, 27, -42, 25, 37, 35, 38, 34, 27, 42, 27, 4, 34, 36, 41, 42, 47, 40, -31, 39, 42, 45, 38, -31, 47, 48, 53, -31, 36, 48, 46, 49, 45, 38, 53, 38, -31, -91, -61, -59, -54, -53, -48, -55, -126, -47, -56, -126, -32, -2, 11, -60, 17, -67, 0, 9, 12, 16, 2, -67, 0, -2, 0, 5, 2, -67, 3, 6, 9, 2, -53, -80, -50, -37, -108, -31, -115, -33, -46, -50, -47, -115, -50, -32, -32, -46, -31, -32, -101, -69, -39, -26, -97, -20, -104, -22, -35, -39, -36, -104, -28, -35, -26, -33, -20, -32, -104, -25, -34, -104, -72, -39, -32, -39, -24, -35, -30, -37, -108, -41, -43, -41, -36, -39, -108, -38, -35, -32, -39, -108, -43, -38, -24, -39, -26, -108, -39, -20, -41, -39, -39, -40, -35, -30, -37, -108, -26, -39, -24, -26, -19, -108, -43, -24, -24, -39, -31, -28, -24, -25, -82, -108, -43, 2, 2, -1, 2, -80, -13, -15, -13, -8, -7, -2, -9, -80, 4, -8, -11, -80, -10, -7, -4, -11, -54, -9, -9, -12, -9, -91, -24, -15, -22, -26, -13, -18, -13, -20, -91, -21, -18, -15, -22, -72, -27, -27, -30, -27, -109, -42, -33, -30, -26, -36, -31, -38, -109, -26, -30, -24, -27, -42, -40, -72, -35, -46, -34, -36, -33, -37, -44, -29, -44, -113, -31, -44, -30, -33, -34, -35, -30, -44, -99, -65, -35, -28, -44, -39, -46, -117, -33, -38, -117, -35, -48, -52, -49, -117, -73, -70, -60, -51, -125, -68, -65, -62, -69, -125, -71, -73, -71, -66, -69, -18, 0, 0, -14, 1, -57, -68, -68, -68, 5, 8, 11, 4, -39, -50, -50, -50, 0, 13, 3, 17, 14, 8, 3, -2, 0, 18, 18, 4, 19, -50};
        String[] strArr = A0A;
        if (strArr[1].charAt(5) != strArr[3].charAt(5)) {
            A0A[6] = "1YrvosXM8zHw8wsMUb3ulJ8Xgx5scBHO";
            return;
        }
        throw new RuntimeException();
    }

    public static void A05() {
        A0A = new String[]{"2hmAfzTadn", "1uDqsMr9wv4o5ZghfCOZg4FuDp7sllqp", "nT1KYDstdBBAZ5nN", "UVqk4rMzzgqbiyaJgpoGMOUy0jQCoEBq", "ewXxsmpHr", "rT44HeCpkJQ", "C3kiv90mrVS0BL1BSM5Dfu9lHf0n3Csl", "grgxNBq6hb"};
    }

    static {
        A05();
        A04();
    }

    public RR(AnonymousClass8D r2, AnonymousClass08 r3, AnonymousClass0L r4) {
        this.A05 = r2;
        this.A08 = r3.A02();
        this.A00 = r3.A00();
        this.A04 = r4;
        this.A03 = new AnonymousClass0A();
        this.A01 = r3.A01();
        this.A02 = r3;
    }

    public static AnonymousClass0K A00(Context context, String str) throws AnonymousClass0H {
        try {
            InputStream open = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr, 0, bArr.length);
                if (read == -1) {
                    return new RT(byteArrayOutputStream.toByteArray());
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            throw new AnonymousClass0H(A03(130, 18, 33), e);
        }
    }

    public static File A01(Context context) {
        return new File(context.getCacheDir(), A03(317, 15, 10));
    }

    @Nullable
    private File A02(AnonymousClass06 r17, String str, String str2, int i, AnonymousClass09 r21) {
        RV rv;
        AnonymousClass0H e;
        String A032 = A03(221, 22, 68);
        String str3 = str;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            File file = new File(A01(this.A05), str2);
            RV rv2 = new RV(file, new C0502Fz(J4.A0L(this.A05)));
            if (rv2.A0A()) {
                if (this.A08) {
                    String str4 = A03(49, 21, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE) + rv2.A00.getName();
                }
                this.A06.put(str3, file);
                rv2.A07();
                this.A04.ACt(str3, true, r17);
                return file;
            }
            if (this.A08) {
                String str5 = A03(70, 26, 117) + rv2.A00.getName();
            }
            if (!r21.A04()) {
                return null;
            }
            int i2 = 0;
            this.A04.ACt(str3, false, r17);
            while (true) {
                if (i2 >= this.A00) {
                    rv = rv2;
                    break;
                }
                try {
                    str3 = str3;
                    rv = rv2;
                    try {
                        A06(this.A05, rv2, str3, i, i2, currentTimeMillis);
                        break;
                    } catch (AnonymousClass0H e2) {
                        e = e2;
                    }
                } catch (AnonymousClass0H e3) {
                    e = e3;
                    rv = rv2;
                    if (i2 == this.A00 - 1) {
                        A07(rv);
                        if (e instanceof RU) {
                            throw ((RU) e);
                        } else if (e instanceof RX) {
                            throw ((RX) e);
                        }
                    }
                    i2++;
                    rv2 = rv;
                }
                i2++;
                rv2 = rv;
            }
            int A042 = rv.A04();
            rv.A07();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            r21.A00().A4C(file, this.A04);
            this.A06.put(str3, file);
            this.A04.ACs(str3, 2112, null, Integer.valueOf(A042), Long.valueOf(currentTimeMillis2), r17);
            return file;
        } catch (RU e4) {
            this.A04.ACs(str3, 2119, e4.toString(), null, null, r17);
            if (!this.A08) {
                return null;
            }
            Log.e(A0B, A032, e4);
            return null;
        } catch (RX e5) {
            this.A04.ACs(str3, 2113, e5.toString(), null, null, r17);
            if (!this.A08) {
                return null;
            }
            Log.e(A0B, A032, e5);
            return null;
        }
    }

    /* JADX INFO: Multiple debug info for r0v3 com.facebook.ads.redexgen.X.0K: [D('source' com.facebook.ads.redexgen.X.0K), D('code' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x01a8, code lost:
        if (r4 != false) goto L_0x01aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x01b0, code lost:
        if (r4 != false) goto L_0x01aa;
     */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0165  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A06(android.content.Context r24, com.facebook.ads.redexgen.X.RV r25, java.lang.String r26, int r27, int r28, long r29) throws com.facebook.ads.redexgen.X.AnonymousClass0H {
        /*
        // Method dump skipped, instructions count: 435
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RR.A06(android.content.Context, com.facebook.ads.redexgen.X.RV, java.lang.String, int, int, long):void");
    }

    /* JADX INFO: Multiple debug info for r6v0 'this'  com.facebook.ads.redexgen.X.RR: [D('e' java.lang.Exception), D('cacheFile' java.io.File)] */
    @SuppressLint({"CatchGeneralException"})
    private void A07(RV rv) {
        try {
            File A052 = rv.A05();
            if (A052.exists()) {
                rv.A07();
                boolean delete = A052.delete();
                if (this.A08) {
                    String str = A0B;
                    Log.i(str, A03(169, 52, 40) + delete);
                }
            }
        } catch (Exception e) {
            if (this.A08) {
                Log.e(A0B, A03(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 23, 81), e);
            }
        }
    }

    private boolean A08(RV rv) {
        try {
            rv.A06();
            return true;
        } catch (RX e) {
            boolean z = this.A08;
            if (A0A[6].charAt(7) != 'U') {
                A0A[6] = "AEs2mSbxTVyMZvMH4XlDgcN9VznTkYzp";
                if (!z) {
                    return false;
                }
                Log.e(A0B, A03(243, 19, 57), e);
                return false;
            }
            throw new RuntimeException();
        }
    }

    /* JADX INFO: Multiple debug info for r12v0 'this'  com.facebook.ads.redexgen.X.RR: [D('cachedFile' java.io.File), D('baseUrl' java.lang.String)] */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00c4, code lost:
        if (r12.A08 != false) goto L_0x00c6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c6, code lost:
        r0 = ((java.lang.String) A03(96, 11, 22)) + r8 + ((java.lang.String) A03(0, 22, 43));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00ea, code lost:
        r2 = new com.facebook.ads.redexgen.X.AnonymousClass02<>(false, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00ef, code lost:
        r3.release();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00f4, code lost:
        monitor-enter(r12.A07);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:?, code lost:
        r12.A07.remove(r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00fb, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00ff, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0100, code lost:
        r3.release();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0105, code lost:
        monitor-enter(r12.A07);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:?, code lost:
        r12.A07.remove(r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x010c, code lost:
        throw r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:41:0x00c2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T> com.facebook.ads.redexgen.X.AnonymousClass02<T> A09(com.facebook.ads.redexgen.X.AnonymousClass06 r13, com.facebook.ads.redexgen.X.AnonymousClass09<T> r14) {
        /*
        // Method dump skipped, instructions count: 275
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RR.A09(com.facebook.ads.redexgen.X.06, com.facebook.ads.redexgen.X.09):com.facebook.ads.redexgen.X.02");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass00
    public final AnonymousClass02<Bitmap> ADJ(AnonymousClass06 r8, boolean z) {
        return A09(r8, new AnonymousClass09(new RO(r8.A01, r8.A00, this.A02.A04(), this.A02.A03(), z)));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass00
    @Nullable
    public final File ADK(AnonymousClass06 r3) {
        AnonymousClass09 r1 = new AnonymousClass09(new RP());
        r1.A01(true);
        r1.A02(false);
        return (File) A09(r3, r1).A00();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass00
    @Nullable
    public final String ADL(AnonymousClass06 r3) {
        return (String) A09(r3, new AnonymousClass09(new RQ())).A00();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass00
    @Nullable
    public final String ADM(AnonymousClass06 r3) {
        AnonymousClass09 r1 = new AnonymousClass09(new RQ());
        r1.A01(true);
        r1.A02(false);
        return (String) A09(r3, r1).A00();
    }
}
