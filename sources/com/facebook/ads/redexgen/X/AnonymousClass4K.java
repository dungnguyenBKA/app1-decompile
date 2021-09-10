package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.4K  reason: invalid class name */
public abstract class AnonymousClass4K {
    public static byte[] A0I;
    public static String[] A0J;
    public int A00;
    public C02073i A01;
    @Nullable
    public AnonymousClass4X A02;
    public C0469Eq A03;
    public C02324h A04 = new C02324h(this.A0G);
    public C02324h A05 = new C02324h(this.A0H);
    public boolean A06 = false;
    public boolean A07 = false;
    public boolean A08;
    public boolean A09 = false;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public boolean A0E = true;
    public boolean A0F = true;
    public final AbstractC02304f A0G = new TJ(this);
    public final AbstractC02304f A0H = new TK(this);

    static {
        A09();
        A08();
    }

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 75);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        byte[] bArr = {-2, 33, 33, 34, 33, -35, 19, 38, 34, 52, -35, 37, 30, 48, -35, 15, 34, 32, 54, 32, 41, 34, 47, 19, 38, 34, 52, -35, 30, 48, -35, 45, 30, 47, 34, 43, 49, -35, 31, 50, 49, -35, 51, 38, 34, 52, -35, 38, 48, -35, 43, 44, 49, -35, 30, -35, 47, 34, 30, 41, -35, 32, 37, 38, 41, 33, -21, -35, 18, 43, 35, 38, 41, 49, 34, 47, 34, 33, -35, 38, 43, 33, 34, 53, -9, -35, -5, 8, 8, 9, 14, -70, 7, 9, 16, -1, -70, -5, -70, -3, 2, 3, 6, -2, -70, 0, 12, 9, 7, -70, 8, 9, 8, -57, -1, 18, 3, 13, 14, 3, 8, 1, -70, 3, 8, -2, -1, 18, -44, -80, -61, -63, -41, -63, -54, -61, -48, -76, -57, -61, -43, 9, 31, 37, -48, 29, 37, 35, 36, -48, 31, 38, 21, 34, 34, 25, 20, 21, -48, 31, 30, -4, 17, 41, 31, 37, 36, -13, 24, 25, 28, 20, 34, 21, 30, -40, 2, 21, 19, 41, 19, 28, 21, 34, -48, 34, 21, 19, 41, 19, 28, 21, 34, -36, -48, 3, 36, 17, 36, 21, -48, 35, 36, 17, 36, 21, -39, -48, -78, -56, -50, 121, -58, -50, -52, -51, 121, -56, -49, -66, -53, -53, -62, -67, -66, 121, -52, -58, -56, -56, -51, -63, -84, -68, -53, -56, -59, -59, -83, -56, -87, -56, -52, -62, -51, -62, -56, -57, 121, -51, -56, 121, -52, -50, -55, -55, -56, -53, -51, 121, -52, -58, -56, -56, -51, -63, 121, -52, -68, -53, -56, -59, -59, -62, -57, -64};
        String[] strArr = A0J;
        if (strArr[2].length() != strArr[4].length()) {
            A0J[6] = "kyP20liVKsmkdJ";
            A0I = bArr;
            return;
        }
        throw new RuntimeException();
    }

    public static void A09() {
        A0J = new String[]{"NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc", "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD", "VrTEPZjwbsMyuvHOm", "2WwBzOWctlsBfaK16SO", "SN9IkStz5", "kDHla2kaeJhueA2usdy0jZceB2KGO", "Oz8ehwpCKAgd43CqPtwSSE9zN5", "pRsAYaXPUkY6EiG3qKZOmbtQ8"};
    }

    public abstract AnonymousClass4L A1t();

    public static int A00(int mode, int size, int i) {
        int mode2 = View.MeasureSpec.getMode(mode);
        int size2 = View.MeasureSpec.getSize(mode);
        if (mode2 == Integer.MIN_VALUE) {
            return Math.min(size2, Math.max(size, i));
        }
        if (mode2 != 1073741824) {
            return Math.max(size, i);
        }
        return size2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0061, code lost:
        if (r7 != 1073741824) goto L_0x0090;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int A01(int r6, int r7, int r8, int r9, boolean r10) {
        /*
        // Method dump skipped, instructions count: 149
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass4K.A01(int, int, int, int, boolean):int");
    }

    private final int A02(View view) {
        return ((AnonymousClass4L) view.getLayoutParams()).A03.bottom;
    }

    private final int A03(View view) {
        return ((AnonymousClass4L) view.getLayoutParams()).A03.left;
    }

    private final int A04(View view) {
        return ((AnonymousClass4L) view.getLayoutParams()).A03.right;
    }

    private final int A05(View view) {
        return ((AnonymousClass4L) view.getLayoutParams()).A03.top;
    }

    private final int A06(AnonymousClass4S r2, AnonymousClass4Z r3) {
        return 0;
    }

    private final void A0A(int i) {
        A0D(i, A0u(i));
    }

    private final void A0B(int i) {
        if (A0u(i) != null) {
            this.A01.A0E(i);
        }
    }

    private final void A0C(int i, int i2) {
        View A0u = A0u(i);
        if (A0u != null) {
            A0A(i);
            A0F(A0u, i2);
            return;
        }
        throw new IllegalArgumentException(A07(85, 44, 79) + i + this.A03.toString());
    }

    private void A0D(int i, View view) {
        this.A01.A0D(i);
    }

    private final void A0E(View view) {
        this.A01.A0G(view);
    }

    private final void A0F(View view, int i) {
        A0G(view, i, (AnonymousClass4L) view.getLayoutParams());
    }

    private final void A0G(View view, int i, AnonymousClass4L r8) {
        AbstractC02274c A0G2 = C0469Eq.A0G(view);
        if (A0G2.A0d()) {
            this.A03.A0t.A0A(A0G2);
        } else {
            C02354k r3 = this.A03.A0t;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[0] = "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe";
            r3.A0B(A0G2);
        }
        this.A01.A0I(view, i, r8, A0G2.A0d());
    }

    private void A0H(View view, int currentIndex, boolean z) {
        AbstractC02274c A0G2 = C0469Eq.A0G(view);
        if (z || A0G2.A0d()) {
            this.A03.A0t.A0A(A0G2);
        } else {
            this.A03.A0t.A0B(A0G2);
        }
        AnonymousClass4L r5 = (AnonymousClass4L) view.getLayoutParams();
        if (A0G2.A0j() || A0G2.A0e()) {
            if (A0G2.A0e()) {
                A0G2.A0T();
            } else {
                A0G2.A0P();
            }
            this.A01.A0I(view, currentIndex, view.getLayoutParams(), false);
        } else {
            ViewParent parent = view.getParent();
            C0469Eq eq = this.A03;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "5ABI9jSeQ";
            if (parent == eq) {
                int A082 = this.A01.A08(view);
                if (currentIndex == -1) {
                    currentIndex = this.A01.A06();
                }
                if (A082 == -1) {
                    throw new IllegalStateException(A07(0, 85, 114) + this.A03.indexOfChild(view) + this.A03.A1J());
                } else if (A082 != currentIndex) {
                    this.A03.A06.A0C(A082, currentIndex);
                }
            } else {
                this.A01.A0J(view, currentIndex, false);
                r5.A01 = true;
                AnonymousClass4X r0 = this.A02;
                if (r0 != null && r0.A0G()) {
                    this.A02.A0D(view);
                }
            }
        }
        if (r5.A02) {
            A0G2.A0H.invalidate();
            r5.A02 = false;
        }
    }

    private final void A0I(View view, Rect rect) {
        C0469Eq.A0q(view, rect);
    }

    private void A0K(AnonymousClass4S r3, int i, View view) {
        AbstractC02274c A0G2 = C0469Eq.A0G(view);
        if (!A0G2.A0i()) {
            if (!A0G2.A0c() || A0G2.A0d() || this.A03.A04.A0C()) {
                A0A(i);
                r3.A0X(view);
                this.A03.A0t.A0D(A0G2);
                return;
            }
            A0B(i);
            r3.A0c(A0G2);
        }
    }

    private final void A0L(AnonymousClass4S r6, AnonymousClass4Z r7, AccessibilityEvent accessibilityEvent) {
        C0469Eq eq = this.A03;
        if (eq != null && accessibilityEvent != null) {
            boolean z = true;
            if (A0J[6].length() != 1) {
                String[] strArr = A0J;
                strArr[2] = "A1LbQwkKC8kdEmdjm";
                strArr[4] = "mpAFCzQjd";
                if (!eq.canScrollVertically(1) && !this.A03.canScrollVertically(-1) && !this.A03.canScrollHorizontally(-1) && !this.A03.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                if (A0J[7].length() != 8) {
                    A0J[0] = "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx";
                    if (this.A03.A04 == null) {
                        return;
                    }
                } else if (this.A03.A04 == null) {
                    return;
                }
                accessibilityEvent.setItemCount(this.A03.A04.A0E());
                return;
            }
            throw new RuntimeException();
        }
    }

    private final void A0M(AnonymousClass4S r5, AnonymousClass4Z r6, AnonymousClass3O r7) {
        if (this.A03.canScrollVertically(-1) || this.A03.canScrollHorizontally(-1)) {
            r7.A0O(8192);
            r7.A0S(true);
        }
        if (this.A03.canScrollVertically(1) || this.A03.canScrollHorizontally(1)) {
            r7.A0O(4096);
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[2] = "WKK7ZU1nOyoZ4isR3";
            strArr2[4] = "S1xUaVTVF";
            r7.A0S(true);
        }
        r7.A0Q(AnonymousClass3L.A00(A0s(r5, r6), A0r(r5, r6), A0Q(r5, r6), A06(r5, r6)));
    }

    /* access modifiers changed from: private */
    public void A0N(AnonymousClass4X r2) {
        if (this.A02 == r2) {
            this.A02 = null;
        }
    }

    private final boolean A0O() {
        AnonymousClass4X r0 = this.A02;
        return r0 != null && r0.A0G();
    }

    public static boolean A0P(int specMode, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (i2 > 0 && specMode != i2) {
            return false;
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                return true;
            }
            if (mode == 1073741824 && size == specMode) {
                return true;
            }
            return false;
        } else if (size >= specMode) {
            return true;
        } else {
            return false;
        }
    }

    private final boolean A0Q(AnonymousClass4S r2, AnonymousClass4Z r3) {
        return false;
    }

    private final boolean A0R(AnonymousClass4S r9, AnonymousClass4Z r10, int hScroll, Bundle bundle) {
        C0469Eq eq = this.A03;
        if (eq == null) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        if (hScroll == 4096) {
            if (eq.canScrollVertically(1)) {
                i = (A0Y() - A0h()) - A0e();
            }
            if (this.A03.canScrollHorizontally(1)) {
                int A0i = A0i();
                int A0f = A0f();
                if (A0J[7].length() != 8) {
                    A0J[7] = "6TTpYbQ6a4";
                    i2 = (A0i - A0f) - A0g();
                } else {
                    throw new RuntimeException();
                }
            }
        } else if (hScroll == 8192) {
            if (eq.canScrollVertically(-1)) {
                i = -((A0Y() - A0h()) - A0e());
            }
            if (this.A03.canScrollHorizontally(-1)) {
                i2 = -((A0i() - A0f()) - A0g());
            }
        }
        if (i == 0 && i2 == 0) {
            return false;
        }
        this.A03.scrollBy(i2, i);
        return true;
    }

    private final boolean A0S(AnonymousClass4S r2, AnonymousClass4Z r3, View view, int i, Bundle bundle) {
        return false;
    }

    private boolean A0T(C0469Eq eq, int parentLeft, int parentTop) {
        View focusedChild = eq.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int A0f = A0f();
        int A0h = A0h();
        int A0i = A0i() - A0g();
        int A0Y = A0Y() - A0e();
        Rect rect = this.A03.A0p;
        A0I(focusedChild, rect);
        if (rect.left - parentLeft >= A0i || rect.right - parentLeft <= A0f || rect.top - parentTop >= A0Y || rect.bottom - parentTop <= A0h) {
            return false;
        }
        if (A0J[3].length() != 28) {
            A0J[0] = "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe";
            return true;
        }
        throw new RuntimeException();
    }

    @Deprecated
    private final boolean A0U(C0469Eq eq, View view, View view2) {
        return A0O() || eq.A1v();
    }

    private int[] A0V(C0469Eq eq, View view, Rect rect, boolean z) {
        int[] iArr = new int[2];
        int childRight = A0f();
        int childBottom = A0h();
        int offScreenTop = A0i() - A0g();
        int offScreenRight = A0Y() - A0e();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int width = rect.width() + left;
        int min = Math.min(0, left - childRight);
        int min2 = Math.min(0, top - childBottom);
        int max = Math.max(0, width - offScreenTop);
        int max2 = Math.max(0, (rect.height() + top) - offScreenRight);
        if (A0b() == 1) {
            if (max == 0) {
                max = Math.max(min, width - offScreenTop);
            }
        } else if (min != 0) {
            max = min;
        } else {
            max = Math.min(left - childRight, max);
        }
        if (min2 == 0) {
            min2 = Math.min(top - childBottom, max2);
        }
        iArr[0] = max;
        iArr[1] = min2;
        return iArr;
    }

    public final int A0W() {
        return -1;
    }

    public final int A0X() {
        C02073i r0 = this.A01;
        if (r0 != null) {
            return r0.A06();
        }
        return 0;
    }

    public final int A0Y() {
        return this.A0A;
    }

    public final int A0Z() {
        return this.A0B;
    }

    public final int A0a() {
        AnonymousClass48 r0;
        C0469Eq eq = this.A03;
        if (eq != null) {
            r0 = eq.getAdapter();
        } else {
            r0 = null;
        }
        if (r0 != null) {
            return r0.A0E();
        }
        return 0;
    }

    public final int A0b() {
        return AnonymousClass2z.A01(this.A03);
    }

    public final int A0c() {
        return AnonymousClass2z.A02(this.A03);
    }

    public final int A0d() {
        return AnonymousClass2z.A03(this.A03);
    }

    public final int A0e() {
        C0469Eq eq = this.A03;
        if (eq != null) {
            return eq.getPaddingBottom();
        }
        return 0;
    }

    public final int A0f() {
        C0469Eq eq = this.A03;
        if (eq != null) {
            return eq.getPaddingLeft();
        }
        return 0;
    }

    public final int A0g() {
        C0469Eq eq = this.A03;
        if (eq != null) {
            return eq.getPaddingRight();
        }
        return 0;
    }

    public final int A0h() {
        C0469Eq eq = this.A03;
        if (eq != null) {
            return eq.getPaddingTop();
        }
        return 0;
    }

    public final int A0i() {
        return this.A0C;
    }

    public final int A0j() {
        return this.A0D;
    }

    public final int A0k(View view) {
        return view.getBottom() + A02(view);
    }

    public final int A0l(View view) {
        return view.getLeft() - A03(view);
    }

    public final int A0m(View view) {
        Rect rect = ((AnonymousClass4L) view.getLayoutParams()).A03;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public final int A0n(View view) {
        Rect rect = ((AnonymousClass4L) view.getLayoutParams()).A03;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public final int A0o(View view) {
        return view.getRight() + A04(view);
    }

    public final int A0p(View view) {
        return view.getTop() - A05(view);
    }

    public final int A0q(View view) {
        return ((AnonymousClass4L) view.getLayoutParams()).A00();
    }

    public int A0r(AnonymousClass4S r3, AnonymousClass4Z r4) {
        C0469Eq eq = this.A03;
        if (eq == null || eq.A04 == null || !A25()) {
            return 1;
        }
        return this.A03.A04.A0E();
    }

    public int A0s(AnonymousClass4S r3, AnonymousClass4Z r4) {
        C0469Eq eq = this.A03;
        if (eq == null || eq.A04 == null || !A26()) {
            return 1;
        }
        return this.A03.A04.A0E();
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x004c A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View A0t() {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.Eq r0 = r6.A03
            r5 = 0
            if (r0 != 0) goto L_0x0006
            return r5
        L_0x0006:
            android.view.View r3 = r0.getFocusedChild()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass4K.A0J
            r0 = 5
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L_0x0022
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x0022:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass4K.A0J
            java.lang.String r1 = "iiKud1wfkCloFGZ1U"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L_0x004c
            com.facebook.ads.redexgen.X.3i r4 = r6.A01
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass4K.A0J
            r0 = 5
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L_0x004d
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass4K.A0J
            java.lang.String r1 = "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX"
            r0 = 0
            r2[r0] = r1
            boolean r0 = r4.A0L(r3)
            if (r0 == 0) goto L_0x005b
        L_0x004c:
            return r5
        L_0x004d:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass4K.A0J
            java.lang.String r1 = "xPYIlKgRfeB9qWlMIQGlIgoODb"
            r0 = 7
            r2[r0] = r1
            boolean r0 = r4.A0L(r3)
            if (r0 == 0) goto L_0x005b
            goto L_0x004c
        L_0x005b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass4K.A0t():android.view.View");
    }

    public final View A0u(int i) {
        C02073i r0 = this.A01;
        if (r0 != null) {
            return r0.A0A(i);
        }
        return null;
    }

    public final View A0v(View view, int i) {
        return null;
    }

    public AnonymousClass4L A0w(Context context, AttributeSet attributeSet) {
        return new AnonymousClass4L(context, attributeSet);
    }

    public AnonymousClass4L A0x(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof AnonymousClass4L) {
            return new AnonymousClass4L((AnonymousClass4L) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new AnonymousClass4L((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new AnonymousClass4L(layoutParams);
    }

    public final void A0y() {
        AnonymousClass4X r0 = this.A02;
        if (r0 != null) {
            r0.A0A();
        }
    }

    public final void A0z() {
        C0469Eq eq = this.A03;
        if (eq != null) {
            eq.requestLayout();
        }
    }

    public final void A10(int i) {
        C0469Eq eq = this.A03;
        if (eq != null) {
            eq.A1U(i);
        }
    }

    public final void A11(int i) {
        C0469Eq eq = this.A03;
        if (eq != null) {
            eq.A1V(i);
        }
    }

    public final void A12(int i, int i2) {
        this.A0C = View.MeasureSpec.getSize(i);
        this.A0D = View.MeasureSpec.getMode(i);
        if (this.A0D == 0 && !C0469Eq.A1B) {
            this.A0C = 0;
        }
        this.A0A = View.MeasureSpec.getSize(i2);
        this.A0B = View.MeasureSpec.getMode(i2);
        if (this.A0B == 0 && !C0469Eq.A1B) {
            this.A0A = 0;
        }
    }

    public final void A13(int minX, int minY) {
        int maxX = A0X();
        if (maxX == 0) {
            this.A03.A1b(minX, minY);
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = RecyclerView.UNDEFINED_DURATION;
        int i4 = RecyclerView.UNDEFINED_DURATION;
        for (int i5 = 0; i5 < maxX; i5++) {
            View A0u = A0u(i5);
            Rect rect = this.A03.A0p;
            A0I(A0u, rect);
            if (rect.left < i) {
                i = rect.left;
            }
            if (rect.right > i3) {
                i3 = rect.right;
            }
            if (rect.top < i2) {
                i2 = rect.top;
            }
            if (rect.bottom > i4) {
                i4 = rect.bottom;
            }
        }
        this.A03.A0p.set(i, i2, i3, i4);
        String[] strArr = A0J;
        if (strArr[2].length() != strArr[4].length()) {
            String[] strArr2 = A0J;
            strArr2[2] = "hT857kPIBtMq0qM94";
            strArr2[4] = "qfhhOTku3";
            A16(this.A03.A0p, minX, minY);
            return;
        }
        throw new RuntimeException();
    }

    public final void A14(int i, int i2) {
        C0469Eq.A0x(this.A03, i, i2);
    }

    public final void A15(int i, AnonymousClass4S r3) {
        View A0u = A0u(i);
        A0B(i);
        r3.A0Y(A0u);
    }

    public void A16(Rect rect, int i, int i2) {
        A14(A00(i, rect.width() + A0f() + A0g(), A0d()), A00(i2, rect.height() + A0h() + A0e(), A0c()));
    }

    public final void A17(View view) {
        A19(view, -1);
    }

    public final void A18(View view) {
        A1A(view, -1);
    }

    public final void A19(View view, int i) {
        A0H(view, i, true);
    }

    public final void A1A(View view, int i) {
        A0H(view, i, false);
    }

    public final void A1B(View view, int i, int i2) {
        AnonymousClass4L r6 = (AnonymousClass4L) view.getLayoutParams();
        Rect A1F = this.A03.A1F(view);
        int i3 = i + A1F.left + A1F.right;
        int i4 = i2 + A1F.top + A1F.bottom;
        int A012 = A01(A0i(), A0j(), A0f() + A0g() + r6.leftMargin + r6.rightMargin + i3, r6.width, A25());
        int A013 = A01(A0Y(), A0Z(), A0h() + A0e() + r6.topMargin + r6.bottomMargin + i4, r6.height, A26());
        if (A1b(view, A012, A013, r6)) {
            view.measure(A012, A013);
        }
    }

    public final void A1C(View view, int i, int i2, int i3, int i4) {
        AnonymousClass4L r4 = (AnonymousClass4L) view.getLayoutParams();
        Rect rect = r4.A03;
        view.layout(rect.left + i + r4.leftMargin, rect.top + i2 + r4.topMargin, (i3 - rect.right) - r4.rightMargin, (i4 - rect.bottom) - r4.bottomMargin);
    }

    public final void A1D(View view, AnonymousClass3O r5) {
        AbstractC02274c A0G2 = C0469Eq.A0G(view);
        if (A0G2 != null && !A0G2.A0d() && !this.A01.A0L(A0G2.A0H)) {
            A1L(this.A03.A0r, this.A03.A0s, view, r5);
        }
    }

    public final void A1E(View view, AnonymousClass4S r2) {
        A0E(view);
        r2.A0Y(view);
    }

    /* JADX INFO: Multiple debug info for r7v0 'this'  com.facebook.ads.redexgen.X.4K: [D('insets' android.graphics.Rect), D('childMatrix' android.graphics.Matrix)] */
    public final void A1F(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((AnonymousClass4L) view.getLayoutParams()).A03;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (!(this.A03 == null || (matrix = view.getMatrix()) == null || matrix.isIdentity())) {
            RectF rectF = this.A03.A0q;
            rectF.set(rect);
            matrix.mapRect(rectF);
            int floor = (int) Math.floor((double) rectF.left);
            int floor2 = (int) Math.floor((double) rectF.top);
            float f = rectF.right;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "WbBFuKAltYM";
            rect.set(floor, floor2, (int) Math.ceil((double) f), (int) Math.ceil((double) rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public final void A1G(AnonymousClass3O r3) {
        A0M(this.A03.A0r, this.A03.A0s, r3);
    }

    public final void A1H(AnonymousClass4S r7) {
        int A0F2 = r7.A0F();
        for (int i = A0F2 - 1; i >= 0; i--) {
            View A0G2 = r7.A0G(i);
            AbstractC02274c A0G3 = C0469Eq.A0G(A0G2);
            if (!A0G3.A0i()) {
                A0G3.A0a(false);
                if (A0G3.A0f()) {
                    this.A03.removeDetachedView(A0G2, false);
                }
                if (this.A03.A05 != null) {
                    this.A03.A05.A0E(A0G3);
                }
                A0G3.A0a(true);
                r7.A0W(A0G2);
            }
        }
        r7.A0M();
        if (A0F2 > 0) {
            this.A03.invalidate();
        }
    }

    public final void A1I(AnonymousClass4S r3) {
        for (int A0X = A0X() - 1; A0X >= 0; A0X--) {
            A0K(r3, A0X, A0u(A0X));
        }
    }

    public final void A1J(AnonymousClass4S r3) {
        for (int A0X = A0X() - 1; A0X >= 0; A0X--) {
            if (!C0469Eq.A0G(A0u(A0X)).A0i()) {
                A15(A0X, r3);
            }
        }
    }

    public void A1K(AnonymousClass4S r2, AnonymousClass4Z r3, int i, int i2) {
        this.A03.A1b(i, i2);
    }

    public void A1L(AnonymousClass4S r10, AnonymousClass4Z r11, View view, AnonymousClass3O r13) {
        int i;
        int i2;
        if (A26()) {
            i = A0q(view);
        } else {
            i = 0;
        }
        if (A25()) {
            i2 = A0q(view);
        } else {
            i2 = 0;
        }
        String[] strArr = A0J;
        if (strArr[5].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A0J[3] = "h476R5jl";
        r13.A0R(AnonymousClass3M.A00(i, 1, i2, 1, false, false));
    }

    public final void A1M(AnonymousClass4X r3) {
        AnonymousClass4X r0 = this.A02;
        if (!(r0 == null || r3 == r0 || !r0.A0G())) {
            this.A02.A0A();
        }
        this.A02 = r3;
        this.A02.A0E(this.A03, this);
    }

    public void A1N(C0469Eq eq) {
    }

    public final void A1O(C0469Eq eq) {
        this.A07 = true;
    }

    public final void A1P(C0469Eq eq) {
        A12(View.MeasureSpec.makeMeasureSpec(eq.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(eq.getHeight(), 1073741824));
    }

    public final void A1Q(C0469Eq eq) {
        if (eq == null) {
            this.A03 = null;
            this.A01 = null;
            this.A0C = 0;
            this.A0A = 0;
        } else {
            this.A03 = eq;
            this.A01 = eq.A01;
            this.A0C = eq.getWidth();
            this.A0A = eq.getHeight();
        }
        this.A0D = 1073741824;
        this.A0B = 1073741824;
    }

    public void A1R(C0469Eq eq, int i, int i2) {
    }

    public void A1S(C0469Eq eq, int i, int i2) {
    }

    public void A1T(C0469Eq eq, int i, int i2, int i3) {
    }

    public void A1U(C0469Eq eq, int i, int i2, Object obj) {
    }

    public final void A1V(C0469Eq eq, AnonymousClass4S r3) {
        this.A07 = false;
        A21(eq, r3);
    }

    public final void A1W(boolean z) {
        this.A06 = z;
    }

    public final boolean A1X() {
        int i = A0X();
        for (int i2 = 0; i2 < i; i2++) {
            ViewGroup.LayoutParams layoutParams = A0u(i2).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean A1Y() {
        C0469Eq eq = this.A03;
        return eq != null && eq.A0B;
    }

    public final boolean A1Z() {
        return this.A0E;
    }

    public final boolean A1a(int i, Bundle bundle) {
        return A0R(this.A03.A0r, this.A03.A0s, i, bundle);
    }

    public final boolean A1b(View view, int i, int i2, AnonymousClass4L r6) {
        if (view.isLayoutRequested() || !this.A0F || !A0P(view.getWidth(), i, r6.width) || !A0P(view.getHeight(), i2, r6.height)) {
            return true;
        }
        return false;
    }

    public final boolean A1c(View view, int i, Bundle bundle) {
        return A0S(this.A03.A0r, this.A03.A0s, view, i, bundle);
    }

    public boolean A1d(AnonymousClass4L r2) {
        return r2 != null;
    }

    public final boolean A1e(C0469Eq eq, View view, Rect rect, boolean z) {
        return A1f(eq, view, rect, z, false);
    }

    public final boolean A1f(C0469Eq eq, View view, Rect rect, boolean z, boolean z2) {
        int[] A0V = A0V(eq, view, rect, z);
        int i = A0V[0];
        int i2 = A0V[1];
        if ((z2 && !A0T(eq, i, i2)) || (i == 0 && i2 == 0)) {
            return false;
        }
        if (z) {
            eq.scrollBy(i, i2);
        } else {
            eq.A1f(i, i2);
        }
        return true;
    }

    public final boolean A1g(C0469Eq eq, AnonymousClass4Z r3, View view, View view2) {
        return A0U(eq, view, view2);
    }

    public final boolean A1h(C0469Eq eq, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    public int A1i(int i, AnonymousClass4S r3, AnonymousClass4Z r4) {
        return 0;
    }

    public int A1j(int i, AnonymousClass4S r3, AnonymousClass4Z r4) {
        return 0;
    }

    public int A1k(AnonymousClass4Z r2) {
        return 0;
    }

    public int A1l(AnonymousClass4Z r2) {
        return 0;
    }

    public int A1m(AnonymousClass4Z r2) {
        return 0;
    }

    public int A1n(AnonymousClass4Z r2) {
        return 0;
    }

    public int A1o(AnonymousClass4Z r2) {
        return 0;
    }

    public int A1p(AnonymousClass4Z r2) {
        return 0;
    }

    public Parcelable A1q() {
        return null;
    }

    @Nullable
    public View A1r(int i) {
        int A0X = A0X();
        for (int i2 = 0; i2 < A0X; i2++) {
            View A0u = A0u(i2);
            AbstractC02274c A0G2 = C0469Eq.A0G(A0u);
            if (A0G2 != null && A0G2.A0J() == i && !A0G2.A0i() && (this.A03.A0s.A07() || !A0G2.A0d())) {
                return A0u;
            }
        }
        return null;
    }

    @Nullable
    public View A1s(View view, int i, AnonymousClass4S r4, AnonymousClass4Z r5) {
        return null;
    }

    public void A1u(int i) {
    }

    public void A1v(int i, int i2, AnonymousClass4Z r3, AnonymousClass4I r4) {
    }

    public void A1w(int i, AnonymousClass4I r2) {
    }

    public void A1x(Parcelable parcelable) {
    }

    public void A1y(AccessibilityEvent accessibilityEvent) {
        A0L(this.A03.A0r, this.A03.A0s, accessibilityEvent);
    }

    public void A1z(AnonymousClass4S r5, AnonymousClass4Z r6) {
        Log.e(A07(129, 12, 19), A07(141, 67, 101));
    }

    public void A20(AnonymousClass4Z r1) {
    }

    @CallSuper
    public void A21(C0469Eq eq, AnonymousClass4S r2) {
    }

    public void A22(C0469Eq eq, AnonymousClass4Z r6, int i) {
        Log.e(A07(129, 12, 19), A07(208, 68, 14));
    }

    public void A23(String str) {
        C0469Eq eq = this.A03;
        if (eq != null) {
            eq.A1q(str);
        }
    }

    public boolean A24() {
        return false;
    }

    public boolean A25() {
        return false;
    }

    public boolean A26() {
        return false;
    }

    public boolean A27() {
        return false;
    }
}
