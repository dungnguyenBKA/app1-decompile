package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class KE {
    public static byte[] A08;
    public static String[] A09;
    public static final ThreadFactoryC0635Lk A0A = new ThreadFactoryC0635Lk();
    public static final Executor A0B = Executors.newCachedThreadPool(A0A);
    public long A00 = -1;
    public KB A01;
    public KD A02;
    @Nullable
    public String A03;
    public Map<String, String> A04;
    public final XJ A05;
    public final KF A06;
    public final String A07;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A08 = new byte[]{63, 58, 104, 110, 57, 61, 108, 122, 105, 107, 119, 117, 78, 65, 68, 72, 67, 89, 82, 95, 72, 92, 88, 72, 94, 89, 82, 68, 73, 98, 88, 11, 121, 101, 17, 11, 100, 101, 10, 108, 99, 102, 102, 10, 88, 79, 73, 79, 67, 92, 79, 78, 20, 53, 122, 28, 51, 54, 54, 122, 63, 40, 40, 53, 40, 122, 57, 53, 62, 63, 122, 1, Byte.MAX_VALUE, 41, 7, 122, Byte.MAX_VALUE, 41, 38, 7, 72, 6, 13, 28, 31, 7, 26, 3, 72, 11, 7, 6, 6, 13, 11, 28, 1, 7, 6, 88, 90, 81, 90, 77, 86, 92, 40, 35, 50, 49, 41, 52, 45, 55, 54, 31, 48, 53, 53, 17, 54, 54, 50};
    }

    public static void A0D() {
        A09 = new String[]{"jHqhq9rNYSSw", "oXXasJZKheaqJc0eeEDaqL9fqatR6yjH", "HZfV4vlkHnOHSqnfuZFUyeF6uFp1ZMa", "ctGGwCiuI8x2mhpb6iYaTSYvEv38GMVI", "hooRY0JbS2MOmGEMLhPLLpjKFYik6yA6", "UUaZIloNsnWPLtNmJ6BLiWitv8uuoCfe", "8CdfBsPlUzO8votQ5auuotJRUMhSpJIA", "YHWLBZkCs2mlLEga5omnGJot9WkTYHBz"};
    }

    static {
        A0D();
        A0C();
    }

    public KE(XJ xj) {
        this.A05 = xj;
        this.A06 = KF.A00();
        this.A07 = KI.A00();
    }

    /* access modifiers changed from: private */
    public QL A04(long j) {
        return new C1152cM(this, j);
    }

    private void A0B() {
        XJ xj = this.A05;
        if (xj != null && C0755Qc.A0C(xj)) {
            C03238f r5 = new C03238f(A06(7, 5, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
            r5.A03(1);
            this.A05.A04().A8V(A06(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 7, 22), C03228e.A1f, r5);
        }
    }

    private void A0E(int i, String str) {
        String A062 = A06(113, 10, 9);
        C0601Jz.A05(A062, A06(36, 16, 122), A06(0, 7, 90));
        C0601Jz.A04(A062, String.format(Locale.US, A06(52, 26, 10), Integer.valueOf(i), str));
    }

    /* access modifiers changed from: private */
    public void A0F(C0588Jl jl) {
        KD kd = this.A02;
        if (kd != null) {
            kd.AA7(jl);
        }
    }

    /* access modifiers changed from: private */
    public void A0G(C0588Jl jl) {
        ExecutorC0627Lc.A00(new C1154cO(this, jl));
    }

    /* access modifiers changed from: private */
    public void A0M(C1155cP cPVar) {
        KD kd = this.A02;
        if (kd != null) {
            kd.ABk(cPVar);
        }
    }

    private void A0N(C1155cP cPVar) {
        AbstractC0774Qv A0D;
        ExecutorC0627Lc.A00(new C1153cN(this, cPVar));
        if (J4.A1W(this.A05) && (A0D = C0950Xs.A02().A0D()) != null) {
            A0D.A5O();
        }
    }

    /* JADX INFO: Multiple debug info for r12v0 'this'  com.facebook.ads.redexgen.X.KE: [D('serverResponse' com.facebook.ads.redexgen.X.KH), D('e' java.lang.Exception)] */
    /* JADX INFO: Multiple debug info for r8v0 java.lang.String: [D('placement' com.facebook.ads.redexgen.X.8w), D('errorMessage' java.lang.String)] */
    /* access modifiers changed from: private */
    public void A0O(String str, long j) {
        String str2;
        try {
            KH A062 = this.A06.A06(this.A05, str, j, this.A03);
            C03408w A002 = A062.A00();
            C02675r.A06(this.A05.A00(), str);
            if (A002 != null) {
                J4.A0N(this.A05).A20(A002.A08());
                DynamicLoaderFactory.makeLoader(this.A05).getInitApi().maybeAttachCrashListener(this.A05);
                AnonymousClass28.A0P(this.A05.A00(), A002.A06());
                KA.A06(A002.A05().A0B(), this.A01);
                C0646Lv.A01(this.A05, A0B, A002);
                C03238f r7 = new C03238f(A06(29, 7, 123) + LC.A02());
                r7.A04(1);
                r7.A08(false);
                this.A05.A04().A8t(A06(99, 7, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), C03228e.A1F, r7);
            }
            int i = KC.A00[A062.A01().ordinal()];
            if (i == 1) {
                C1155cP cPVar = (C1155cP) A062;
                if (A002 != null) {
                    if (A002.A05().A0E()) {
                        KA.A08(str, this.A01);
                    }
                    if (this.A04 != null) {
                        str2 = this.A04.get(A06(12, 17, 93));
                    } else {
                        str2 = null;
                    }
                    if (!TextUtils.isEmpty(A062.A02()) && !TextUtils.isEmpty(str2)) {
                        new J2(this.A05, str2, A062.A02()).A0C();
                    }
                }
                this.A05.A0A().A2n(LZ.A01(this.A00));
                A0N(cPVar);
            } else if (i != 2) {
                AdErrorType adErrorType = AdErrorType.UNKNOWN_RESPONSE;
                this.A05.A0A().A2m(LZ.A01(this.A00), adErrorType.getErrorCode(), str, adErrorType.isPublicError());
                A0G(C0588Jl.A02(adErrorType, str));
            } else {
                C1156cQ cQVar = (C1156cQ) A062;
                String finalErrMessage = cQVar.A04();
                AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(cQVar.A03(), AdErrorType.ERROR_MESSAGE);
                A0E(cQVar.A03(), finalErrMessage);
                if (finalErrMessage == null) {
                    finalErrMessage = str;
                }
                this.A05.A0A().A2m(LZ.A01(this.A00), adErrorTypeFromCode.getErrorCode(), finalErrMessage, adErrorTypeFromCode.isPublicError());
                A0G(C0588Jl.A02(adErrorTypeFromCode, finalErrMessage));
            }
        } catch (Exception e) {
            String errorMessage = e.getMessage();
            AdErrorType adErrorType2 = AdErrorType.PARSER_FAILURE;
            AnonymousClass0R A0A2 = this.A05.A0A();
            long A012 = LZ.A01(this.A00);
            int errorCode = adErrorType2.getErrorCode();
            boolean isPublicError = adErrorType2.isPublicError();
            if (A09[2].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A09;
            strArr[3] = "KiE48ndyzelvmzNW6bdZaRvZ6MMpVlPo";
            strArr[1] = "apnThSuxD28F5jipUISQB7XXqWmqfDCi";
            A0A2.A2m(A012, errorCode, errorMessage, isPublicError);
            A0G(C0588Jl.A02(adErrorType2, errorMessage));
        }
    }

    /* access modifiers changed from: private */
    public void A0P(String str, long j) {
        A0B.execute(new C1151cL(this, str, j));
    }

    /* JADX INFO: Multiple debug info for r10v0 'this'  com.facebook.ads.redexgen.X.KE: [D('lastResponse' java.lang.String), D('networkError' com.facebook.ads.internal.protocol.AdErrorType)] */
    public final void A0Q(KB kb) {
        this.A00 = System.currentTimeMillis();
        if (LX.A00(this.A05) == LW.A07) {
            A0B();
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String A062 = A06(78, 21, 56);
            this.A05.A0A().A2m(LZ.A01(this.A00), adErrorType.getErrorCode(), A062, adErrorType.isPublicError());
            A0G(new C0588Jl(adErrorType, A062));
            return;
        }
        this.A01 = kb;
        C03318n.A0B(this.A05);
        if (KA.A09(kb)) {
            String A022 = KA.A02(kb);
            if (A022 != null) {
                this.A05.A0A().AEV();
                A0P(A022, 0);
                return;
            }
            AdErrorType adErrorType2 = AdErrorType.LOAD_TOO_FREQUENTLY;
            this.A05.A0A().A2m(LZ.A01(this.A00), adErrorType2.getErrorCode(), adErrorType2.getDefaultErrorMessage(), adErrorType2.isPublicError());
            A0G(C0588Jl.A02(adErrorType2, null));
            return;
        }
        A0B.execute(new C1150cK(this, kb));
    }

    public final void A0R(KD kd) {
        this.A02 = kd;
    }
}
