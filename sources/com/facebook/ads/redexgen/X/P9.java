package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

public final class P9 {
    public static String[] A06;
    public static final int A07 = ((int) (C0632Lh.A01 * 72.0f));
    public static final int A08 = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A09 = ((int) (C0632Lh.A01 * 4.0f));
    public final AnonymousClass17 A00;
    public final AnonymousClass1G A01;
    public final AnonymousClass1K A02;
    public final AnonymousClass1S A03;
    public final XJ A04;
    public final JJ A05;

    public static void A02() {
        A06 = new String[]{"67PC1vS7qkP", "IjFo3BG6VwtzNtFBLMxB3hm7uxcMitzp", "CicRHWg02u8tYTVNboa", "Lc1HqPOOGgkkm0o4iF185HVfJQb2Oy4J", "rfUiy7qGv2cTTJD", "veTQu7RBhk0w6DuY7Y8JViB1PkIKs", "nFnk8VxBkehLa6QhTm5QccOE2IAl", "l0nPd7gOfqjUiTZVoVDHfvPfOU4VPF8e"};
    }

    static {
        A02();
    }

    public P9(XJ xj, JC jc, AnonymousClass16 r5) {
        this.A04 = xj;
        this.A05 = new JJ(r5.A0T(), jc);
        this.A00 = r5.A0M();
        this.A01 = r5.A0N().A0F();
        this.A03 = r5.A0Q();
        this.A02 = r5.A0N().A0H();
    }

    private View A00() {
        C0469Eq eq = new C0469Eq(this.A04);
        eq.setLayoutManager(new TB(this.A04, 0, false));
        eq.setAdapter(new C0732Pf(this.A04, this.A02.A00(), A09));
        return eq;
    }

    private View A01(@Nullable View$OnClickListenerC1014a7 a7Var) {
        C0696Nu nu = new C0696Nu(this.A04, this.A00.A01(), true, false, false);
        nu.A02(this.A01.A06(), this.A01.A01(), null, false, true);
        nu.setAlignment(17);
        C0690No no = new C0690No(this.A04);
        C0632Lh.A0P(no, 0);
        no.setRadius(50);
        new AsyncTaskC1017aA(no, this.A04).A05().A08(this.A03.A01());
        LinearLayout linearLayout = new LinearLayout(this.A04);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        int i = A07;
        linearLayout.addView(no, new LinearLayout.LayoutParams(i, i));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i2 = A08;
        layoutParams.setMargins(0, i2, 0, i2);
        linearLayout.addView(nu, layoutParams);
        if (a7Var != null) {
            C0632Lh.A0M(a7Var);
            linearLayout.addView(a7Var, layoutParams);
            if (TextUtils.isEmpty(a7Var.getText())) {
                C0632Lh.A0K(a7Var);
            }
        }
        return linearLayout;
    }

    public final Pair<P8, View> A03(@Nullable View$OnClickListenerC1014a7 a7Var) {
        View A002;
        P8 A042 = A04();
        if (P7.A00[A042.ordinal()] != 1) {
            A002 = A01(a7Var);
        } else {
            A002 = A00();
        }
        JL.A04(A002, this.A05, JI.A0S);
        return new Pair<>(A042, A002);
    }

    public final P8 A04() {
        if (!this.A02.A00().isEmpty()) {
            return P8.A04;
        }
        P8 p8 = P8.A03;
        String[] strArr = A06;
        if (strArr[3].charAt(8) != strArr[7].charAt(8)) {
            A06[4] = "qwlEjiYhEcV8j1J";
            return p8;
        }
        throw new RuntimeException();
    }
}
