package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.3z  reason: invalid class name and case insensitive filesystem */
public class C02243z {
    public int A00;
    public int A01;
    public int A02 = 0;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public List<AbstractC02274c> A08 = null;
    public boolean A09;
    public boolean A0A = false;
    public boolean A0B = true;

    private View A00() {
        int size = this.A08.size();
        for (int i = 0; i < size; i++) {
            View view = this.A08.get(i).A0H;
            AnonymousClass4L r2 = (AnonymousClass4L) view.getLayoutParams();
            if (!r2.A02() && this.A01 == r2.A00()) {
                A02(view);
                return view;
            }
        }
        return null;
    }

    private final View A01(View closest) {
        int A002;
        int i = this.A08.size();
        View view = null;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < i; i3++) {
            View view2 = this.A08.get(i3).A0H;
            AnonymousClass4L r1 = (AnonymousClass4L) view2.getLayoutParams();
            if (view2 != closest && !r1.A02() && (A002 = (r1.A00() - this.A01) * this.A03) >= 0 && A002 < i2) {
                view = view2;
                i2 = A002;
                if (A002 == 0) {
                    break;
                }
            }
        }
        return view;
    }

    private final void A02(View view) {
        View A012 = A01(view);
        if (A012 == null) {
            this.A01 = -1;
        } else {
            this.A01 = ((AnonymousClass4L) A012.getLayoutParams()).A00();
        }
    }

    public final View A03(AnonymousClass4S r4) {
        if (this.A08 != null) {
            return A00();
        }
        View A0H = r4.A0H(this.A01);
        this.A01 += this.A03;
        return A0H;
    }

    public final void A04() {
        A02(null);
    }

    public final boolean A05(AnonymousClass4Z r3) {
        int i = this.A01;
        return i >= 0 && i < r3.A03();
    }
}
