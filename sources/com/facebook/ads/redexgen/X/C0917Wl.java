package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Wl  reason: case insensitive filesystem */
public class C0917Wl implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"Vo88lINS9S2N5LbTaKf1W2kwN6BIQQdD", "UoAdPktVrqtin724LV50L5", "LFaB2DLRyLVTAupR8IDTAiu1ygiAQNei", "sJjAsr1DYzEdJFVxSj", "YixUmkecZHZtQTXRs3SEpcqVtXLRAsNc", "NCQvJXIWgGsA6V8X34C", "SF2vY0k52k3yZQV1rBM1cg", "e4uMFN1tyFqCHoW3Lf"};
    }

    public C0917Wl(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A00 != null) {
            C0922Wq wq = this.A00;
            return wq.A09(wq.A00.getNetworkOperator());
        }
        C0922Wq wq2 = this.A00;
        String[] strArr = A01;
        if (strArr[6].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A01[5] = "y3WpFIrw6SINDCFjG4EXd7NBg48ZDa";
        return wq2.A08(EnumC02916p.A07);
    }
}
