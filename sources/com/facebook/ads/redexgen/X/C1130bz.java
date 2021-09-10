package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bz  reason: case insensitive filesystem */
public class C1130bz implements AbstractC0677Nb {
    public static String[] A01;
    public final /* synthetic */ C1133c2 A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"PnhhxO44eyGR", "6RYeLXmAClA1SiGKn201px", "WqNcg2MFF", "kFMGwY5yNNV", "mQRpAL1oxGJgw", "Eqf6jMIzeI3tCjJb", "9imsVe3tjkVzhTosgYrmf1lKW7QE2MSM", "NRYl8cTHkwcGHXULnCD2cakkWnkUWd4e"};
    }

    public C1130bz(C1133c2 c2Var) {
        this.A00 = c2Var;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0677Nb
    public final void AAJ(boolean z) {
        this.A00.A0D.set(z);
        if (this.A00.A0E.get() && this.A00.A02 != null) {
            C1133c2 c2Var = this.A00;
            String[] strArr = A01;
            if (strArr[5].length() != strArr[3].length()) {
                A01[2] = "moHDWw2Q1";
                c2Var.A02.AB3(z);
                return;
            }
            throw new RuntimeException();
        }
    }
}
