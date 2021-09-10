package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Ru  reason: case insensitive filesystem */
public final class C0799Ru extends AbstractC01370p {
    public static String[] A05;
    public static final String A06 = C0799Ru.class.getSimpleName();
    public C0797Rs A00;
    public boolean A01;
    public final XJ A02;
    public final JC A03;
    public final NS A04;

    public static void A04() {
        A05 = new String[]{"RwkPFHsv9wotgH8PCqYhpIij5lIi", "drIC7gYxypHASOm9CvVJaHIQeep0", "f0dvIXyq27iv5zRXvkJTu2cqkG", "fzusVvXWPget8SSdASQ7tAMFHi8p37he", "Ar6p", "jDkSEm6Ik6fEWWn08WKTicIvFe3Dtksc", "J7vaKr0jTjoObEFZmlhET1S0K8S4ujA7", "2rimL2d5m8eNJCurq2ysJBza56R6EvG7"};
    }

    static {
        A04();
    }

    public C0799Ru(XJ xj, JC jc, NS ns, QE qe, AbstractC01380q r5) {
        super(xj, r5, qe);
        this.A03 = jc;
        this.A04 = ns;
        this.A02 = xj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01370p
    public final void A07(Map<String, String> map) {
        C0797Rs rs = this.A00;
        if (rs != null && !TextUtils.isEmpty(rs.A5x())) {
            this.A02.A0A().A2a();
            AnonymousClass24.A00(this.A00.A06());
            JC jc = this.A03;
            String A5x = this.A00.A5x();
            String[] strArr = A05;
            if (strArr[7].charAt(31) != strArr[6].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[0] = "Tkg0tGhzpCvpbpNuTPjRHtf4b45H";
            strArr2[1] = "dBPpzaB1YNfwJk5banXGE19c57tB";
            jc.A8a(A5x, map);
        }
    }

    public final synchronized void A08() {
        if (!this.A01) {
            if (this.A00 != null) {
                this.A01 = true;
                if (!TextUtils.isEmpty(this.A00.A04())) {
                    ExecutorC0627Lc.A00(new C0798Rt(this));
                }
            }
        }
    }

    public final void A09(C0797Rs rs) {
        this.A00 = rs;
    }
}
