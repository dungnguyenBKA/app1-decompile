package com.facebook.ads.redexgen.X;

public final class F3 extends AbstractC1169ce<SP> {
    public static String[] A00;

    static {
        A00();
    }

    public static void A00() {
        A00 = new String[]{"ByMq6MLqhjUJsdWB3RBIp", "zuOr3", "msyHKBX3wHVeYE5obxbctQprcgEzI02t", "I3sOgeRwcNYGF4oixOV5Q17", "dcB", "ibtCqc8qysdz0E5AMIDmPhuL1XZA", "mNtKCg4kzaH6sXUtb2oDuqx2", "ObFvkEusatMYzjWaq72f4FkWXHrQjerH"};
    }

    public F3(SP sp) {
        super(sp);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        SP sp = (SP) A08();
        if (sp != null) {
            XJ xj = sp.A08;
            String[] strArr = A00;
            if (strArr[3].length() != strArr[4].length()) {
                A00[5] = "SiVLKh";
                if (C0649Ly.A02(xj)) {
                    sp.A08();
                } else {
                    sp.A05.postDelayed(sp.A0C, 5000);
                }
            } else {
                throw new RuntimeException();
            }
        }
    }
}
