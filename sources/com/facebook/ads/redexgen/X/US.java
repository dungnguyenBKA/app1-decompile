package com.facebook.ads.redexgen.X;

public class US implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"Yjf", "XOVitfQUgjced3EP4pTxR9JfCPrZNimg", "oba6yDpI8JhOkZT1tW78u2uvc0qfjLnV", "P0DudR6QiRsnBUUKuogjXBQdTc93lhW3", "bGr8mOattKCTE", "1b5SBqQWJyWOe", "v908sogRF2eWxcHJkGHFI", "Zt6OKsa3VoJXRparXiRDL2uvOYm8XqDs"};
    }

    public US(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws Exception {
        String A07 = this.A00.A03.A07(10003);
        if (A07 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0863Uj uj = this.A00;
        if (A01[0].length() != 3) {
            throw new RuntimeException();
        }
        A01[1] = "utTbKSFu34D38IEG5HgAcdNNoC6CJDRH";
        return uj.A09(A07);
    }
}
