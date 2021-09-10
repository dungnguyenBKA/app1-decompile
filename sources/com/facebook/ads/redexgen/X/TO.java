package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;

public class TO extends C01772d {
    public static String[] A01;
    public final TP A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"Aypyv0FACfsPQTq8B8UFxLSJIGYFzsCC", "O7nTze5knL3NcSr2rovnk7vqxWhLtUKF", "w8KDuB7m9FBYOy6hiJzio9ilRX5MSLSp", "Kqe5H6YPSeJrA9PRZ2BXFN4qonyjjTB9", "VPpNE9vsyh3HxU94PoFE47DnBqUfoC5Y", "VSW3ZMLcugYKNhiURlJ0g5uJ7Smp29SS", "AB", "JpT6Sbfy0irMNtnKFHDBnJ8tZotKHb"};
    }

    public TO(TP tp) {
        this.A00 = tp;
    }

    @Override // com.facebook.ads.redexgen.X.C01772d
    public final void A08(View view, AnonymousClass3O r3) {
        super.A08(view, r3);
        if (!this.A00.A0B() && this.A00.A01.getLayoutManager() != null) {
            this.A00.A01.getLayoutManager().A1D(view, r3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C01772d
    public final boolean A09(View view, int i, Bundle bundle) {
        if (super.A09(view, i, bundle)) {
            if (A01[2].charAt(3) != 'j') {
                A01[6] = "SRS22nAnXgHfwC2qheyHP9Kgc2YZ";
                return true;
            }
            throw new RuntimeException();
        } else if (this.A00.A0B() || this.A00.A01.getLayoutManager() == null) {
            return false;
        } else {
            return this.A00.A01.getLayoutManager().A1c(view, i, bundle);
        }
    }
}
