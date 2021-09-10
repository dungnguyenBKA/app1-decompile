package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

public class SL implements AbstractC01450x {
    public static byte[] A02;
    public static String[] A03;
    public final /* synthetic */ F5 A00;
    public final /* synthetic */ Runnable A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] ^ i3) ^ 34;
            String[] strArr = A03;
            if (strArr[5].charAt(5) != strArr[1].charAt(5)) {
                String[] strArr2 = A03;
                strArr2[5] = "sVZQ6Ml9fBzEITS5ybXWTtwXQoWqWbAN";
                strArr2[1] = "MwEMOJFXQFuJpU8zWQ85tYeWswvxAO3B";
                copyOfRange[i4] = (byte) i5;
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{110, 98, 109, 56, 106, 99, 98, 61, 15, 42, 47, 62, 58, 43, 60, 110, 39, 61, 110, 32, 59, 34, 34, 110, 33, 32, 110, 34, 33, 47, 42, 7, 32, 58, 43, 60, 61, 58, 39, 58, 39, 47, 34, 15, 42, 93, 122, 96, 113, 102, 103, 96, 125, 96, 125, 117, 120, 52, 125, 121, 100, 102, 113, 103, 103, 125, 123, 122, 52, 114, 125, 102, 113, 112, 106, 101, 111, 121, 100, 98, 111, 37, 98, 101, Byte.MAX_VALUE, 110, 101, Byte.MAX_VALUE, 37, 106, 104, Byte.MAX_VALUE, 98, 100, 101, 37, 93, 66, 78, 92, 47, 62, 39, 96, 97, 70, 97, 123, 106, 125, 124, 123, 102, 123, 102, 110, 99, 67, 96, 104, 104, 102, 97, 104, 70, 98, Byte.MAX_VALUE, 125, 106, 124, 124, 102, 96, 97};
    }

    public static void A02() {
        A03 = new String[]{"CodBKn6Rx4Nd2NCJ9VlYeJoUvBmT0K9p", "5Rf8WjvcJZOUdeEvkpnEyeT6h0OK8cqO", "9H9umRBAwWbsUQsHVAjP1GvoefoGWKiv", "nqryT6E7", "BkgpBj4q", "vUmBCwuwnOwC6wDkIlhiKnb32h6Srhe1", "47HB5bdSxtP74yDXUEGozfNjn4WOkRGN", "xids5JFtyjlo4uGEh5DI8Wwgi7h0jVQM"};
    }

    public SL(F5 f5, Runnable runnable) {
        this.A00 = f5;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAN(C0792Rn rn, String str, boolean z) {
        this.A00.A07.A0B();
        boolean z2 = !TextUtils.isEmpty(str);
        if (z && z2) {
            Intent intent = new Intent(A00(74, 26, 41));
            intent.setData(Uri.parse(str));
            C0616Kp.A0C(this.A00.A0C, intent);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAO(C0792Rn rn) {
        this.A00.A07.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAP(C0792Rn rn) {
        this.A00.A07.A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAQ(C0792Rn rn) {
        if (rn == this.A00.A01) {
            if (rn == null) {
                this.A00.A0C.A04().A8V(A00(100, 3, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS), C03228e.A0M, new C03238f(A00(8, 37, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS)));
                AAR(rn, AdError.internalError(AdError.INTERNAL_ERROR_2004));
                return;
            }
            this.A00.A0G().removeCallbacks(this.A01);
            F5 f5 = this.A00;
            f5.A02 = rn;
            F5.A01(f5);
            this.A00.A07.A0E(rn);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAR(C0792Rn rn, AdError adError) {
        if (rn == this.A00.A01) {
            this.A00.A0G().removeCallbacks(this.A01);
            this.A00.A0P(rn);
            if (!J4.A0m(this.A00.A0C)) {
                this.A00.A0O();
            }
            this.A00.A0C.A0A().A4Z(adError.getErrorCode(), adError.getErrorMessage());
            this.A00.A07.A0F(new C0588Jl(adError.getErrorCode(), adError.getErrorMessage()));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAS(C0792Rn rn) {
        C0601Jz.A05(A00(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 31, 45), A00(45, 29, 54), A00(0, 8, 121));
        this.A00.A07.A0C();
        this.A00.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAT() {
        this.A00.A07.A07();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAU() {
        this.A00.A07.A05();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void AAV() {
        this.A00.A07.A06();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01450x
    public final void onInterstitialActivityDestroyed() {
        this.A00.A07.A00();
    }
}
