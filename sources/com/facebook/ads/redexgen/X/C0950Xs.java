package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Xs  reason: case insensitive filesystem */
public final class C0950Xs implements AnonymousClass8F {
    public static C0950Xs A05;
    public static byte[] A06;
    public static String[] A07;
    public static final AnonymousClass0T[] A08 = {AnonymousClass0T.A10, AnonymousClass0T.A0e, AnonymousClass0T.A11, AnonymousClass0T.A19, AnonymousClass0T.A0v, AnonymousClass0T.A0x, AnonymousClass0T.A1u, AnonymousClass0T.A1v, AnonymousClass0T.A1w};
    public AnonymousClass0U A00;
    public AnonymousClass8E A01;
    @Nullable
    public AnonymousClass8Q A02;
    public AnonymousClass93 A03;
    @Nullable
    public AbstractC0774Qv A04;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A07;
            if (strArr[6].length() != strArr[7].length()) {
                break;
            }
            String[] strArr2 = A07;
            strArr2[6] = "Hv2WK1fJh7GnXaP";
            strArr2[7] = "jwUFRNkRPBL5IaL";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            int i5 = copyOfRange[i4] - i3;
            String[] strArr3 = A07;
            if (strArr3[4].charAt(26) != strArr3[0].charAt(26)) {
                break;
            }
            String[] strArr4 = A07;
            strArr4[2] = "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG";
            strArr4[3] = "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw";
            copyOfRange[i4] = (byte) (i5 - 98);
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A06() {
        A06 = new byte[]{-63, -59, -14, -64, -63, -63, -56, -16, 2, 16, 16, 6, 12, 11, -67, 1, -2, 17, -2, -67, 6, 11, 6, 17, 6, -2, 9, 6, 23, 2, 1, 33, 20, 31, 30, 33, 35, 2, 20, 34, 34, 24, 30, 29, -13, 16, 35, 16, -8, 29, 24, 35, 24, 16, 27, 24, 41, 20, 19};
        if (A07[1].length() != 32) {
            String[] strArr = A07;
            strArr[2] = "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4";
            strArr[3] = "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA";
            return;
        }
        throw new RuntimeException();
    }

    public static void A07() {
        A07 = new String[]{"kZNWMB05A80rolZkZr5gINRkemJedumA", "PGnlsDLswmZGHAGkHnqyou4j", "CQczeQcoxNMNqPeDO5UPH4delPie3CF6", "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv", "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl", "iRM3Hx3PCEqf", "8yEJzjy1AvS4vnL", "zEXAgd0MZ6iopjt"};
    }

    static {
        A07();
        A06();
    }

    @Nullable
    public static AnonymousClass5T A00(XK xk, @Nullable AbstractC0774Qv qv) {
        if (!J4.A16(xk) || qv == null) {
            return null;
        }
        return AnonymousClass5U.A00().A01(qv);
    }

    public static AnonymousClass8Q A01(XK xk) {
        return AnonymousClass8R.A00().A01(xk);
    }

    public static synchronized C0950Xs A02() {
        C0950Xs xs;
        String[] strArr = A07;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[2] = "yNOYv8BJbeG1jc93xecDuC4SV0M6ZsAO";
        strArr2[3] = "rgM7W1LhEjhuRpvAxAxTebmxK2ArHzjw";
        synchronized (C0950Xs.class) {
            if (A05 == null) {
                A05 = new C0950Xs();
            }
            xs = A05;
        }
        return xs;
    }

    @Nullable
    public static QK A03(XK xk) {
        if (!J4.A12(xk)) {
            return null;
        }
        return C0755Qc.A01(xk);
    }

    @Nullable
    public static AbstractC0774Qv A04(XK xk, AnonymousClass8Q r18, @Nullable QK qk) {
        String str = null;
        if (!J4.A1f(xk) || qk == null) {
            return null;
        }
        EnumC0593Jr jr = EnumC0593Jr.A07;
        if (AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT) {
            str = AdSettings.getTestAdType().getAdTypeString();
        }
        return AbstractC0775Qw.A00().A01(xk, r18, qk, KI.A05(xk), new C0949Xr(new KB(xk, A05(0, 0, 122), null, jr, str, 0, AdSettings.isTestMode(xk), AdSettings.isMixedAudience(), new C0598Jw(), LQ.A01(J4.A0H(xk)), null, null), xk), C0772Qt.A00().A00());
    }

    public static void A08() {
        String A052 = A05(31, 28, 77);
        if (A07[5].length() != 20) {
            A07[5] = "4ii3kc4oT9MJsiDOLfNQb5ib2";
            C0601Jz.A05(A052, A05(7, 24, 59), A05(0, 7, 46));
            return;
        }
        throw new RuntimeException();
    }

