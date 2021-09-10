package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import java.util.Arrays;
import java.util.List;

public class TB extends AnonymousClass4K implements AnonymousClass4W {
    public static byte[] A0F;
    public static String[] A0G;
    public int A00;
    public int A01;
    public int A02;
    public LinearLayoutManager$SavedState A03;
    public AnonymousClass44 A04;
    public boolean A05;
    public int A06;
    public C02243z A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final C02223x A0D;
    public final C02233y A0E;

    static {
        A0X();
        A0W();
    }

    public static String A0U(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(copyOfRange);
    }

    public static void A0W() {
        A0F = new byte[]{30, 25, 1, 22, 27, 30, 19, 87, 24, 5, 30, 18, 25, 3, 22, 3, 30, 24, 25, 77};
    }

    public static void A0X() {
        A0G = new String[]{"VKH6HNPW", "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY", "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W", "8EarDdUd0wjX", "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku", "k0c9canuweazyFazM74f3pFcokchiBr", "yJQv9VjGutzUoxdr6", "vBYUiSK7FkagYmvZS"};
    }

    public TB(Context context) {
        this(context, 1, false);
    }

    public TB(Context context, int i, boolean z) {
        this.A0A = false;
        this.A05 = false;
        this.A0C = false;
        this.A0B = true;
        this.A01 = -1;
        this.A02 = RecyclerView.UNDEFINED_DURATION;
        this.A03 = null;
        this.A0D = new C02223x(this);
        this.A0E = new C02233y();
        this.A06 = 2;
        A2F(i);
        A0j(z);
        A1W(true);
    }

    private final int A05(int scrolled, AnonymousClass4S r7, AnonymousClass4Z r8) {
        int i;
        int i2;
        if (A0X() == 0 || scrolled == 0) {
            return 0;
        }
        this.A07.A0B = true;
        A2E();
        if (scrolled > 0) {
            i = 1;
        } else {
            i = -1;
        }
        int abs = Math.abs(scrolled);
        A0a(i, abs, true, r8);
        int A092 = this.A07.A07 + A09(r7, this.A07, r8, false);
        if (A092 < 0) {
            return 0;
        }
        if (abs > A092) {
            i2 = i * A092;
        } else {
            i2 = scrolled;
        }
        this.A04.A0J(-i2);
        this.A07.A04 = i2;
        return i2;
    }

    private int A06(int fixOffset, AnonymousClass4S r7, AnonymousClass4Z r8, boolean z) {
        int A072 = this.A04.A07() - fixOffset;
        if (A072 <= 0) {
            return 0;
        }
        int i = -A05(-A072, r7, r8);
        int fixOffset2 = fixOffset + i;
        if (z) {
            int A073 = this.A04.A07();
            if (A0G[0].length() != 7) {
                A0G[0] = "DiKLRwr5Jced9h1IWYQQBSe";
                int i2 = A073 - fixOffset2;
                if (i2 > 0) {
                    this.A04.A0J(i2);
                    return i2 + i;
                }
            } else {
                throw new RuntimeException();
            }
        }
        return i;
    }

