package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Er  reason: case insensitive filesystem */
public final class C0470Er extends TS {
    public static String[] A02;
    @Nullable
    public AnonymousClass44 A00;
    @Nullable
    public AnonymousClass44 A01;

    static {
        A05();
    }

    public static void A05() {
        A02 = new String[]{"C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq", "J5x5lFquh7whloqA7FngbvBzLsCb", "NWBvU5bW0Pue", "3", "BTAVkHunqM91yRRN2KcoYuZCergWfboL", "2NY5ANPTvwBPWrnTgdotgLNYCmp8", "bg7eF9CjngMlwdFplTojabi", "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"};
    }

    private int A00(@NonNull AnonymousClass4K r4, @NonNull View view, AnonymousClass44 r6) {
        int A06;
        int A0F = r6.A0F(view) + (r6.A0D(view) / 2);
        if (r4.A1Y()) {
            A06 = r6.A0A() + (r6.A0B() / 2);
        } else {
            A06 = r6.A06() / 2;
        }
        return A0F - A06;
    }

    @Nullable
    private View A01(AnonymousClass4K r9, AnonymousClass44 r10) {
        int i;
        int absClosest = r9.A0X();
        if (absClosest == 0) {
            return null;
        }
        View child = null;
        if (r9.A1Y()) {
            int A0A = r10.A0A();
            int A0B = r10.A0B();
            if (A02[3].length() != 1) {
                throw new RuntimeException();
            }
            A02[4] = "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf";
            i = A0A + (A0B / 2);
        } else {
            i = r10.A06() / 2;
        }
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < absClosest; i3++) {
            View A0u = r9.A0u(i3);
            int childCenter = Math.abs((r10.A0F(A0u) + (r10.A0D(A0u) / 2)) - i);
            if (childCenter < i2) {
                i2 = childCenter;
                child = A0u;
            }
        }
        return child;
    }

    @Nullable
    private View A02(AnonymousClass4K r8, AnonymousClass44 r9) {
        int i = r8.A0X();
        if (i == 0) {
            return null;
        }
        View view = null;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < i; i3++) {
            View A0u = r8.A0u(i3);
            int A0F = r9.A0F(A0u);
            if (A0F < i2) {
                i2 = A0F;
                if (A02[3].length() != 1) {
                    throw new RuntimeException();
                }
                A02[3] = "0";
                view = A0u;
            }
        }
        return view;
    }

    @NonNull
    private AnonymousClass44 A03(@NonNull AnonymousClass4K r2) {
        AnonymousClass44 r0 = this.A00;
        if (r0 == null || r0.A02 != r2) {
            this.A00 = AnonymousClass44.A00(r2);
        }
        return this.A00;
    }

    @NonNull
    private AnonymousClass44 A04(@NonNull AnonymousClass4K r2) {
        AnonymousClass44 r0 = this.A01;
        if (r0 == null || r0.A02 != r2) {
            this.A01 = AnonymousClass44.A01(r2);
        }
        return this.A01;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0078, code lost:
        if (r4 != null) goto L_0x007a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x009c, code lost:
        if (r4 != null) goto L_0x007a;
     */
    @Override // com.facebook.ads.redexgen.X.TS
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int A0E(com.facebook.ads.redexgen.X.AnonymousClass4K r10, int r11, int r12) {
        /*
        // Method dump skipped, instructions count: 167
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0470Er.A0E(com.facebook.ads.redexgen.X.4K, int, int):int");
    }

    @Override // com.facebook.ads.redexgen.X.TS
    @Nullable
    public final View A0F(AnonymousClass4K r2) {
        if (r2.A26()) {
            return A01(r2, A04(r2));
        }
        if (r2.A25()) {
            return A01(r2, A03(r2));
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.TS
    public final TC A0G(AnonymousClass4K r3) {
        if (!(r3 instanceof AnonymousClass4W)) {
            return null;
        }
        return new C0471Es(this, super.A00.getContext());
    }

    @Override // com.facebook.ads.redexgen.X.TS
    @Nullable
    public final int[] A0J(@NonNull AnonymousClass4K r8, @NonNull View view) {
        int[] iArr = new int[2];
        if (r8.A25()) {
            iArr[0] = A00(r8, view, A03(r8));
        } else {
            iArr[0] = 0;
        }
        boolean A26 = r8.A26();
        String[] strArr = A02;
        if (strArr[1].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A02[0] = "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C";
        if (A26) {
            iArr[1] = A00(r8, view, A04(r8));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
