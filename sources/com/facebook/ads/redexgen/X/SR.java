package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

public class SR implements AnonymousClass12 {
    public static byte[] A02;
    public static String[] A03;
    public final /* synthetic */ F2 A00;
    public final /* synthetic */ Runnable A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{80, 2, 87, 0, 5, 83, 83, 112, 71, 85, 67, 80, 70, 71, 70, 2, 116, 75, 70, 71, 77, 2, 75, 79, 82, 80, 71, 81, 81, 75, 77, 76, 2, 68, 75, 80, 71, 70, 70, 71, 123, 76, 94, 72, 91, 77, 76, 77, Byte.MAX_VALUE, 64, 77, 76, 70, 104, 77, 101, 70, 78, 78, 64, 71, 78, 96, 68, 89, 91, 76, 90, 90, 64, 70, 71};
    }

    public static void A02() {
        A03 = new String[]{"gOGPE1XGqnroAJihU7XGAfTAdWa21jWC", "Kcs30m2Uc1eFMAQARd2pOhOOSRswugkg", "xkwB", "vFLx4ryI8nKhSFQKGVnAMH5qObxMihWN", "NnwKyO2XMzRH0BXfVduboZ9DAJ5a5svW", "U3uRLxNZuwH", "U9y6Wp3Jad2LD1", "sOAhAPVwmiqriGnbgM61Uai8lTIQh97W"};
    }

    public SR(F2 f2, Runnable runnable) {
        this.A00 = f2;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABS(AbstractC0801Rw rw) {
        this.A00.A07.A05();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABT(AbstractC0801Rw rw) {
        this.A00.A07.A06();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABU(AbstractC0801Rw rw) {
        this.A00.A07.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABV(AbstractC0801Rw rw) {
        this.A00.A0G().removeCallbacks(this.A01);
        F2 f2 = this.A00;
        f2.A02 = rw;
        F2.A04(f2);
        this.A00.A07.A0E(rw);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABW(AbstractC0801Rw rw) {
        C0601Jz.A05(A00(38, 34, 72), A00(7, 31, 67), A00(0, 7, 7));
        this.A00.A07.A0C();
        this.A00.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABX(AbstractC0801Rw rw) {
        this.A00.A07.A07();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void ABY(AbstractC0801Rw rw, AdError adError) {
        this.A00.A0G().removeCallbacks(this.A01);
        this.A00.A0C.A0A().A4Z(adError.getErrorCode(), adError.getErrorMessage());
        if (!AdError.AD_PRESENTATION_ERROR.equals(adError) || !J4.A1B(this.A00.A0C)) {
            F2 f2 = this.A00;
            if (A03[2].length() != 4) {
                throw new RuntimeException();
            }
            A03[2] = "s57s";
            f2.A07.A0F(C0588Jl.A01(AdErrorType.INTERNAL_ERROR));
        } else {
            this.A00.A07.A0F(C0588Jl.A01(AdErrorType.AD_PRESENTATION_ERROR));
        }
        this.A00.A0P(rw);
        this.A00.A0O();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void onRewardedVideoActivityDestroyed() {
        this.A00.A07.A08();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass12
    public final void onRewardedVideoClosed() {
        this.A00.A07.A09();
    }
}
