package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Executor;

/* renamed from: com.facebook.ads.redexgen.X.Gh  reason: case insensitive filesystem */
public final class C0510Gh implements QK {
    public static byte[] A07;
    public static String[] A08;
    public static final String A09 = QK.class.getSimpleName();
    public AbstractC03218d A00;
    public Executor A01;
    public boolean A02;
    public QP A03;
    public AbstractC0753Qa A04 = new C0507Ge();
    public final QU A05 = new HK();
    public final QZ A06;

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A07 = new byte[]{16, 18, 55, 58, 95, 55, 53, 74, 71, 14, 74, 72, 15, 76, 90, 93, 67, 15, 14, 71, 93, 14, 64, 65, 90, 14, 79, 14, 88, 79, 66, 71, 74, 14, 123, 124, 98, 14, 65, 72, 14, 94, 102, 106, 9, 30, 106, 119, 106, 28, 16, 98, 100, 16, 13, 16, 55, 59, 111, 105, 98, 114, 117, 124, 59, 81, 17, 59, 50, 63, 46, 45, 59, 58, 94, 42, 55, 51, 59, 94, 67, 94, 1, 35, 50, 50, 47, 40, 33, 102, 50, 46, 35, 102, 46, 50, 50, 54, 102, 52, 35, 53, 54, 41, 40, 53, 35, 102, 50, 47, 43, 35, 34, 102, 41, 51, 50, 61, 60, 46, 69, 80, 22, 7, 7, 27, 30, 20, 22, 3, 30, 24, 25, 88, 15, 90, 0, 0, 0, 90, 17, 24, 5, 26, 90, 2, 5, 27, 18, 25, 20, 24, 19, 18, 19, 76, 20, 31, 22, 5, 4, 18, 3, 74, 34, 35, 49, 90, 79, 120, 110, 105, 119, 59, 54, 112, 59, 54, 114, 34, 41, 56, 59, 35, 62, 39};
    }

    public static void A0A() {
        A08 = new String[]{"Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs", "P814sFImmOC", "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs", "RvJjsajerkLdUat3TDI8NPR3DDSWtO", "ZLSXhw", "wxtWSqUF9a7Aw2d1StIocmcoa4QX", "58xAXbC3p", "Zj1UZNXOzFX"};
    }

    static {
        A0A();
        A09();
    }

    public C0510Gh(QP qp, AbstractC03218d r3, Executor executor) {
        A0B();
        this.A03 = qp;
        this.A06 = new C02314g(this);
        this.A01 = executor;
        this.A00 = r3;
    }

    private final int A00(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStream = null;
        try {
            outputStream = this.A06.ACH(httpURLConnection);
            if (outputStream != null) {
                this.A06.AEn(outputStream, bArr);
            }
            return httpURLConnection.getResponseCode();
        } finally {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Multiple debug info for r8v0 'this'  com.facebook.ads.redexgen.X.Gh: [D('httpResponse' com.facebook.ads.redexgen.X.QJ), D('e' java.lang.Exception)] */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:54|55|(2:80|91)(4:70|(2:72|(1:74)(2:78|79))|(1:76)|77)) */
    /* JADX WARNING: Code restructure failed: missing block: B:55:?, code lost:
        r1.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x00f9, code lost:
        if (0 == 0) goto L_0x013a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0107, code lost:
        if (r8.A04.A86() != false) goto L_0x0109;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0109, code lost:
        r5 = r8.A04;
        r2 = com.facebook.ads.redexgen.X.C0510Gh.A08;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x011d, code lost:
        if (r2[0].charAt(28) != r2[2].charAt(28)) goto L_0x011f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x011f, code lost:
        r2 = com.facebook.ads.redexgen.X.C0510Gh.A08;
        r2[1] = "yaq9HQ3M3BI";
        r2[7] = "lkFDbfWlXmK";
        r5.A8k(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x012e, code lost:
        if (0 != 0) goto L_0x0130;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0130, code lost:
        r4.disconnect();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0133, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0139, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:?, code lost:
        throw new com.facebook.ads.redexgen.X.QX(r1, null);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:54:0x00d4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.facebook.ads.redexgen.X.QJ A01(com.facebook.ads.redexgen.X.QW r9) throws com.facebook.ads.redexgen.X.QX {
        /*
        // Method dump skipped, instructions count: 346
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0510Gh.A01(com.facebook.ads.redexgen.X.QW):com.facebook.ads.redexgen.X.QJ");
    }

    @Nullable
    private final QJ A02(QW qw) {
        if (this.A03.A04()) {
            A0C(qw);
        }
        QJ qj = null;
        try {
            qj = A01(qw);
            return qj;
        } catch (QX e) {
            this.A06.AA9(e);
            return qj;
        } catch (Exception e2) {
            this.A06.AA9(new QX(e2, qj));
            return qj;
        }
    }

    @Nullable
    private final QJ A03(String str, QY qy, QS qs) {
        return A02(new C0522Gt(str, qy, qs));
    }

    @Nullable
    private final QJ A04(String str, String str2, byte[] bArr, QS qs) {
        return A02(new C0512Gj(str, null, str2, bArr, qs));
    }

    private final QJ A05(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStream = null;
        byte[] bArr = null;
        try {
            inputStream = httpURLConnection.getErrorStream();
            if (inputStream != null) {
                bArr = this.A06.ACr(inputStream);
            }
            return new C0511Gi(httpURLConnection, bArr);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    private final QJ A06(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStream = null;
        byte[] bArr = null;
        try {
            inputStream = this.A06.ACG(httpURLConnection);
            if (inputStream != null) {
                bArr = this.A06.ACr(inputStream);
            }
            return new C0511Gi(httpURLConnection, bArr);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    private final HttpURLConnection A08(String str) throws IOException {
        try {
            new URL(str);
            TrafficStats.setThreadStatsTag(61453);
            return this.A06.ACF(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + A07(18, 19, 115), e);
        }
    }

    public static synchronized void A0B() {
        synchronized (C0510Gh.class) {
            if (CookieHandler.getDefault() == null) {
                CookieHandler.setDefault(new CookieManager());
            }
        }
    }

    private void A0C(QW qw) {
        StringBuilder sb = new StringBuilder(A07(169, 10, 70));
        boolean equals = qw.A03().equals(QV.A06);
        String A072 = A07(41, 1, 33);
        if (equals && qw.A06() != null) {
            sb.append(A07(7, 5, 55));
            sb.append(new String(qw.A06(), Charset.forName(A07(117, 5, 53))));
            sb.append(A072);
        }
        Map<String, String> A062 = qw.A02().A06();
        String[] strArr = A08;
        if (strArr[1].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[3] = "s0c02ga9sXqOOqZgqzjFkG4II3gfLx";
        strArr2[6] = "iECV1gT3x";
        for (Map.Entry<String, String> entry : A062.entrySet()) {
            sb.append(A07(2, 5, 74));
            sb.append(entry.getKey());
            sb.append(A07(66, 1, 118));
            sb.append(entry.getValue());
            sb.append(A072);
        }
        sb.append(A07(0, 2, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD));
        sb.append(qw.A05());
        sb.append(A072);
        String sb2 = sb.toString();
        A0E(sb2, 1, (sb2.length() / 4000) + 1);
    }

    private void A0D(QW qw, QL ql) {
        this.A05.A5d(this, ql, this.A01).A5E(qw);
        if (this.A03.A04()) {
            A0C(qw);
        }
    }

    private void A0E(String str, int i, int i2) {
        String str2 = A09 + A07(12, 6, 114) + i + A07(65, 1, 35) + i2;
        if (str.length() > 4000) {
            str.substring(0, 4000);
            A0E(str.substring(4000), i + 1, i2);
        }
    }

    private void A0F(String str, String str2, byte[] bArr, QL ql, QS qs) {
        A0D(new C0512Gj(str, null, str2, bArr, qs), ql);
    }

    private void A0G(HttpURLConnection httpURLConnection, QW qw) {
        Map<String, String> A062 = qw.A02().A06();
        QI A052 = qw.A02().A05();
        for (String str : A062.keySet()) {
            httpURLConnection.setRequestProperty(str, A062.get(str));
        }
        if (A052 != null) {
            Map<String, String> A5Q = A052.A5Q(this.A03.A03());
            for (String str2 : A5Q.keySet()) {
                httpURLConnection.setRequestProperty(str2, A5Q.get(str2));
            }
        }
    }

    private final void A0H(HttpURLConnection httpURLConnection, QW qw) throws IOException {
        QS A022 = qw.A02();
        httpURLConnection.setConnectTimeout(A022.A00());
        httpURLConnection.setReadTimeout(A022.A02());
        this.A06.ACX(httpURLConnection, qw.A03(), qw.A04());
    }

    private final boolean A0I(Throwable th, long j, QW qw) {
        QS A022 = qw.A02();
        long currentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.A04.A86()) {
            AbstractC0753Qa qa = this.A04;
            qa.A8M(A07(67, 15, 35) + currentTimeMillis + A07(42, 7, 23) + A022.A00() + A07(49, 7, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD) + A022.A02());
        }
        if (!this.A02) {
            long A002 = (long) A022.A00();
            if (A08[5].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[3] = "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y";
            strArr[6] = "g5URFCrsk";
            if (currentTimeMillis >= A002) {
                return true;
            }
            return false;
        } else if (currentTimeMillis >= ((long) A022.A02())) {
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00ff  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0132  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0188  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01a8  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01ac  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x01b8  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x01bd  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x017b A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.facebook.ads.redexgen.X.QJ A0J(com.facebook.ads.redexgen.X.QW r31) throws com.facebook.ads.redexgen.X.QX {
        /*
        // Method dump skipped, instructions count: 509
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0510Gh.A0J(com.facebook.ads.redexgen.X.QW):com.facebook.ads.redexgen.X.QJ");
    }

    @Override // com.facebook.ads.redexgen.X.QK
    @Nullable
    @Deprecated
    public final QJ ACP(String str, Map<String, String> map) {
        return A03(str, new QY(map), this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.QK
    @Nullable
    @Deprecated
    public final QJ ACQ(String str, byte[] bArr) {
        return A04(str, A07(122, 47, 42), bArr, this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final void ACR(String str, byte[] bArr, QL ql) {
        A0F(str, A07(122, 47, 42), bArr, ql, this.A03.A00());
    }
}
