package com.facebook.ads.redexgen.X;

import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.bO  reason: case insensitive filesystem */
public class C1093bO implements L5 {
    public static String[] A01;
    public final /* synthetic */ C1075b6 A00;

    public static void A00() {
        A01 = new String[]{"XQ6pDaA1rZEM", "XoeGOYiSv0w2M1U1qXC2kK0WxpTFbq6C", "goNPtYs5sZFfNSJyOgs171oDuCl7t69H", "IBRmsKraW8ihcuaNuynFKjmRlH", "udOMyB", "k9bLdXox5SSCuqwZoRmzAy5kJm", "rLCACxpviKCtWgunDsmekf59Ef0kXw8R", "IiDilnQTvcIperbA6lCpmy3utrrmGEhT"};
    }

    static {
        A00();
    }

    public C1093bO(C1075b6 b6Var) {
        this.A00 = b6Var;
    }

    public /* synthetic */ C1093bO(C1075b6 b6Var, C1102bX bXVar) {
        this(b6Var);
    }

    @Override // com.facebook.ads.redexgen.X.L5
    public final void A9n() {
        this.A00.A0H();
        if (!(this.A00.A0N) || !(this.A00.A0W())) {
            this.A00.A0P.setToolbarActionMode(0);
        } else {
            this.A00.A0P.setToolbarActionMode(1);
        }
        boolean z = this.A00.A0O;
        if (A01[4].length() != 6) {
            throw new RuntimeException();
        }
        A01[4] = "RNuzR8";
        if (!z) {
            C0632Lh.A0Z(this.A00, HttpStatus.SC_INTERNAL_SERVER_ERROR);
            if (this.A00.A05 != null) {
                C0632Lh.A0Q(this.A00.A05, 0);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.L5
    public final void ABH(float f) {
        this.A00.A0P.setProgress(100.0f * (1.0f - (f / ((float) this.A00.A0A.A08()))));
        this.A00.A0O((int) f);
    }
}
