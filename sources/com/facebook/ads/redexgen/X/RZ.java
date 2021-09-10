package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

public class RZ implements AnonymousClass0R {
    public static byte[] A07;
    public static String[] A08;
    public final C0780Rb A00;
    public final UUID A01 = UUID.randomUUID();
    public final AtomicInteger A02;
    public final AtomicReference<String> A03 = new AtomicReference<>();
    public final AtomicReference<String> A04 = new AtomicReference<>();
    public final AtomicReference<String> A05 = new AtomicReference<>();
    public final AtomicReference<EnumC01240c> A06 = new AtomicReference<>();

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A07 = new byte[]{5, 22, 13, 13, 6, 15, 60, 109, 126, 101, 101, 110, 103, 84, 120, 110, 122};
        String[] strArr = A08;
        if (strArr[7].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        A08[2] = "yQ17NavN7ZSoq7zHySEgN4tR7loqT";
    }

    public static void A03() {
        A08 = new String[]{"nHMpSWMsnsV7ze4k7TMdpo8w7eAhh5yl", "NZIGXtqvLJqJvnsqDFZQPtZx", "Ad1TvQCscaWcF7stMWLl9lRlqQAvL", "Ujq4dS9mEeqxvShJwD8UISSMYbM", "6D9", "oL3lqgBhSNj2gXyheQdgS3kbnnn96fNg", "3X2AVVUyUAfxSvaFg1Rh03BQkiDduKF9", "x5OfLFoNyht1tsSSgvPC5bYcCNR"};
    }

    public RZ(C0780Rb rb) {
        this.A00 = rb;
        this.A02 = new AtomicInteger(1);
    }

