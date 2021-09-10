package com.facebook.ads.redexgen.X;

import androidx.annotation.VisibleForTesting;

public final class Kv {
    public static final Kv A04 = new Kv(new C1158cS(), new C1159cT());
    public long A00 = -1;
    public boolean A01 = true;
    public final AbstractC0620Ku A02;
    public final LY A03;

    @VisibleForTesting
    public Kv(LY ly, AbstractC0620Ku ku) {
        this.A03 = ly;
        this.A02 = ku;
    }

    public static Kv A00() {
        return A04;
    }

    public final synchronized void A01() {
        this.A01 = false;
        this.A00 = this.A03.A4f();
    }

    public final synchronized void A02() {
        this.A00 = -1;
    }

    public final boolean A03() {
        boolean z = true;
        if (this.A02.A6g() != null) {
            return true;
        }
        synchronized (Kv.class) {
            if (this.A01) {
                return true;
            }
            if (this.A00 >= 0 && this.A03.A4f() - this.A00 >= 1000) {
                z = false;
            }
            return z;
        }
    }
}
