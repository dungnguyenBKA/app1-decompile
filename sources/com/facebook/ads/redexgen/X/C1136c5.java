package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.c5  reason: case insensitive filesystem */
public class C1136c5 extends AbstractC01360o {
    public static byte[] A01;
    public final /* synthetic */ C1143cD A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 109);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{23, 42, 61, 50, 63, 46, -23, 42, 45, 60, -23, 54, 42, 55, 42, 48, 46, 59, -23, 61, 49, 46, 50, 59, -23, 56, 64, 55, -23, 50, 54, 57, 59, 46, 60, 60, 50, 56, 55, 60, -9};
    }

    public C1136c5(C1143cD cDVar) {
        this.A00 = cDVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0A(C0794Rp rp) {
        this.A00.A0f(rp, true);
        if (!(this.A00.A0F == null || rp.A0X() == null)) {
            C1135c4 c4Var = new C1135c4(this);
            for (C1143cD cDVar : rp.A0X()) {
                cDVar.A0g(c4Var);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0B() {
        if (this.A00.A0F != null) {
            this.A00.A0F.A9I();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0C() {
        throw new IllegalStateException(A00(0, 41, 92));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0E(AbstractC01350n r2) {
        if (this.A00.A09 != null) {
            this.A00.A09.A0K();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0F(C0588Jl jl) {
        this.A00.A11().A0A().A2d(LZ.A01(this.A00.A00), jl.A04().getErrorCode(), jl.A05());
        if (this.A00.A0F != null) {
            this.A00.A0F.AA7(jl);
        }
    }
}
