package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bR  reason: case insensitive filesystem */
public class C1096bR implements M3 {
    public static String[] A01;
    public final /* synthetic */ C1075b6 A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"rR3MQXnxH1GXPkPV1PgRqgdt6qAZ8aBc", "thx7zZihUvA4zDglxpqJ8", "GT9LpnhCusFld3d6m5Ylaq2YY93CXZTz", "CEYcJLQZRcUyVb0GbNJEX1KNnfWwQfE2", "P05vWpU8TGR89ExqviT8AvwxGU5kpxcL", "lyVbFyj9sQoux55muYN3p2AWW", "FBc7SUvMlEnZMMlwSnzRcI2535EomHFs", "rjU0a8GNBirc6jTbd1zIs9BaAuj9QLsR"};
    }

    public C1096bR(C1075b6 b6Var) {
        this.A00 = b6Var;
    }

    @Override // com.facebook.ads.redexgen.X.M3
    public final void A9k() {
        if (this.A00.A0N) {
            boolean z = this.A00.A0L.get();
            if (A01[5].length() != 32) {
                String[] strArr = A01;
                strArr[6] = "Rosc2egaZ2bfxLAQiTqXfx2zjuVcC1pu";
                strArr[2] = "vMXK6MvWFWmZqWG9iCsHx320m1OPkYMA";
                if (!z && (this.A00.A0W())) {
                    this.A00.A0P.setToolbarActionMode(0);
                    this.A00.A0K();
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
        this.A00.A0E.A03(JI.A07, null);
        this.A00.A0H.A3t(this.A00.A0I.A6L());
    }
}
