package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Wd  reason: case insensitive filesystem */
public class C0909Wd implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"1jYE18OinQfv5WLTq2cVBe585KmN", "X325BmovX2W2cAXv5JjOdne9uqamI6Ku", "itArcmOQ038W2qOxTmWDysJ", "YLO301mgb0CV", "8Iuh4U1kakUbsQ2Nn", "O3ZH7jI89PddtJoXg7iV4O6wtsqjtnrU", "1x9H6MAyleaM4oP8QSazbLvKby53Pv0n", "YmZygv2VfDGVkOFuuIE9CAITaRVNY9b1"};
    }

    public C0909Wd(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0922Wq wq = this.A00;
        String simCountryIso = wq.A00.getSimCountryIso();
        String[] strArr = A01;
        if (strArr[6].charAt(3) != strArr[5].charAt(3)) {
            throw new RuntimeException();
        }
        A01[2] = "tduom2IhCerqtA7iCB";
        return wq.A09(simCountryIso);
    }
}
