package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bm  reason: case insensitive filesystem */
public class C1117bm extends AbstractRunnableC0603Kb {
    public static String[] A01;
    public final /* synthetic */ C1119bo A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"Ghau2wrk1frvp21ETj6mp24XqInrZhWz", "17fIRlTyn5cqQeNpKhzMID", "pR32sk291HY6M3I9Rqv7DOtrmJFLMHGG", "lklFRXjqHO02dLIfiJk5MunT6DW2lX4u", "pu6rG6tzkOYAls8kWhwJFGkhlkg8qDKn", "lnKlSHHeiiV2wTMqAgm3Jfjv4MIuVQTY", "NrilDOC5Woxhobx5Zl8i48KFnKR1bBLL", "sE8NFlpROkCeKIAQdfQPoEsulpgCWNDW"};
    }

    public C1117bm(C1119bo boVar) {
        this.A00 = boVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        C1119bo.A00(this.A00);
        if (this.A00.A01 > 0) {
            try {
                Thread.sleep(this.A00.A01);
            } catch (InterruptedException unused) {
            }
        }
        this.A00.A0B();
        String[] strArr = A01;
        if (strArr[5].charAt(14) != strArr[6].charAt(14)) {
            String[] strArr2 = A01;
            strArr2[5] = "LjJXLz5e9h3DI08dt7Kr5SwInwXqLWiO";
            strArr2[6] = "Pc0bl4Jkvuydlkjlb12SvYG2JTb7UQAm";
            return;
        }
        throw new RuntimeException();
    }
}
