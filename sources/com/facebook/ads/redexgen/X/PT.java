package com.facebook.ads.redexgen.X;

public class PT extends AbstractRunnableC0603Kb {
    public static String[] A04;
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ PD A02;
    public final /* synthetic */ QB A03;

    static {
        A00();
    }

    public static void A00() {
        A04 = new String[]{"pUIboC8CwdUMtM1tPR8iEtPz8p", "ladzvmq", "gZiIZXhhpFNWaRiPv", "vQtAVDGFp8M", "7j30UYRlUEXcM4Kd2wK", "XchzO9Mtzl1GyvdPdWlZd1J0iwZmFx3H", "VTwPVxpRcW0", "YPnzN72MuP4y3lnuBhqZ0NoSyY"};
    }

    public PT(PD pd, QB qb, int i, int i2) {
        this.A02 = pd;
        this.A03 = qb;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (this.A03 == QB.A07) {
            this.A02.A0J(JI.A0m);
            this.A02.A09.A0A().A30();
            this.A02.A0A.A03(PD.A0C());
        } else if (this.A03 == QB.A03) {
            this.A02.A0J(JI.A0h);
            this.A02.A03 = true;
            this.A02.A0A.A03(PD.A0E);
        } else {
            QB qb = this.A03;
            QB qb2 = QB.A06;
            String[] strArr = A04;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A04[5] = "Wlqb3PCyph61UkVVxo7ng7VZa1hYfmo4";
            if (qb == qb2) {
                this.A02.A0J(JI.A0g);
                this.A02.A09.A0A().A2s();
                this.A02.A03 = true;
                this.A02.A06.removeCallbacksAndMessages(null);
                AnonymousClass9F r2 = this.A02.A0A;
                int i = this.A01;
                r2.A03(new C03167w(i, i));
            } else if (this.A03 == QB.A0A) {
                this.A02.A0J(JI.A0k);
                this.A02.A09.A0A().A37();
                this.A02.A0A.A03(PD.A0B());
                this.A02.A06.removeCallbacksAndMessages(null);
                this.A02.A0G();
            } else if (this.A03 == QB.A05) {
                this.A02.A0J(JI.A0j);
                this.A02.A09.A0A().A2w();
                this.A02.A0A.A03(new C03157v(this.A00));
                this.A02.A06.removeCallbacksAndMessages(null);
            } else if (this.A03 == QB.A04) {
                this.A02.A0J(JI.A0i);
                this.A02.A09.A0A().A2t();
                this.A02.A0A.A03(PD.A0I);
                this.A02.A06.removeCallbacksAndMessages(null);
            } else if (this.A03 == QB.A09) {
                this.A02.A0J(JI.A0g);
                this.A02.A09.A0A().A32();
                this.A02.A03 = true;
                this.A02.A06.removeCallbacksAndMessages(null);
                this.A02.A0A.A03(new C03167w(this.A00, this.A01));
            }
        }
    }
}
