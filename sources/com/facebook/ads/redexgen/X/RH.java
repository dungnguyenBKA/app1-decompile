package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RH extends AnonymousClass4P {
    public static byte[] A0H;
    public static String[] A0I;
    public float A00 = 0.0f;
    public int A01 = -1;
    @Nullable
    public OB A02;
    public OD A03 = new RJ(this);
    public QE A04;
    @Nullable
    public List<C0720Ot> A05;
    public boolean A06 = true;
    public boolean A07 = true;
    public boolean A08 = true;
    public boolean A09;
    public final int A0A;
    public final Context A0B;
    public final TB A0C;
    public final AnonymousClass4X A0D;
    public final OE A0E = new RI(this);
    public final OF A0F = new RK(this);
    public final Set<Integer> A0G = new HashSet();

    static {
        A0A();
        A09();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 126);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0H = new byte[]{-26, -6, -7, -12, 4, -11, -15, -26, -2, 4, -22, -13, -26, -25, -15, -22, -23, 4, -11, -26, -9, -26, -14, 7, 17, 29, 4, 7, 16, 17, 18, 29, 20, 7, 2, 3, 13, 29, 14, -1, 16, -1, 11, -5, -12, -15, -6, -14, -22, 4, -15, -22, -5, -22, -15, 4, -11, -26, -9, -26, -14};
    }

    public static void A0A() {
        A0I = new String[]{"vVts3290hN8iYOphvTtUHsw8p", "g", "QXZRYfiopoOIgyOb", "uRY3EBcOhcPzIFCW", "1yhQGC5wOot73mjsntHrCCOy6H7", "ngPHprqJPXgJBcmGEhNrmzVf2B4dA5Oh", "DCeBbFrEMIUsiq6", "addqTveDrmk"};
    }

    public RH(C01862m r3, int i, @Nullable List<C0720Ot> list, @Nullable QE qe, @Nullable Bundle bundle) {
        this.A0C = r3.getLayoutManager();
        this.A0A = i;
        this.A05 = list;
        this.A04 = qe;
        this.A0D = new TC(r3.getContext());
        this.A0B = r3.getContext();
        r3.A1k(this);
        A0F(bundle);
    }

    @Nullable
    private YM A04(int i, int i2) {
        return A05(i, i2, true);
    }

    @Nullable
    private YM A05(int i, int i2, boolean isCompletelyVisible) {
        YM ym = null;
        while (i <= i2) {
            YM ym2 = (YM) this.A0C.A1r(i);
            if (ym2 == null || ym2.A0f()) {
                return null;
            }
            boolean A0d = A0d(ym2);
            if (A0I[2].length() != 16) {
                throw new RuntimeException();
            }
            A0I[0] = "";
            if (ym == null && ym2.A0g() && A0d && !this.A0G.contains(Integer.valueOf(i)) && (!isCompletelyVisible || A0K(ym2))) {
                ym = ym2;
            }
            if (ym2.A0g() && !A0d) {
                A0E(i, false);
            }
            i++;
        }
        return ym;
    }

    /* JADX INFO: Multiple debug info for r0v4 com.facebook.ads.redexgen.X.YM: [D('lastVisibleItem' int), D('firstAutoplayableVideo' com.facebook.ads.redexgen.X.YM)] */
    private void A07() {
        YM firstAutoplayableVideo;
        if (this.A07 && (firstAutoplayableVideo = A04(this.A0C.A29(), this.A0C.A2A())) != null) {
            firstAutoplayableVideo.A0d();
        }
    }

    /* access modifiers changed from: private */
    public void A08() {
        int A28 = this.A0C.A28();
        if (A28 != -1 && A28 < this.A05.size() - 1) {
            A0X(A28 + 1);
        }
    }

    /* access modifiers changed from: private */
    public void A0B(int i) {
        YM A052 = A05(i + 1, this.A0C.A2A(), false);
        if (A052 != null) {
            A052.A0d();
            A0X(((Integer) A052.getTag(-1593835536)).intValue());
        }
    }

    private void A0C(int i, int i2) {
        while (i <= i2) {
            A0V(i);
            i++;
        }
    }

    private final void A0D(int i, int i2) {
        A0U(i);
        A0U(i2);
    }

    /* access modifiers changed from: private */
    public void A0E(int i, boolean z) {
        if (z) {
            this.A0G.add(Integer.valueOf(i));
        } else {
            this.A0G.remove(Integer.valueOf(i));
        }
    }

    private void A0F(@Nullable Bundle bundle) {
        if (bundle != null) {
            this.A00 = bundle.getFloat(A06(43, 18, 39), 0.0f);
            this.A07 = bundle.getBoolean(A06(0, 23, 39), true);
            this.A08 = bundle.getBoolean(A06(23, 20, 64), true);
        }
    }

    /* access modifiers changed from: private */
    public boolean A0J() {
        if (J4.A1l(this.A0B) || J4.A1r(this.A0B) || this.A0A == 1) {
            return true;
        }
        return false;
    }

    public static boolean A0K(AbstractC0699Nx nx) {
        return ((int) (nx.getX() + ((float) nx.getWidth()))) <= ((int) ((((float) (nx.getWidth() + C0632Lh.A02.widthPixels)) * 1.3f) / 2.0f)) && nx.getX() >= ((float) ((int) ((((float) (C0632Lh.A02.widthPixels - nx.getWidth())) * 0.7f) / 2.0f)));
    }

    private boolean A0L(YM ym) {
        if (!this.A08 || !ym.A0g()) {
            return false;
        }
        this.A08 = false;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4P
    public void A0N(C0469Eq eq, int i) {
        super.A0N(eq, i);
        if (i == 0) {
            this.A09 = true;
            A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4P
    public void A0O(C0469Eq eq, int i, int i2) {
        super.A0O(eq, i, i2);
        this.A09 = false;
        if (this.A06) {
            this.A09 = true;
            A07();
            this.A06 = false;
        }
        int A29 = this.A0C.A29();
        int A2A = this.A0C.A2A();
        A0D(A29, A2A);
        A0C(A29, A2A);
        A0Y(A29, A2A, i);
    }

    public final OD A0P() {
        return this.A03;
    }

    public final OE A0Q() {
        return this.A0E;
    }

    public final OF A0R() {
        return this.A0F;
    }

    public final void A0S() {
        this.A01 = -1;
        int A29 = this.A0C.A29();
        int A2A = this.A0C.A2A();
        while (A29 <= A2A && A29 >= 0) {
            YM ym = (YM) this.A0C.A1r(A29);
            if (ym == null || !ym.A0f()) {
                A29++;
            } else {
                this.A01 = A29;
                ym.A0c();
                return;
            }
        }
    }

    public final void A0T() {
        YM ym = (YM) this.A0C.A1r(this.A01);
        if (ym != null && this.A01 >= 0) {
            ym.A0d();
        }
    }

    public final void A0U(int i) {
        YM ym = (YM) this.A0C.A1r(i);
        if (ym != null && !A0d(ym)) {
            String[] strArr = A0I;
            if (strArr[6].length() != strArr[7].length()) {
                A0I[0] = "Vxamqv9qm4zlsVVB8";
                A0c(ym, false);
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void A0V(int i) {
        List<C0720Ot> list;
        float f;
        YM ym = (YM) this.A0C.A1r(i);
        if (ym != null) {
            if (A0d(ym)) {
                A0c(ym, true);
            }
            if (A0L(ym) && (list = this.A05) != null) {
                OF of = this.A0F;
                if (list.get(((Integer) ym.getTag(-1593835536)).intValue()).A03().A0E().A09()) {
                    f = 0.0f;
                } else {
                    f = 1.0f;
                }
                of.setVolume(f);
            }
        }
    }

    public final void A0W(int i) {
        A0C(i, i);
    }

    public final void A0X(int i) {
        this.A0D.A0B(i);
        this.A0C.A1M(this.A0D);
    }

    public final void A0Y(int recomputeFrom, int i, int i2) {
        if (A0J() && this.A02 != null) {
            int A28 = this.A0C.A28();
            if (A28 == -1) {
                A28 = i2 < 0 ? recomputeFrom : i;
            }
            this.A02.AES(A28);
        }
    }

    public final void A0Z(Bundle bundle) {
        bundle.putFloat(A06(43, 18, 39), this.A00);
        bundle.putBoolean(A06(0, 23, 39), this.A07);
        bundle.putBoolean(A06(23, 20, 64), this.A08);
    }

    public void A0a(View view, boolean z) {
        float f;
        if (z) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        view.setAlpha(f);
    }

    public final void A0b(OB ob) {
        this.A02 = ob;
    }

    public void A0c(YM ym, boolean z) {
        if (A0J()) {
            A0a(ym, z);
        }
        if (!z) {
            boolean A0f = ym.A0f();
            String[] strArr = A0I;
            if (strArr[6].length() != strArr[7].length()) {
                A0I[2] = "slnyAJQBNPORwedJ";
                if (A0f) {
                    ym.A0c();
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    public boolean A0d(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.15f;
    }
}
