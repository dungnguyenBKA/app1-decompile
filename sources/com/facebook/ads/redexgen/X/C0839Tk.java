package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Tk */
public class C0839Tk extends AnonymousClass3D {
    public static String[] A01;
    public int A00 = 0;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"OZnJYNnF6iNpWafuL0M1gR4fftLtNKLH", "jp3I09eVvza8VUO8I2V9bgD0uqoo2eoT", "o0dN6TNbDPM1OFHwgByg4fes3ij5f0X", "koNydS70AznyGH22QswPXmmCOWqgW7Lp", "FfQJA5dgq067zFURnAgi95yx0TDwU15M", "ldbJEvhnHaVxGyPD7qN3mcBmJCgMtAqs", "ixVhzklDdFphFwHpdcaKVfByjOKIZSaQ", "Bo7wQ6HJBqNsqngGB"};
    }

    public C0839Tk(Context context) {
        super(context);
    }

    /* access modifiers changed from: public */
    private void A01(int i) {
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3D
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        int h = this.A00;
        int i3 = 0;
        while (true) {
            int childCount = getChildCount();
            String[] strArr = A01;
            if (strArr[4].charAt(3) != strArr[0].charAt(3)) {
                throw new RuntimeException();
            }
            A01[2] = "oQM5as2Hx349sp";
            if (i3 < childCount) {
                View childAt = getChildAt(i3);
                childAt.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
                if (A01[3].charAt(2) != 'N') {
                    measuredHeight = childAt.getMeasuredHeight();
                    if (measuredHeight <= h) {
                        i3++;
                    }
                } else {
                    A01[7] = "8uJesuWryF1bocGxs";
                    measuredHeight = childAt.getMeasuredHeight();
                    if (measuredHeight <= h) {
                        i3++;
                    }
                }
                h = measuredHeight;
                i3++;
            } else {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(h, 1073741824));
                return;
            }
        }
    }
}