    private void A04(int i, String str) {
        if (!KT.A02(this)) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(A01(0, 7, 60) + AnonymousClass0X.A0O.getName(), str);
                } catch (JSONException unused) {
                }
                A05(jSONObject);
                this.A00.A00().A8i(i, jSONObject);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x001a */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x004a A[Catch:{ all -> 0x007e }] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0061 A[Catch:{ all -> 0x007e }] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074 A[Catch:{ all -> 0x007e }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[Catch:{ all -> 0x007e }, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0033 A[Catch:{ all -> 0x007e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void A05(org.json.JSONObject r6) {
        /*
        // Method dump skipped, instructions count: 162
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RZ.A05(org.json.JSONObject):void");
    }

    public final void A06(AnonymousClass0T r6, AnonymousClass0W... r7) {
        if (!KT.A02(this)) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (AnonymousClass0W r0 : r7) {
                    r0.A02(jSONObject);
                }
                A05(jSONObject);
                this.A00.A00().A8X(r6, jSONObject);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2R(String str, int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0R, AnonymousClass0X.A0H.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2S(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0S, AnonymousClass0X.A0L.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2T(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0T, AnonymousClass0X.A0L.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2U(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0U, AnonymousClass0X.A0L.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2V(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0V, AnonymousClass0X.A0L.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2W(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0W, AnonymousClass0X.A0L.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2X(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0X, AnonymousClass0X.A0L.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2Y() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0i, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2Z() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0Y, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2a() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0v, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2b() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0w, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2c(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0Z, AnonymousClass0X.A02.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2d(long j, int i, String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0x, AnonymousClass0X.A0G.A06(Integer.valueOf(i)), AnonymousClass0X.A0M.A06(str), AnonymousClass0X.A0K.A06(Long.valueOf(j)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2e() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0z, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2f() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0y, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2g() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A10, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2h(long j) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A11, AnonymousClass0X.A0K.A06(Long.valueOf(j)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2i(AnonymousClass0Q r6) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A20, AnonymousClass0X.A01.A06(r6));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2j(String str, String str2) {
        if (!KT.A02(this)) {
            try {
                this.A04.set(str);
                this.A03.set(str2);
                A06(AnonymousClass0T.A0a, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2k() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0b, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2l() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0c, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2m(long j, int i, String str, boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0d, AnonymousClass0X.A0K.A06(Long.valueOf(j)), AnonymousClass0X.A0G.A06(Integer.valueOf(i)), AnonymousClass0X.A0M.A06(str), AnonymousClass0X.A0A.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2n(long j) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0e, AnonymousClass0X.A0K.A06(Long.valueOf(j)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2o(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A18, AnonymousClass0X.A0D.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                String[] strArr = A08;
                if (strArr[7].length() != strArr[3].length()) {
                    throw new RuntimeException();
                }
                A08[6] = "gK8mXYwR0ckPpFtcTSNh6868pPwacmBZ";
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2p() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A19, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2q() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1C, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2r(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1D, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2s() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1E, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2t() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1F, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2u() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1G, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2v(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1H, AnonymousClass0X.A0H.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2w() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1I, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2x() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1L, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2y() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1J, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                if (A08[6].charAt(19) != 'h') {
                    throw new RuntimeException();
                }
                A08[6] = "TXE2cMU86vxtF7wI18ThzZXaU0uTRMLS";
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A2z(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1K, AnonymousClass0X.A0H.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A30() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1M, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A31(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1N, AnonymousClass0X.A0O.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A32() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1O, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A33() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1P, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A34() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1Q, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A35() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1R, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A36(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1S, AnonymousClass0X.A0H.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A37() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1T, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A38(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1U, AnonymousClass0X.A0H.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A39() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A22, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A08[4].length() != 3) {
                    throw new RuntimeException();
                }
                A08[6] = "VZoNBueTz9dHgRCK2oHhqd2tucTd08Xg";
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A3A() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A23, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A3B(AnonymousClass0Q r6) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1z, AnonymousClass0X.A01.A06(r6));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A3C(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A21, AnonymousClass0X.A0I.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A3D() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A24, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A3w(long j) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0g, AnonymousClass0X.A0K.A06(Long.valueOf(j)));
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A08[0].charAt(15) != 'k') {
                    throw new RuntimeException();
                }
                A08[1] = "iGvSb1Hz3BIwYRP6JXvlZVW4";
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A3x(long j) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0h, AnonymousClass0X.A0K.A06(Long.valueOf(j)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A42() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0j, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4W() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0k, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4X() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0o, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4Y(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0f, AnonymousClass0X.A09.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                if (A08[1].length() != 19) {
                    A08[5] = "sws4bQbg9GprWoTPEe05ZlT1gMn94mHS";
                    KT.A00(th, this);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4Z(int i, String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0p, AnonymousClass0X.A0G.A06(Integer.valueOf(i)), AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4a(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0n, AnonymousClass0X.A04.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4b() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0r, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4c() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0s, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4d() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0t, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4e() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A0u, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4t() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1X, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4u(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1Y, AnonymousClass0X.A0O.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4v() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1Z, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4w() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1a, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4x() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1b, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4y(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1c, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A4z(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1d, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A50(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1e, AnonymousClass0X.A0O.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A51(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1g, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A52() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1h, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A53(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1i, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A54(long j) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1j, AnonymousClass0X.A0K.A06(Long.valueOf(j)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A55(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1k, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7g() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1l, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7h(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1m, AnonymousClass0X.A08.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7i() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1n, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7j(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1o, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7k() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1p, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7l() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1q, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A7m(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1r, AnonymousClass0X.A0N.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A8T(int i, String str) {
        if (!KT.A02(this) && i >= 11000 && i <= 11099) {
            try {
                A04(i, str);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A93(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A12, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A94(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A13, AnonymousClass0X.A0I.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A08[4].length() != 3) {
                    throw new RuntimeException();
                }
                A08[1] = "n4mJfQKCjkVGyNTXc44lq1NfZCr";
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A95() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1u, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A96() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1v, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A97() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1w, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void A99() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A14, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A08[5].charAt(28) != 'u') {
                    A08[0] = "A3lONLTCXWx4KhpkbRCT5RNlo5C8otzX";
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void ACx(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A16, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void ACy() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A17, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void ADs(String str) {
        if (!KT.A02(this)) {
            try {
                this.A05.set(str);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void ADu(EnumC01240c r3) {
        if (!KT.A02(this)) {
            try {
                this.A06.set(r3);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEV() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1B, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEW() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A25, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEX(int i, String str) {
        if (!KT.A02(this) && i >= 12000 && i <= 12099) {
            try {
                A04(i, str);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEY() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A26, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEZ() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A27, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEa() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A28, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEb(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A29, AnonymousClass0X.A03.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEc() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2A, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEd() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2B, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEe(int i, @Nullable String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2C, AnonymousClass0X.A0G.A06(Integer.valueOf(i)), AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                if (A08[0].charAt(15) != 'k') {
                    throw new RuntimeException();
                }
                A08[2] = "2PKYVe8Qgwv7j3CDJ6bxblARvZgyh";
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEf(boolean z) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2D, AnonymousClass0X.A07.A06(Boolean.valueOf(z)));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEg() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2E, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEh(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2F, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEi() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2G, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEj(int i) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A2H, AnonymousClass0X.A0J.A06(Integer.valueOf(i)));
            } catch (Throwable th) {
                String[] strArr = A08;
                if (strArr[7].length() != strArr[3].length()) {
                    throw new RuntimeException();
                }
                A08[2] = "bm6dbMytZvpqzg8D3QKVLEJHQj3Ec";
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEo(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1V, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void AEp(String str) {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1W, AnonymousClass0X.A0M.A06(str));
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A08[1].length() != 19) {
                    A08[5] = "ivuB5Sydf2jbsPKu7So7nbx7xRGWOHbH";
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final String getId() {
        if (KT.A02(this)) {
            return null;
        }
        try {
            return this.A01.toString();
        } catch (Throwable th) {
            KT.A00(th, this);
            return null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0R
    public final void unregisterView() {
        if (!KT.A02(this)) {
            try {
                A06(AnonymousClass0T.A1A, new AnonymousClass0W[0]);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
