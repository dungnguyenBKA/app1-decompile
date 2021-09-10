package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* renamed from: com.facebook.ads.redexgen.X.Lv  reason: case insensitive filesystem */
public final class C0646Lv {
    @Nullable
    public static C0646Lv A02;
    public final C1172ch A00;
    public final C0648Lx A01;

    public C0646Lv(XJ xj, Executor executor, C03408w r4) {
        this.A01 = new C0648Lx(xj);
        this.A00 = new C1172ch(executor, r4, xj);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(XJ xj, Executor executor, C03408w r3) {
        if (J4.A0x(xj)) {
            C0646Lv lv = A02;
            if (lv == null) {
                A02 = new C0646Lv(xj, executor, r3);
                A02.A00();
                return;
            }
            lv.A02(r3);
        }
    }

    private void A02(C03408w r2) {
        C1172ch.A08(this.A00, r2);
    }
}
