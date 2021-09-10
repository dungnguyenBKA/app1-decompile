package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ta  reason: case insensitive filesystem */
public final class C0829Ta extends AbstractC01360o {
    public static byte[] A03;
    public View A00;
    public final C02464v A01;
    public final ES A02;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 53);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-23, 7, 20, 20, 21, 26, -58, 22, 24, 11, 25, 11, 20, 26, -58, 20, 27, 18, 18, -58, 7, 10, -4, 15, 11, 29};
    }

    public C0829Ta(C02464v r2) {
        this.A02 = r2.A0A();
        this.A01 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0B() {
        this.A02.A0A().A3f();
        KS.A00(new TY(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0C() {
        this.A02.A0A().A3i();
        KS.A00(new TZ(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0D(View view) {
        if (view != null) {
            this.A02.A0A().A3h();
            this.A00 = view;
            this.A01.A08().removeAllViews();
            this.A01.A08().addView(this.A00);
            if (this.A00 instanceof C1020aD) {
                C0595Jt.A04(this.A01.A06(), this.A00, this.A01.A0B());
            }
            FB A09 = this.A01.A09();
            if (A09 != null) {
                A09.A0J();
            }
            KS.A00(new TX(this));
            C02464v r2 = this.A01;
            r2.A0C(r2.A08(), this.A00);
            if (Build.VERSION.SDK_INT >= 18 && J4.A0t(this.A01.A08().getContext())) {
                C0676Na na = new C0676Na();
                this.A01.A0E(na);
                na.A0D(this.A01.getPlacementId());
                na.A0C(this.A01.A08().getContext().getPackageName());
                if (!(this.A01.A09() == null || this.A01.A09().A0H() == null)) {
                    na.A0A(this.A01.A09().A0H().A0C());
                }
                View view2 = this.A00;
                if (view2 instanceof C1020aD) {
                    na.A0B(((C1020aD) view2).getViewabilityChecker());
                }
                this.A00.setOnLongClickListener(new AnonymousClass54(this, na));
                this.A00.getOverlay().add(na);
                return;
            }
            return;
        }
        throw new IllegalStateException(A02(0, 26, 113));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0E(AbstractC01350n r3) {
        boolean z;
        RY A0F = this.A02.A0A();
        if (this.A01.A09() != null) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3g(z);
        if (this.A01.A09() != null) {
            this.A01.A09().A0K();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0F(C0588Jl jl) {
        this.A02.A0A().A2d(LZ.A01(this.A01.A05()), jl.A04().getErrorCode(), jl.A05());
        KS.A00(new TW(this, jl));
    }
}