    public static void A09(XK xk, @Nullable AnonymousClass5T r2) {
        if (J4.A16(xk) && r2 != null) {
            AnonymousClass5R.A00().A01(r2, xk);
        }
    }

    public static void A0A(XK xk, @Nullable AbstractC0774Qv qv) {
        if (J4.A0h(xk) && qv != null) {
            new C02645o(xk, qv, new C02655p(), DynamicLoaderImpl.getBidderTokenProviderApi());
        }
    }

    public static void A0B(XK xk, @Nullable AbstractC0774Qv qv) {
        if (qv != null) {
            J7.A00(xk, qv);
        }
    }

    public final synchronized AnonymousClass8Q A0C(AnonymousClass8D r2) {
        if (this.A02 == null) {
            this.A02 = A01(r2.A00());
        }
        return this.A02;
    }

    @Nullable
    public final synchronized AbstractC0774Qv A0D() {
        return this.A04;
    }

    public final synchronized void A0E(XK xk) {
        if (this.A04 == null) {
            this.A02 = A01(xk);
            this.A04 = A04(xk, this.A02, A03(xk));
            A09(xk, A00(xk, this.A04));
            A0A(xk, this.A04);
            A0B(xk, this.A04);
            if (this.A04 != null) {
                this.A04.A5O();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    public final JC A5V(XK xk) {
        return C1122br.A01(xk);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    public final synchronized AnonymousClass8E A5j(AnonymousClass8D r2) {
        if (this.A01 == null) {
            this.A01 = new C0947Xp(this);
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    public final synchronized AbstractC03218d A6D(AnonymousClass8D r2) {
        return new C0932Xa(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    public final synchronized AnonymousClass8G A6M(AnonymousClass8D r5) {
        C0945Xn xn;
        xn = new C0945Xn(this, r5);
        String[] strArr = A07;
        if (strArr[4].charAt(26) != strArr[0].charAt(26)) {
            throw new RuntimeException();
        }
        A07[1] = "2Vt1OUprKjNjnyD3";
        return xn;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002b, code lost:
        if (com.facebook.ads.redexgen.X.C0950Xs.A07[5].length() == 20) goto L_0x003a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002d, code lost:
        r2 = com.facebook.ads.redexgen.X.C0950Xs.A07;
        r2[4] = "VIV2EvMRfEPiWlvmDKty9fFKFHJul9Yn";
        r2[0] = "0wfCQdIt8NwFYvPKQ0QtM4LE4vJ9WdpV";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0039, code lost:
        return r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003f, code lost:
        throw new java.lang.RuntimeException();
     */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    @androidx.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized com.facebook.ads.redexgen.X.AnonymousClass0U A6Y(com.facebook.ads.redexgen.X.AnonymousClass8D r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = com.facebook.ads.redexgen.X.J4.A0q(r5)     // Catch:{ all -> 0x0040 }
            if (r0 != 0) goto L_0x000a
            r0 = 0
            monitor-exit(r4)
            return r0
        L_0x000a:
            com.facebook.ads.redexgen.X.0U r0 = r4.A00
            if (r0 != 0) goto L_0x001d
            com.facebook.ads.redexgen.X.0V r1 = com.facebook.ads.redexgen.X.AnonymousClass0V.A00()
            com.facebook.ads.redexgen.X.Xq r0 = new com.facebook.ads.redexgen.X.Xq
            r0.<init>(r4, r5)
            com.facebook.ads.redexgen.X.0U r0 = r1.A01(r0)
            r4.A00 = r0
        L_0x001d:
            com.facebook.ads.redexgen.X.0U r3 = r4.A00
            monitor-exit(r4)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C0950Xs.A07
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 20
            if (r1 == r0) goto L_0x003a
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0950Xs.A07
            java.lang.String r1 = "VIV2EvMRfEPiWlvmDKty9fFKFHJul9Yn"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "0wfCQdIt8NwFYvPKQ0QtM4LE4vJ9WdpV"
            r0 = 0
            r2[r0] = r1
            return r3
        L_0x003a:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x0040:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0950Xs.A6Y(com.facebook.ads.redexgen.X.8D):com.facebook.ads.redexgen.X.0U");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    public final synchronized AnonymousClass8H A76(AnonymousClass8D r2) {
        return new C0946Xo(this, r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8F
    public final synchronized AnonymousClass93 A7C() {
        if (this.A03 == null) {
            this.A03 = new AnonymousClass93();
            A08();
        }
        return this.A03;
    }
}
