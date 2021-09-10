package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.b2  reason: case insensitive filesystem */
public class C1071b2 implements M3 {
    public static String[] A01;
    public final /* synthetic */ C1050ah A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"6N", "smQA5TSxp7vjrWoIt3G8gqRI7vuv9Mo2", "nC2JCQuxt461FEwUH0osGyRmdjA", "Hvedh13CT0GkY3JhzOxajNH8XlaZQpLN", "5Odrxu44jwGQpLwu9LnTSanJ4TNopF0a", "7krTPzdKMYjdejqNC8FU3CrmbwWia7OA", "A91WiRAFiXbxe3egNbtfICOYy0", "PiGZqdHGAPhzlIXS2UC0uVxfbNyiCcLD"};
    }

    public C1071b2(C1050ah ahVar) {
        this.A00 = ahVar;
    }

    @Override // com.facebook.ads.redexgen.X.M3
    public final void A9k() {
        this.A00.A0U.A03(JI.A07, null);
        this.A00.A0S.A0A().A2Z();
        if (this.A00.A0W.A0A(this.A00.getContext())) {
            this.A00.A0T.A8R(this.A00.A0Q.A0T(), new C0678Nc().A04(this.A00.A0g).A03(this.A00.A0W).A06());
            return;
        }
        if (!(this.A00.A0J)) {
            PD pd = this.A00.A09;
            if (A01[2].length() != 27) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "5zrYwBRwluqa1cGxPZZJZEcv5DdOFBPm";
            strArr[7] = "gq390Wd0Yu1IJshZC9Clpt7tVnhSzLar";
            if (pd != null) {
                if (this.A00.A0g()) {
                    this.A00.A09.A0X(PK.A09);
                    return;
                } else {
                    this.A00.A0N();
                    return;
                }
            }
        }
        boolean z = this.A00.A0J;
        if (A01[1].charAt(8) == 'p') {
            A01[5] = "Zcc8pzIQVtObnEDs8jyH13QzYMXIQUWE";
            if (!z) {
                return;
            }
        } else if (!z) {
            return;
        }
        this.A00.A0H();
    }
}