    private int A08(int fixOffset, AnonymousClass4S r5, AnonymousClass4Z r6, boolean z) {
        int fixOffset2;
        int A0A2 = fixOffset - this.A04.A0A();
        if (A0A2 <= 0) {
            return 0;
        }
        int i = -A05(A0A2, r5, r6);
        int fixOffset3 = fixOffset + i;
        if (!z || (fixOffset2 = fixOffset3 - this.A04.A0A()) <= 0) {
            return i;
        }
        this.A04.A0J(-fixOffset2);
        return i - fixOffset2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0036, code lost:
        return r7 - r11.A00;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int A09(com.facebook.ads.redexgen.X.AnonymousClass4S r10, com.facebook.ads.redexgen.X.C02243z r11, com.facebook.ads.redexgen.X.AnonymousClass4Z r12, boolean r13) {
        /*
        // Method dump skipped, instructions count: 167
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.TB.A09(com.facebook.ads.redexgen.X.4S, com.facebook.ads.redexgen.X.3z, com.facebook.ads.redexgen.X.4Z, boolean):int");
    }

    private int A0A(AnonymousClass4Z r8) {
        if (A0X() != 0) {
            A2E();
            return C02284d.A00(r8, this.A04, A0S(!this.A0B, true), A0R(!this.A0B, true), this, this.A0B);
        } else if (A0G[5].length() != 31) {
            throw new RuntimeException();
        } else {
            A0G[5] = "JS1EmTokFkofHdCiZDqGUekHou375gK";
            return 0;
        }
    }

    private int A0B(AnonymousClass4Z r9) {
        if (A0X() == 0) {
            return 0;
        }
        A2E();
        return C02284d.A02(r9, this.A04, A0S(!this.A0B, true), A0R(!this.A0B, true), this, this.A0B, this.A05);
    }

    private int A0C(AnonymousClass4Z r8) {
        if (A0X() == 0) {
            String[] strArr = A0G;
            if (strArr[2].charAt(4) != strArr[4].charAt(4)) {
                String[] strArr2 = A0G;
                strArr2[2] = "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA";
                strArr2[4] = "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs";
                return 0;
            }
            throw new RuntimeException();
        }
        A2E();
        return C02284d.A01(r8, this.A04, A0S(!this.A0B, true), A0R(!this.A0B, true), this, this.A0B);
    }

    private final int A0D(AnonymousClass4Z r2) {
        if (r2.A06()) {
            return this.A04.A0B();
        }
        return 0;
    }

    private View A0E() {
        return A0u(this.A05 ? 0 : A0X() - 1);
    }

    private View A0F() {
        return A0u(this.A05 ? A0X() - 1 : 0);
    }

    private final View A0G(int preferredBoundsFlag, int acceptableBoundsFlag) {
        char c;
        int i;
        int i2;
        A2E();
        if (acceptableBoundsFlag > preferredBoundsFlag) {
            c = 1;
        } else {
            c = acceptableBoundsFlag < preferredBoundsFlag ? (char) 65535 : 0;
        }
        if (c == 0) {
            View A0u = A0u(preferredBoundsFlag);
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[5] = "tEP4S10y6AtQbDA9ff3H424KLTnX0k7";
            return A0u;
        }
        if (this.A04.A0F(A0u(preferredBoundsFlag)) < this.A04.A0A()) {
            i = 16644;
            i2 = 16388;
        } else {
            i = 4161;
            i2 = 4097;
        }
        if (this.A00 == 0) {
            return super.A04.A00(preferredBoundsFlag, acceptableBoundsFlag, i, i2);
        }
        return super.A05.A00(preferredBoundsFlag, acceptableBoundsFlag, i, i2);
    }

    private final View A0H(int acceptableBoundsFlag, int i, boolean z, boolean z2) {
        int i2;
        A2E();
        int i3 = 0;
        if (z) {
            i2 = 24579;
        } else {
            i2 = 320;
        }
        if (z2) {
            i3 = 320;
        }
        int i4 = this.A00;
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg";
        strArr[4] = "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl";
        if (i4 == 0) {
            return super.A04.A00(acceptableBoundsFlag, i, i2, i3);
        }
        return super.A05.A00(acceptableBoundsFlag, i, i2, i3);
    }

    private View A0I(AnonymousClass4S r3, AnonymousClass4Z r4) {
        return A0G(0, A0X());
    }

    private View A0K(AnonymousClass4S r7, AnonymousClass4Z r8) {
        return A2D(r7, r8, 0, A0X(), r8.A03());
    }

    private View A0L(AnonymousClass4S r3, AnonymousClass4Z r4) {
        return A0G(A0X() - 1, -1);
    }

    private View A0M(AnonymousClass4S r7, AnonymousClass4Z r8) {
        return A2D(r7, r8, A0X() - 1, -1, r8.A03());
    }

    private View A0N(AnonymousClass4S r2, AnonymousClass4Z r3) {
        if (this.A05) {
            return A0I(r2, r3);
        }
        return A0L(r2, r3);
    }

    private View A0O(AnonymousClass4S r2, AnonymousClass4Z r3) {
        if (this.A05) {
            return A0L(r2, r3);
        }
        return A0I(r2, r3);
    }

    private View A0P(AnonymousClass4S r2, AnonymousClass4Z r3) {
        if (this.A05) {
            return A0K(r2, r3);
        }
        return A0M(r2, r3);
    }

    private View A0Q(AnonymousClass4S r2, AnonymousClass4Z r3) {
        if (this.A05) {
            return A0M(r2, r3);
        }
        return A0K(r2, r3);
    }

    private View A0R(boolean z, boolean z2) {
        if (this.A05) {
            return A0H(0, A0X(), z, z2);
        }
        return A0H(A0X() - 1, -1, z, z2);
    }

    private View A0S(boolean z, boolean z2) {
        if (this.A05) {
            return A0H(A0X() - 1, -1, z, z2);
        }
        return A0H(0, A0X(), z, z2);
    }

    private final C02243z A0T() {
        return new C02243z();
    }

    private void A0V() {
        if (this.A00 == 1 || !A2K()) {
            this.A05 = this.A0A;
            return;
        }
        boolean z = !this.A0A;
        String[] strArr = A0G;
        if (strArr[2].charAt(4) != strArr[4].charAt(4)) {
            String[] strArr2 = A0G;
            strArr2[6] = "rvopS3hSB7itRsuyG";
            strArr2[7] = "9RTUShXs4ZXrU4n03";
            this.A05 = z;
            return;
        }
        throw new RuntimeException();
    }

    private void A0Y(int i, int i2) {
        int i3;
        this.A07.A00 = this.A04.A07() - i2;
        C02243z r1 = this.A07;
        if (this.A05) {
            i3 = -1;
        } else {
            i3 = 1;
        }
        r1.A03 = i3;
        C02243z r12 = this.A07;
        r12.A01 = i;
        r12.A05 = 1;
        r12.A06 = i2;
        r12.A07 = RecyclerView.UNDEFINED_DURATION;
    }

    private void A0Z(int i, int i2) {
        int i3;
        this.A07.A00 = i2 - this.A04.A0A();
        C02243z r1 = this.A07;
        r1.A01 = i;
        if (this.A05) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        r1.A03 = i3;
        C02243z r12 = this.A07;
        r12.A05 = -1;
        r12.A06 = i2;
        r12.A07 = RecyclerView.UNDEFINED_DURATION;
    }

    private void A0a(int i, int i2, boolean z, AnonymousClass4Z r9) {
        int A0A2;
        this.A07.A09 = A0k();
        this.A07.A02 = A0D(r9);
        C02243z r2 = this.A07;
        r2.A05 = i;
        int i3 = -1;
        if (i == 1) {
            r2.A02 += this.A04.A08();
            View A0E2 = A0E();
            C02243z r1 = this.A07;
            if (!this.A05) {
                i3 = 1;
            }
            r1.A03 = i3;
            this.A07.A01 = A0q(A0E2) + this.A07.A03;
            this.A07.A06 = this.A04.A0C(A0E2);
            A0A2 = this.A04.A0C(A0E2) - this.A04.A07();
        } else {
            View A0F2 = A0F();
            this.A07.A02 += this.A04.A0A();
            C02243z r12 = this.A07;
            if (this.A05) {
                i3 = 1;
            }
            r12.A03 = i3;
            this.A07.A01 = A0q(A0F2) + this.A07.A03;
            this.A07.A06 = this.A04.A0F(A0F2);
            A0A2 = (-this.A04.A0F(A0F2)) + this.A04.A0A();
        }
        C02243z r13 = this.A07;
        r13.A00 = i2;
        if (z) {
            r13.A00 -= A0A2;
        }
        this.A07.A07 = A0A2;
        if (A0G[0].length() != 7) {
            A0G[1] = "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz";
            return;
        }
        throw new RuntimeException();
    }

    private void A0b(C02223x r3) {
        A0Y(r3.A01, r3.A00);
    }

    private void A0c(C02223x r3) {
        A0Z(r3.A01, r3.A00);
    }

    private void A0d(AnonymousClass4S r6, int i) {
        int A0X = A0X();
        if (i >= 0) {
            int A062 = this.A04.A06() - i;
            if (this.A05) {
                for (int i2 = 0; i2 < A0X; i2++) {
                    View A0u = A0u(i2);
                    if (this.A04.A0F(A0u) < A062 || this.A04.A0H(A0u) < A062) {
                        A0f(r6, 0, i2);
                        return;
                    }
                }
                return;
            }
            for (int i3 = A0X - 1; i3 >= 0; i3--) {
                View A0u2 = A0u(i3);
                if (this.A04.A0F(A0u2) < A062 || this.A04.A0H(A0u2) < A062) {
                    A0f(r6, A0X - 1, i3);
                    return;
                }
            }
        }
    }

    private void A0e(AnonymousClass4S r8, int i) {
        if (i >= 0) {
            String[] strArr = A0G;
            if (strArr[2].charAt(4) != strArr[4].charAt(4)) {
                A0G[0] = "66";
                int A0X = A0X();
                if (this.A05) {
                    for (int i2 = A0X - 1; i2 >= 0; i2--) {
                        View A0u = A0u(i2);
                        if (this.A04.A0C(A0u) <= i) {
                            AnonymousClass44 r4 = this.A04;
                            String[] strArr2 = A0G;
                            if (strArr2[6].length() == strArr2[7].length()) {
                                A0G[3] = "uDZbJl3GZvnd0";
                                if (r4.A0G(A0u) > i) {
                                }
                            } else if (r4.A0G(A0u) > i) {
                            }
                        }
                        A0f(r8, A0X - 1, i2);
                        return;
                    }
                    return;
                }
                for (int i3 = 0; i3 < A0X; i3++) {
                    View A0u2 = A0u(i3);
                    int A0C2 = this.A04.A0C(A0u2);
                    if (A0G[3].length() != 28) {
                        A0G[1] = "ET87P0AumYMcjI6vylu4qFXoEmTHeXod";
                        if (A0C2 > i || this.A04.A0G(A0u2) > i) {
                            A0f(r8, 0, i3);
                            return;
                        }
                    } else {
                        throw new RuntimeException();
                    }
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    private void A0f(AnonymousClass4S r2, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    A15(i3, r2);
                }
                return;
            }
            while (i > i2) {
                A15(i, r2);
                i--;
            }
        }
    }

    private void A0g(AnonymousClass4S r5, C02243z r6) {
        if (r6.A0B && !r6.A09) {
            int i = r6.A05;
            String[] strArr = A0G;
            if (strArr[6].length() == strArr[7].length()) {
                String[] strArr2 = A0G;
                strArr2[2] = "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK";
                strArr2[4] = "3weclwG7n9RXAySrMV3Jn51LrKgutG4n";
                if (i == -1) {
                    int i2 = r6.A07;
                    if (A0G[1].charAt(30) == 'o') {
                        A0G[3] = "CiNTyTfZO3PW6tP";
                        A0d(r5, i2);
                        return;
                    }
                } else {
                    A0e(r5, r6.A07);
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    private void A0h(AnonymousClass4S r14, AnonymousClass4Z r15, int scrapExtraEnd, int scrapExtraEnd2) {
        boolean z;
        if (r15.A08() && A0X() != 0 && !r15.A07() && A27()) {
            int direction = 0;
            int i = 0;
            List<AbstractC02274c> A0K = r14.A0K();
            int size = A0K.size();
            int A0q = A0q(A0u(0));
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC02274c r11 = A0K.get(i2);
                if (!r11.A0d()) {
                    char c = 1;
                    if (r11.A0J() < A0q) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z != this.A05) {
                        c = 65535;
                    }
                    if (c == 65535) {
                        direction += this.A04.A0D(r11.A0H);
                    } else {
                        i += this.A04.A0D(r11.A0H);
                    }
                }
            }
            this.A07.A08 = A0K;
            if (direction > 0) {
                A0Z(A0q(A0F()), scrapExtraEnd);
                C02243z r0 = this.A07;
                r0.A02 = direction;
                r0.A00 = 0;
                r0.A04();
                A09(r14, this.A07, r15, false);
            }
            if (i > 0) {
                A0Y(A0q(A0E()), scrapExtraEnd2);
                C02243z r02 = this.A07;
                r02.A02 = i;
                r02.A00 = 0;
                r02.A04();
                A09(r14, this.A07, r15, false);
            }
            this.A07.A08 = null;
        }
    }

    private void A0i(AnonymousClass4S r5, AnonymousClass4Z r6, C02223x r7) {
        int i;
        if (!A0m(r6, r7)) {
            boolean A0l = A0l(r5, r6, r7);
            String[] strArr = A0G;
            if (strArr[2].charAt(4) != strArr[4].charAt(4)) {
                A0G[3] = "XDJ2jDWhUW9a7iN";
                if (!A0l) {
                    r7.A02();
                    if (this.A0C) {
                        i = r6.A03() - 1;
                    } else {
                        i = 0;
                    }
                    r7.A01 = i;
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    private final void A0j(boolean z) {
        A23(null);
        if (z != this.A0A) {
            this.A0A = z;
            A0z();
        }
    }

    private final boolean A0k() {
        if (this.A04.A09() == 0 && this.A04.A06() == 0) {
            return true;
        }
        return false;
    }

    private boolean A0l(AnonymousClass4S r6, AnonymousClass4Z r7, C02223x r8) {
        View A0Q;
        int A0A2;
        boolean z = false;
        if (A0X() == 0) {
            return false;
        }
        View A0t = A0t();
        if (A0t != null && r8.A06(A0t, r7)) {
            r8.A05(A0t);
            return true;
        } else if (this.A08 != this.A0C) {
            return false;
        } else {
            if (r8.A02) {
                A0Q = A0P(r6, r7);
            } else {
                A0Q = A0Q(r6, r7);
            }
            if (A0Q == null) {
                return false;
            }
            r8.A04(A0Q);
            if (!r7.A07() && A27()) {
                if (this.A04.A0F(A0Q) >= this.A04.A07() || this.A04.A0C(A0Q) < this.A04.A0A()) {
                    z = true;
                }
                if (z) {
                    if (r8.A02) {
                        A0A2 = this.A04.A07();
                    } else {
                        A0A2 = this.A04.A0A();
                    }
                    r8.A00 = A0A2;
                }
            }
            return true;
        }
    }

    private boolean A0m(AnonymousClass4Z r8, C02223x r9) {
        int i;
        int A0F2;
        boolean z = false;
        if (r8.A07() || (i = this.A01) == -1) {
            return false;
        }
        if (i < 0 || i >= r8.A03()) {
            this.A01 = -1;
            this.A02 = RecyclerView.UNDEFINED_DURATION;
            return false;
        }
        r9.A01 = this.A01;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null && linearLayoutManager$SavedState.A01()) {
            r9.A02 = this.A03.A02;
            if (r9.A02) {
                r9.A00 = this.A04.A07() - this.A03.A00;
            } else {
                r9.A00 = this.A04.A0A() + this.A03.A00;
            }
            return true;
        } else if (this.A02 == Integer.MIN_VALUE) {
            View A1r = A1r(this.A01);
            if (A1r == null) {
                if (A0X() > 0) {
                    boolean z2 = this.A01 < A0q(A0u(0));
                    boolean z3 = this.A05;
                    if (A0G[1].charAt(30) != 'o') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0G;
                    strArr[2] = "1tNDA9T9nSDYektAgKE77gOe81bMFJSk";
                    strArr[4] = "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm";
                    if (z2 == z3) {
                        z = true;
                    }
                    r9.A02 = z;
                }
                r9.A02();
            } else if (this.A04.A0D(A1r) > this.A04.A0B()) {
                r9.A02();
                return true;
            } else if (this.A04.A0F(A1r) - this.A04.A0A() < 0) {
                r9.A00 = this.A04.A0A();
                r9.A02 = false;
                return true;
            } else if (this.A04.A07() - this.A04.A0C(A1r) < 0) {
                r9.A00 = this.A04.A07();
                r9.A02 = true;
                return true;
            } else {
                if (r9.A02) {
                    int A0C2 = this.A04.A0C(A1r);
                    AnonymousClass44 r5 = this.A04;
                    String[] strArr2 = A0G;
                    if (strArr2[2].charAt(4) != strArr2[4].charAt(4)) {
                        A0G[3] = "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu";
                        A0F2 = A0C2 + r5.A05();
                    } else {
                        throw new RuntimeException();
                    }
                } else {
                    A0F2 = this.A04.A0F(A1r);
                }
                r9.A00 = A0F2;
            }
            return true;
        } else {
            boolean z4 = this.A05;
            r9.A02 = z4;
            if (z4) {
                r9.A00 = this.A04.A07() - this.A02;
            } else {
                r9.A00 = this.A04.A0A() + this.A02;
            }
            return true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public int A1i(int i, AnonymousClass4S r4, AnonymousClass4Z r5) {
        if (this.A00 == 1) {
            return 0;
        }
        return A05(i, r4, r5);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public int A1j(int i, AnonymousClass4S r6, AnonymousClass4Z r7) {
        if (this.A00 == 0) {
            return 0;
        }
        int A052 = A05(i, r6, r7);
        String[] strArr = A0G;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A0G[3] = "CDnF1shpb";
        return A052;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final int A1k(AnonymousClass4Z r2) {
        return A0A(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final int A1l(AnonymousClass4Z r2) {
        return A0B(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final int A1m(AnonymousClass4Z r2) {
        return A0C(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final int A1n(AnonymousClass4Z r2) {
        return A0A(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final int A1o(AnonymousClass4Z r2) {
        return A0B(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final int A1p(AnonymousClass4Z r2) {
        return A0C(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final Parcelable A1q() {
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null) {
            return new WrappedParcelable(new LinearLayoutManager$SavedState(linearLayoutManager$SavedState));
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState2 = new LinearLayoutManager$SavedState();
        if (A0X() > 0) {
            A2E();
            boolean z = this.A08 ^ this.A05;
            linearLayoutManager$SavedState2.A02 = z;
            if (z) {
                View A0E2 = A0E();
                linearLayoutManager$SavedState2.A00 = this.A04.A07() - this.A04.A0C(A0E2);
                linearLayoutManager$SavedState2.A01 = A0q(A0E2);
            } else {
                View refChild = A0F();
                linearLayoutManager$SavedState2.A01 = A0q(refChild);
                linearLayoutManager$SavedState2.A00 = this.A04.A0F(refChild) - this.A04.A0A();
            }
        } else {
            linearLayoutManager$SavedState2.A00();
        }
        return new WrappedParcelable(linearLayoutManager$SavedState2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    @Nullable
    public final View A1r(int firstChild) {
        int viewPosition = A0X();
        if (viewPosition == 0) {
            return null;
        }
        int A0q = firstChild - A0q(A0u(0));
        if (A0q >= 0 && A0q < viewPosition) {
            View A0u = A0u(A0q);
            if (A0q(A0u) == firstChild) {
                return A0u;
            }
        }
        return super.A1r(firstChild);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public View A1s(View view, int i, AnonymousClass4S r10, AnonymousClass4Z r11) {
        int A2C;
        View A0N;
        View A0E2;
        A0V();
        if (A0X() == 0 || (A2C = A2C(i)) == Integer.MIN_VALUE) {
            return null;
        }
        A2E();
        A2E();
        A0a(A2C, (int) (((float) this.A04.A0B()) * 0.33333334f), false, r11);
        C02243z r1 = this.A07;
        r1.A07 = RecyclerView.UNDEFINED_DURATION;
        r1.A0B = false;
        A09(r10, r1, r11, true);
        if (A2C == -1) {
            A0N = A0O(r10, r11);
        } else {
            A0N = A0N(r10, r11);
        }
        if (A2C == -1) {
            A0E2 = A0F();
        } else {
            A0E2 = A0E();
        }
        boolean hasFocusable = A0E2.hasFocusable();
        if (A0G[0].length() != 7) {
            String[] strArr = A0G;
            strArr[2] = "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38";
            strArr[4] = "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa";
            if (!hasFocusable) {
                return A0N;
            }
            if (A0N == null) {
                return null;
            }
            return A0E2;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public AnonymousClass4L A1t() {
        return new AnonymousClass4L(-2, -2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public void A1u(int i) {
        this.A01 = i;
        this.A02 = RecyclerView.UNDEFINED_DURATION;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null) {
            linearLayoutManager$SavedState.A00();
        }
        A0z();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A1v(int i, int i2, AnonymousClass4Z r6, AnonymousClass4I r7) {
        int i3;
        if (this.A00 != 0) {
            i = i2;
        }
        if (A0X() != 0 && i != 0) {
            A2E();
            if (i > 0) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            A0a(i3, Math.abs(i), true, r6);
            A2J(r6, this.A07, r7);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A1w(int i, AnonymousClass4I r9) {
        boolean z;
        int i2;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        int i3 = -1;
        if (linearLayoutManager$SavedState == null || !linearLayoutManager$SavedState.A01()) {
            A0V();
            z = this.A05;
            int i4 = this.A01;
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[1] = "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM";
            if (i4 == -1) {
                i2 = z ? i - 1 : 0;
            } else {
                i2 = this.A01;
            }
        } else {
            z = this.A03.A02;
            i2 = this.A03.A01;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.A06 && i2 >= 0 && i2 < i; i5++) {
            r9.A3K(i2, 0);
            i2 += i3;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A1x(Parcelable parcelable) {
        if (parcelable instanceof WrappedParcelable) {
            ClassLoader classLoader = getClass().getClassLoader();
            if (A0G[1].charAt(30) == 'o') {
                A0G[1] = "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI";
                if (classLoader != null) {
                    if (A0G[5].length() == 31) {
                        A0G[3] = "tm";
                        Parcelable unwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
                        if (unwrap instanceof LinearLayoutManager$SavedState) {
                            this.A03 = (LinearLayoutManager$SavedState) unwrap;
                            A0z();
                            return;
                        }
                        return;
                    }
                } else {
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A1y(AccessibilityEvent accessibilityEvent) {
        super.A1y(accessibilityEvent);
        if (A0X() > 0) {
            accessibilityEvent.setFromIndex(A29());
            int A2A = A2A();
            if (A0G[3].length() != 28) {
                A0G[3] = "9E5bhv9RVKulu";
                accessibilityEvent.setToIndex(A2A);
                return;
            }
            throw new RuntimeException();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00a4, code lost:
        if (r8 != -1) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x022c, code lost:
        if (r8 != -1) goto L_0x00a6;
     */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void A1z(com.facebook.ads.redexgen.X.AnonymousClass4S r10, com.facebook.ads.redexgen.X.AnonymousClass4Z r11) {
        /*
        // Method dump skipped, instructions count: 607
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.TB.A1z(com.facebook.ads.redexgen.X.4S, com.facebook.ads.redexgen.X.4Z):void");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public void A20(AnonymousClass4Z r2) {
        super.A20(r2);
        this.A03 = null;
        this.A01 = -1;
        this.A02 = RecyclerView.UNDEFINED_DURATION;
        this.A0D.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A21(C0469Eq eq, AnonymousClass4S r3) {
        super.A21(eq, r3);
        if (this.A09) {
            A1J(r3);
            r3.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public void A22(C0469Eq eq, AnonymousClass4Z r4, int i) {
        TC tc = new TC(eq.getContext());
        tc.A0B(i);
        A1M(tc);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A23(String str) {
        if (this.A03 == null) {
            super.A23(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final boolean A24() {
        if (!(A0Z() == 1073741824 || A0j() == 1073741824)) {
            boolean A1X = A1X();
            if (A0G[0].length() != 7) {
                A0G[0] = "ZYU5Lu8KJdo1W8";
                if (A1X) {
                    return true;
                }
            } else {
                throw new RuntimeException();
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final boolean A25() {
        return this.A00 == 0;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final boolean A26() {
        return this.A00 == 1;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public boolean A27() {
        return this.A03 == null && this.A08 == this.A0C;
    }

    public final int A28() {
        View A0H = A0H(0, A0X(), true, false);
        if (A0H == null) {
            return -1;
        }
        return A0q(A0H);
    }

    public final int A29() {
        View A0H = A0H(0, A0X(), false, true);
        if (A0H == null) {
            return -1;
        }
        return A0q(A0H);
    }

    public final int A2A() {
        View A0H = A0H(A0X() - 1, -1, false, true);
        if (A0H == null) {
            return -1;
        }
        return A0q(A0H);
    }

    public final int A2B() {
        return this.A00;
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0096 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00a6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c5 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00d5 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int A2C(int r8) {
        /*
        // Method dump skipped, instructions count: 214
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.TB.A2C(int):int");
    }

    public View A2D(AnonymousClass4S r8, AnonymousClass4Z r9, int boundsEnd, int i, int i2) {
        int i3;
        A2E();
        View view = null;
        View view2 = null;
        int A0A2 = this.A04.A0A();
        int A072 = this.A04.A07();
        if (i > boundsEnd) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        while (boundsEnd != i) {
            View A0u = A0u(boundsEnd);
            int A0q = A0q(A0u);
            if (A0q >= 0 && A0q < i2) {
                if (((AnonymousClass4L) A0u.getLayoutParams()).A02()) {
                    if (view == null) {
                        view = A0u;
                    }
                } else if (this.A04.A0F(A0u) < A072 && this.A04.A0C(A0u) >= A0A2) {
                    return A0u;
                } else {
                    if (view2 == null) {
                        view2 = A0u;
                    }
                }
            }
            boundsEnd += i3;
        }
        return view2 != null ? view2 : view;
    }

    public final void A2E() {
        if (this.A07 == null) {
            this.A07 = A0T();
        }
        if (this.A04 == null) {
            this.A04 = AnonymousClass44.A02(this, this.A00);
        }
    }

    public final void A2F(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(A0U(0, 20, 1) + i);
        } else if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        } else {
            A0G[1] = "wMuOUB68W5cmyVCUMue198JFnL9Wkeot";
            A23(null);
            if (i != this.A00) {
                this.A00 = i;
                this.A04 = null;
                A0z();
            }
        }
    }

    public final void A2G(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null) {
            linearLayoutManager$SavedState.A00();
        }
        A0z();
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[3] = "tDl3kZGUKMTs";
    }

    public void A2H(AnonymousClass4S r1, AnonymousClass4Z r2, C02223x r3, int i) {
    }

    public void A2I(AnonymousClass4S r15, AnonymousClass4Z r16, C02243z r17, C02233y r18) {
        int top;
        int A0h;
        int A0E2;
        int i;
        int i2;
        int top2;
        View A032 = r17.A03(r15);
        if (A032 == null) {
            r18.A01 = true;
            return;
        }
        AnonymousClass4L r2 = (AnonymousClass4L) A032.getLayoutParams();
        if (r17.A08 == null) {
            boolean z = this.A05;
            if (r17.A05 == -1) {
                top2 = 1;
            } else {
                top2 = 0;
            }
            if (z == top2) {
                A18(A032);
            } else {
                A1A(A032, 0);
            }
        } else {
            boolean z2 = this.A05;
            if (r17.A05 == -1) {
                top = 1;
            } else {
                top = 0;
            }
            if (z2 == top) {
                A17(A032);
            } else {
                A19(A032, 0);
            }
        }
        A1B(A032, 0, 0);
        r18.A00 = this.A04.A0D(A032);
        if (this.A00 == 1) {
            if (A2K()) {
                i2 = A0i() - A0g();
                i = i2 - this.A04.A0E(A032);
            } else {
                i = A0f();
                i2 = this.A04.A0E(A032) + i;
            }
            if (r17.A05 == -1) {
                A0E2 = r17.A06;
                A0h = r17.A06 - r18.A00;
            } else {
                A0h = r17.A06;
                A0E2 = r17.A06 + r18.A00;
            }
        } else {
            A0h = A0h();
            A0E2 = this.A04.A0E(A032) + A0h;
            if (r17.A05 == -1) {
                i2 = r17.A06;
                i = r17.A06 - r18.A00;
            } else {
                i = r17.A06;
                i2 = r17.A06 + r18.A00;
            }
        }
        A1C(A032, i, A0h, i2, A0E2);
        if (r2.A02() || r2.A01()) {
            r18.A03 = true;
        }
        r18.A02 = A032.hasFocusable();
    }

    public void A2J(AnonymousClass4Z r4, C02243z r5, AnonymousClass4I r6) {
        int i = r5.A01;
        if (i >= 0 && i < r4.A03()) {
            r6.A3K(i, Math.max(0, r5.A07));
        }
    }

    public final boolean A2K() {
        return A0b() == 1;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4W
    public final PointF A46(int firstChildPos) {
        if (A0X() == 0) {
            return null;
        }
        boolean z = false;
        int i = 1;
        if (firstChildPos < A0q(A0u(0))) {
            z = true;
        }
        if (z != this.A05) {
            i = -1;
        }
        int i2 = this.A00;
        if (A0G[0].length() != 7) {
            A0G[5] = "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN";
            if (i2 == 0) {
                return new PointF((float) i, 0.0f);
            }
            return new PointF(0.0f, (float) i);
        }
        throw new RuntimeException();
    }
}
