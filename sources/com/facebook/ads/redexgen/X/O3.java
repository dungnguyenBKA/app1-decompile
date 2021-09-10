package com.facebook.ads.redexgen.X;

import android.view.View;

public class O3 implements View.OnClickListener {
    public static String[] A01;
    public final /* synthetic */ C03559m A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"c2PEJ6DOqpui9EPvmckbHNLd48C", "0LubsyKGJKKePfKATMceGef14XY86Ri5", "M6oVByKNfKe8LZIrCewzhyGONHgeYcNo", "g1oo9eCM7RcmOvTxZ1VejNMrbdbCR0G4", "3al8rHdAj04D", "Lmo63BJo3ocNRJpk0", "u0Zxd4kfnWeayuGPbNnNq6ZbpiAglx3D", "JRUzdnx3lrNIQCskW6e2Avl8V"};
    }

    public O3(C03559m r1) {
        this.A00 = r1;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                C03559m.A0H(this.A00, false);
                C03559m.A0G(this.A00);
            } catch (Throwable th) {
                if (A01[3].charAt(5) != 'e') {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[2] = "oQ6hKoRa6K50vxrlE5lU8mLQHveYoJVv";
                strArr[1] = "5HqmMGmqvKeUZ55y8iy1lLJbe1y4dd8I";
                KT.A00(th, this);
            }
        }
    }
}
