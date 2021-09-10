package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Uf  reason: case insensitive filesystem */
public class C0859Uf implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"b1sQJ", "SIF58uGHe7qyLmHU2z0R0", "OwOBv3ZEKz2Te88ibAl3d47J53q2OGoK", "esWFBpscKVup9jNI8XCXNCETTdpqRq5Z", "zivB8", "FBi4O7QrEsFNvdqkgZ6MOGJI", "H45EAoAIvQ1szMaGMHC8haArjN6", "w12X6M1S0qfh4A3JJ2wkr2WlTLMqdjE1"};
    }

    public C0859Uf(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 != null) {
            C0863Uj uj = this.A00;
            return uj.A09(uj.A01.publicSourceDir);
        }
        C0863Uj uj2 = this.A00;
        String[] strArr = A01;
        if (strArr[4].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[4] = "DiCvH";
        strArr2[0] = "OWYZT";
        return uj2.A08(EnumC02916p.A07);
    }
}
