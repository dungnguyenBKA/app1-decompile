package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.c0  reason: case insensitive filesystem */
public class C1131c0 extends QD {
    public static String[] A01;
    public final /* synthetic */ C1133c2 A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"17VeHKqvAV3iPquTRFV5nkfekqPAOX2Y", "lAWAATHLIf1ZCLkldXz2HdhVco5hUmDN", "zF5", "DmLMY21jiUoRuKlWConaRVpMyfqBnv90", "gnaW18bfkM8k", "Xsqe1WvhzdEOHDRdZu2mXr6vcctMp9sP", "yZ63PHoRBoKgX7qS3XV5e7w7nB", "vlnJSN6CnOAejO47j4gW78Wzdr557VH0"};
    }

    public C1131c0(C1133c2 c2Var) {
        this.A00 = c2Var;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A02() {
        if (this.A00.A04 != null) {
            this.A00.A04.A0T();
        }
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (this.A00.A04 != null) {
            if (!(this.A00.A0B) && ((this.A00.A0A) || (this.A00.A0L()))) {
                C1133c2 c2Var = this.A00;
                PO po = PO.A03;
                if (A01[5].charAt(14) != 'd') {
                    A01[3] = "6AVoG9MmguoU1vvLobA8P3uXYnnJUDvb";
                    c2Var.A0K(po);
                } else {
                    throw new RuntimeException();
                }
            }
            this.A00.A0A = false;
            this.A00.A0B = false;
        }
    }
}
