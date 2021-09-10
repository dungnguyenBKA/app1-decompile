package com.facebook.ads.redexgen.X;

public class UU implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"hvm87xlnXDULJgpudJIAxjipYcLfVpPe", "aPn41y0iNcbQ3vA5A69njqeDstAsTpsV", "WXmwgMFdLW61FUxTxJC7XlBGpuRVL7Wu", "ePkGYIfh56SCQIxOGTOw2FZrMqM6oOvD", "H4G3VitdwZHOwCvFNAwNX1rKXwUNte3T", "QqBVensdyxYwCHnIBjshd9TsYmlVQcVc", "Npnx1Hqps9YG5SIKMksWN5UpsP86zlug", "K4PmfDIjqE3AfePNsovy4"};
    }

    public UU(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws Exception {
        String A07 = this.A00.A03.A07(10005);
        if (A07 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0863Uj uj = this.A00;
        if (A01[7].length() != 21) {
            throw new RuntimeException();
        }
        A01[7] = "XG8OcIRWX82QEKbSmFw2M";
        return uj.A09(A07);
    }
}
