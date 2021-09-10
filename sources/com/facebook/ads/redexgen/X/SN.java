package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;

public class SN implements AnonymousClass11 {
    public static byte[] A07;
    public static String[] A08;
    public boolean A00 = false;
    public boolean A01 = false;
    public boolean A02 = false;
    public final /* synthetic */ long A03;
    public final /* synthetic */ F4 A04;
    public final /* synthetic */ C03388u A05;
    public final /* synthetic */ Runnable A06;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{57, 46, 46, 51, 46, 67, 93, 73};
    }

    public static void A02() {
        A08 = new String[]{"NdU3dTBV9vpPy6YybD2Qky8Xp9oiymUK", "iGXlqhzjj4re98AW13mRmUxQt0ip7heY", "i4JUsV98mtHDxTx4GI", "uX4rqc35PVKyGMlab4Ievks4AeXTKuCR", "rLO13ppjW7wMy", "YX8F9O1K3gbo5OniWABn3Un2bmHHQded", "vQnjhTu4uDmsPPd6tCmWM2PRV3nZ7tVA", "6doRqStA7fW6oocsKlayDSgQ6jqa5ScM"};
    }

    public SN(F4 f4, Runnable runnable, long j, C03388u r6) {
        this.A04 = f4;
        this.A06 = runnable;
        this.A03 = j;
        this.A05 = r6;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass11
    public final void AAt(C0794Rp rp) {
        if (!this.A00) {
            this.A00 = true;
            F4.A05(this.A04, this.A05.A04(EnumC03428y.A03), null);
        }
        if (this.A04.A07 != null) {
            this.A04.A07.A0B();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass11
    public final void AAu(C0794Rp rp) {
        if (rp == this.A04.A01) {
            this.A04.A0G().removeCallbacks(this.A06);
            F4 f4 = this.A04;
            f4.A02 = rp;
            f4.A07.A0E(rp);
            if (!this.A02) {
                this.A02 = true;
                F4.A05(this.A04, this.A05.A04(EnumC03428y.A05), F4.A02(this.A04, this.A03));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass11
    public final void AAv(C0794Rp rp) {
        if (!this.A01) {
            this.A01 = true;
            F4 f4 = this.A04;
            C03388u r5 = this.A05;
            EnumC03428y r4 = EnumC03428y.A04;
            String[] strArr = A08;
            if (strArr[3].charAt(16) != strArr[0].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "w5hMaJohNUScvyTMb6YchiksjKW7iU2S";
            strArr2[0] = "lwejxTPFHVjkcDrib15s3w6szJ9sWeR6";
            F4.A05(f4, r5.A04(r4), null);
        }
        this.A04.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass11
    public final void AAx(C0794Rp rp, C0588Jl jl) {
        if (rp == this.A04.A01) {
            this.A04.A0G().removeCallbacks(this.A06);
            this.A04.A0P(rp);
            if (!this.A02) {
                this.A02 = true;
                Map A022 = F4.A02(this.A04, this.A03);
                A022.put(A00(0, 5, 58), String.valueOf(jl.A04().getErrorCode()));
                A022.put(A00(5, 3, 72), String.valueOf(jl.A05()));
                F4.A05(this.A04, this.A05.A04(EnumC03428y.A05), A022);
            }
            this.A04.A0O();
        }
    }
}
