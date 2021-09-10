package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo;
import com.facebook.ads.internal.bridge.gms.AdvertisingId;
import java.lang.reflect.Method;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.5h  reason: invalid class name and case insensitive filesystem */
public final class C02575h {
    public static byte[] A00;
    public static String[] A01;
    public static final String A02 = AnonymousClass5Z.class.getSimpleName();

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 58);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        byte[] bArr = {112, 82, 93, 93, 92, 71, 19, 84, 86, 71, 19, 82, 87, 69, 86, 65, 71, 90, 64, 90, 93, 84, 19, 90, 93, 85, 92, 19, 92, 93, 19, 94, 82, 90, 93, 19, 71, 91, 65, 86, 82, 87, 29, 91, 87, 85, 22, 95, 87, 87, 95, 84, 93, 22, 89, 86, 92, 74, 87, 81, 92, 22, 95, 85, 75, 82, 94, 92, 31, 86, 94, 94, 86, 93, 84, 31, 80, 95, 85, 67, 94, 88, 85, 31, 86, 92, 66, 31, 80, 85, 66, 31, 88, 85, 84, 95, 69, 88, 87, 88, 84, 67, 31, 112, 85, 71, 84, 67, 69, 88, 66, 88, 95, 86, 120, 85, 114, 93, 88, 84, 95, 69, 109, 97, 99, 32, 105, 97, 97, 105, 98, 107, 32, 111, 96, 106, 124, 97, 103, 106, 32, 105, 99, 125, 32, 111, 106, 125, 32, 103, 106, 107, 96, 122, 103, 104, 103, 107, 124, 32, 125, 107, 124, 120, 103, 109, 107, 32, 93, 90, 79, 92, 90, 18, 30, 28, 95, 22, 30, 30, 22, 29, 20, 95, 16, 31, 21, 3, 30, 24, 21, 95, 22, 28, 2, 95, 18, 30, 28, 28, 30, 31, 95, 54, 30, 30, 22, 29, 20, 33, 29, 16, 8, 34, 20, 3, 7, 24, 18, 20, 2, 36, 5, 24, 29, 67, 65, 74, 65, 86, 77, 71, 106, 104, 121, 76, 105, 123, 104, Byte.MAX_VALUE, 121, 100, 126, 100, 99, 106, 68, 105, 68, 99, 107, 98, 123, 121, 104, 85, 120, 33, 59, 15, 39, 39, 47, 36, 45, 24, 36, 41, 49, 27, 45, 58, 62, 33, 43, 45, 59, 9, 62, 41, 33, 36, 41, 42, 36, 45, 43, 49, 14, 43, 47, 43, 54, 3, 38, 22, 48, 35, 33, 41, 43, 44, 37, 7, 44, 35, 32, 46, 39, 38};
        if (A01[0].charAt(25) != 'L') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[7] = "5c2qL4dH8BvO0Uzn9h0t1hzuT";
        strArr[3] = "iopOujFX2mYmGwDZvEry";
        A00 = bArr;
    }

    public static void A06() {
        A01 = new String[]{"o8zuart55Bmx3Pw0EGryupigSLJoPiZx", "bq35BXrVyo2MmN2pvK0AAoIbsBJXmHFn", "Ag4UQwTEuL9TJhKNxG6", "PmxOul6ExA7xevKGmIJ7", "bJjslG0QPgIDYXjJzGe0RXJuWF5PAt6I", "GLZoSVJacutm5kJ9CSmVpuybEaBnhneX", "dIwLXajRtHFv7I4e8IdUhcaSFtkhp8vw", "TtnuuoV6cihzxwpt43jVepBLS"};
    }

    static {
        A06();
        A05();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r3 != false) goto L_0x0036;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.redexgen.X.AnonymousClass5Z A00(com.facebook.ads.redexgen.X.AnonymousClass8D r5) {
        /*
            android.os.Looper r1 = android.os.Looper.myLooper()
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            if (r1 == r0) goto L_0x004b
            com.facebook.ads.redexgen.X.5Z r4 = A01(r5)
            if (r4 == 0) goto L_0x0036
            java.lang.String r0 = r4.A03()
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C02575h.A01
            r0 = 0
            r1 = r1[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            r0 = 76
            if (r1 == r0) goto L_0x002d
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x002d:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C02575h.A01
            java.lang.String r1 = "uy9l7RLQ2P1HyKRuXc5qKTdvpqbxTZwF"
            r0 = 4
            r2[r0] = r1
            if (r3 == 0) goto L_0x003a
        L_0x0036:
            com.facebook.ads.redexgen.X.5Z r4 = A02(r5)
        L_0x003a:
            if (r4 == 0) goto L_0x0046
            java.lang.String r0 = r4.A03()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x004a
        L_0x0046:
            com.facebook.ads.redexgen.X.5Z r4 = A03(r5)
        L_0x004a:
            return r4
        L_0x004b:
            r2 = 0
            r1 = 43
            r0 = 9
            java.lang.String r1 = A04(r2, r1, r0)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02575h.A00(com.facebook.ads.redexgen.X.8D):com.facebook.ads.redexgen.X.5Z");
    }

    @Nullable
    @VisibleForTesting
    public static AnonymousClass5Z A01(AnonymousClass8D r3) {
        AdvertisingId advertisingIdInfoDirectly = AdvertisingId.getAdvertisingIdInfoDirectly(r3);
        if (advertisingIdInfoDirectly != null) {
            return new AnonymousClass5Z(advertisingIdInfoDirectly.getId(), advertisingIdInfoDirectly.isLimitAdTracking(), AnonymousClass5Y.A03);
        }
        return null;
    }

    @Nullable
    @VisibleForTesting
    public static AnonymousClass5Z A02(AnonymousClass8D r10) {
        Object A002;
        Method A022;
        Object A003;
        boolean z = true;
        Method A023 = C02585i.A02(A04(173, 52, 75), A04(257, 29, 114), Context.class);
        if (A023 == null || (A002 = C02585i.A00(null, A023, r10)) == null || ((Integer) A002).intValue() != 0 || (A022 = C02585i.A02(A04(65, 57, 11), A04(232, 20, 55), Context.class)) == null || (A003 = C02585i.A00(null, A022, r10)) == null) {
            return null;
        }
        Method A012 = C02585i.A01(A003.getClass(), A04(252, 5, 38), new Class[0]);
        Method A013 = C02585i.A01(A003.getClass(), A04(286, 24, 120), new Class[0]);
        if (A012 == null || A013 == null) {
            return null;
        }
        String id = (String) C02585i.A00(A003, A012, new Object[0]);
        Boolean bool = (Boolean) C02585i.A00(A003, A013, new Object[0]);
        if (id == null) {
            return null;
        }
        if (bool == null || !bool.booleanValue()) {
            z = false;
        }
        return new AnonymousClass5Z(id, z, AnonymousClass5Y.A07);
    }

    @SuppressLint({"CatchGeneralException"})
    @VisibleForTesting
    public static AnonymousClass5Z A03(AnonymousClass8D r7) {
        ServiceConnectionC02565g r5 = new ServiceConnectionC02565g();
        Intent intent = new Intent(A04(122, 51, 52));
        intent.setPackage(A04(43, 22, 2));
        if (r7.bindService(intent, r5, 1)) {
            try {
                GmsAttributionProvider$GoogleAdInfo gmsAttributionProvider$GoogleAdInfo = new GmsAttributionProvider$GoogleAdInfo(r5.A02());
                return new AnonymousClass5Z(gmsAttributionProvider$GoogleAdInfo.A03(), gmsAttributionProvider$GoogleAdInfo.A04(), AnonymousClass5Y.A08);
            } catch (Throwable th) {
                r7.A04().A8V(A04(225, 7, 30), C03228e.A19, new C03238f(th));
            } finally {
                r7.unbindService(r5);
            }
        }
        return null;
    }
}
