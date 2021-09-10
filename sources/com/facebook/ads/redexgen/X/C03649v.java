package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.9v  reason: invalid class name and case insensitive filesystem */
public final class C03649v extends RH {
    public static String[] A00;

    static {
        A01();
    }

    public static void A01() {
        A00 = new String[]{"4DJOkXe9rib7uWc4nLa4kcuSPdxs7gf4", "Dyxr4XzeXsq4jjw5BU630cyoQdL32ISv", "MScpZjpz", "3XC0FNsyX3k6WX9dbHhU9IwCEOagJZ1X", "JEKgPGdFYfe9RoD8dW0t8x0Mvi1GtEmi", "N5tdloXdcly7PUtxD1ZshZXdUDk2Lr2A", "5elKCHWntj6O1Wqi1faAvLWvEV4yzp2T", "JBMx9492vmjOwkRP6"};
    }

    public C03649v(C01862m r2, int i, @Nullable List<C0720Ot> list, @Nullable QE qe, @Nullable Bundle bundle) {
        super(r2, i, list, qe, bundle);
        r2.A1k(this);
        this.A03 = new C1030aN(this);
    }

    /* access modifiers changed from: private */
    public void A00() {
        int A28 = this.A0C.A28();
        if (this.A05 != null && A28 != -1 && A28 < this.A05.size() - 1) {
            A0X(A28 + 1);
        }
    }

    private void A02(int lastVisibleItem) {
        int A29 = this.A0C.A29();
        int A2A = this.A0C.A2A();
        int visibleItem = this.A0C.A28();
        if (visibleItem != A29) {
            A0U(A29);
        }
        if (visibleItem != A2A) {
            A0U(A2A);
        }
        A0V(visibleItem);
        A0Y(A29, A2A, lastVisibleItem);
    }

    @Override // com.facebook.ads.redexgen.X.RH, com.facebook.ads.redexgen.X.AnonymousClass4P
    public final void A0N(C0469Eq eq, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.RH, com.facebook.ads.redexgen.X.AnonymousClass4P
    public final void A0O(C0469Eq eq, int i, int i2) {
        if (this.A0C.A28() != -1) {
            YM ym = (YM) this.A0C.A1r(this.A0C.A28());
            if (A00[2].length() != 4) {
                String[] strArr = A00;
                strArr[3] = "IxYVUA16uQkbjXwNztolao4gyOA0tKzF";
                strArr[6] = "jcO9EzcXxFOxyF2BSjZiD0vteRj0mA5y";
                if (ym != null && ym.A0g() && !ym.A0f()) {
                    ym.A0d();
                }
                A02(i);
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.RH
    public final void A0a(View view, boolean z) {
        float f;
        if (z) {
            f = 1.0f;
        } else {
            f = 0.8f;
        }
        view.setAlpha(f);
    }

    @Override // com.facebook.ads.redexgen.X.RH
    public final void A0c(YM ym, boolean z) {
        A0a(ym, z);
        if (!z && ym.A0f()) {
            ym.A0c();
        }
    }

    @Override // com.facebook.ads.redexgen.X.RH
    public final boolean A0d(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.75f;
    }

    public final QE A0e() {
        return this.A04;
    }

    public final void A0f(QE qe) {
        this.A04 = qe;
    }

    public final void A0g(List<C0720Ot> list) {
        this.A05 = list;
    }
}
