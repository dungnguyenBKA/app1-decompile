package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.4h  reason: invalid class name and case insensitive filesystem */
public final class C02324h {
    public C02294e A00 = new C02294e();
    public final AbstractC02304f A01;

    public C02324h(AbstractC02304f r2) {
        this.A01 = r2;
    }

    public final View A00(int end, int next, int i, int i2) {
        int i3;
        int childStart = this.A01.A6u();
        int A6t = this.A01.A6t();
        if (next > end) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        View view = null;
        while (end != next) {
            View A5r = this.A01.A5r(end);
            this.A00.A04(childStart, A6t, this.A01.A5u(A5r), this.A01.A5t(A5r));
            if (i != 0) {
                this.A00.A02();
                this.A00.A03(i);
                if (this.A00.A05()) {
                    return A5r;
                }
            }
            if (i2 != 0) {
                this.A00.A02();
                this.A00.A03(i2);
                if (this.A00.A05()) {
                    view = A5r;
                }
            }
            end += i3;
        }
        return view;
    }
}
