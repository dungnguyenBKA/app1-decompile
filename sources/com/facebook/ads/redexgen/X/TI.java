package com.facebook.ads.redexgen.X;

public class TI implements AnonymousClass4E {
    public static String[] A01;
    public final /* synthetic */ C0469Eq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"IP6gXu3Aic9rrZpr", "DSm6OHbiM4aoMyjFh2wy7Spd3inn5axc", "lJd94ygIcpnkIi9oYNWqXg3HQV8t0X4Q", "337I3pVrWHOBtYrFGcdtPHZp8Kpz9VIJ", "vd5lczoeg9gY82TvyWngHoQKFpNC9gt0", "CefcuhKyPhUbDvzsvxPUhaoMgi2Xy5FO", "Qia1n7qQgpdEP2KZeQvga8Xzcvoo51Ij", "UfDKqgBAky8ekVpIbdpaQQPTuf6RISL4"};
    }

    public TI(C0469Eq eq) {
        this.A00 = eq;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4E
    public final void A9P(AbstractC02274c r5) {
        r5.A0a(true);
        if (r5.A06 != null && r5.A07 == null) {
            r5.A06 = null;
        }
        r5.A07 = null;
        if (!(r5.A0B()) && !this.A00.A20(r5.A0H) && r5.A0f()) {
            C0469Eq eq = this.A00;
            if (A01[6].charAt(16) != 'e') {
                throw new RuntimeException();
            }
            A01[0] = "BbBTSQcWyeSpGVnm";
            eq.removeDetachedView(r5.A0H, false);
        }
    }
}
