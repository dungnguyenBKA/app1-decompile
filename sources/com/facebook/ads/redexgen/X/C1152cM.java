package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.json.JSONException;

/* renamed from: com.facebook.ads.redexgen.X.cM  reason: case insensitive filesystem */
public class C1152cM implements QL {
    public static byte[] A02;
    public final /* synthetic */ long A00;
    public final /* synthetic */ KE A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 84);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{14, 94, 13, 88, 15, 5, 94, 14, 90, 95, 13, 11, 87, 12, 9, 14, 16, 9, 21, 20, 31, 34, 57, 63, 42, 46, 51, 53, 52, 96, 122, 83, 101, 114, 118, 101, 114, 32, 101, 114, 114, 111, 114, 32, 111, 99, 99, 117, 114, 114, 101, 100, 117, 67, 84, 80, 67, 84, 6, 84, 67, 86, 74, 79, 67, 66, 6, 85, 83, 69, 69, 67, 85, 85, 64, 83, 74, 74, 95, 19, 18, 63, 19, 17, 12, 16, 25, 8, 25, 61, 60, 23, 32, 32, 61, 32};
    }

    public C1152cM(KE ke, long j) {
        this.A01 = ke;
        this.A00 = j;
    }

    /* JADX INFO: Multiple debug info for r13v0 'this'  com.facebook.ads.redexgen.X.cM: [D('e' org.json.JSONException), D('response' com.facebook.ads.redexgen.X.QJ), D('errorType' com.facebook.ads.internal.protocol.AdErrorType)] */
    private final void A02(QX qx) {
        KA.A07(KE.A02(this.A01));
        try {
            QJ A002 = qx.A00();
            if (A002 != null) {
                String A5i = A002.A5i();
                KH A06 = KE.A03(this.A01).A06(KE.A01(this.A01), A5i, this.A00, KE.A08(this.A01));
                if (A06.A01() == KG.A03) {
                    C1156cQ cQVar = (C1156cQ) A06;
                    String A04 = cQVar.A04();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(cQVar.A03(), AdErrorType.ERROR_MESSAGE);
                    if (A04 != null) {
                        A5i = A04;
                    }
                    KE.A01(this.A01).A0A().A2m(LZ.A01(KE.A00(this.A01)), adErrorTypeFromCode.getErrorCode(), A5i, adErrorTypeFromCode.isPublicError());
                    KE.A0I(this.A01, C0588Jl.A02(adErrorTypeFromCode, A5i));
                    return;
                }
            }
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String message = qx.getMessage();
            KE.A01(this.A01).A0A().A2m(LZ.A01(KE.A00(this.A01)), adErrorType.getErrorCode(), message, adErrorType.isPublicError());
            KE.A0I(this.A01, C0588Jl.A02(adErrorType, message));
        } catch (JSONException e) {
            AdErrorType adErrorType2 = AdErrorType.NETWORK_ERROR;
            String message2 = qx.getMessage();
            AnonymousClass0R A0A = KE.A01(this.A01).A0A();
            long A012 = LZ.A01(KE.A00(this.A01));
            int errorCode = adErrorType2.getErrorCode();
            A0A.A2m(A012, errorCode, A00(16, 15, 14) + e.getMessage(), adErrorType2.isPublicError());
            KE.A0I(this.A01, C0588Jl.A02(adErrorType2, message2));
        }
    }

    @Override // com.facebook.ads.redexgen.X.QL
    public final void A9m(QJ qj) {
        C0601Jz.A05(A00(79, 10, 40), A00(52, 27, 114), A00(8, 8, 59));
        if (qj != null) {
            String A5i = qj.A5i();
            KA.A07(KE.A02(this.A01));
            KE.A0L(this.A01, A5i, this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.QL
    public final void AA8(Exception exc) {
        C0601Jz.A05(A00(89, 7, 6), A00(31, 21, 84), A00(0, 8, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION));
        if (QX.class.equals(exc.getClass())) {
            A02((QX) exc);
            return;
        }
        AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
        String message = exc.getMessage();
        KE.A01(this.A01).A0A().A2m(LZ.A01(KE.A00(this.A01)), adErrorType.getErrorCode(), message, adErrorType.isPublicError());
        KE.A0I(this.A01, C0588Jl.A02(adErrorType, message));
    }
}
