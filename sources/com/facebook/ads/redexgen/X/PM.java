package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

public final class PM extends RelativeLayout {
    public static String[] A03;
    @Nullable
    public AnonymousClass7Z A00;
    public WeakReference<PL> A01;
    public final Q9 A02;

    static {
        A00();
    }

    public static void A00() {
        A03 = new String[]{"Z7YDROQZDOzGgLZ6JRzm0VB6SZj4zDor", "PEDxZ1hmcJv2HtokqPZuboN03zqPqfuu", "ZN3aiXgGzfL", "UoQOzdqMFdmvRVk6jZTbQbhJ01APWmUd", "BWydKlRDXGFiivyHlYlBLR13h8bygoZy", "calSGpe10AH6YV6oPZJsWkhcYoOFDSm8", "CqyCvSup05V", "6oqVw1T1HmkJfSZKyFG8rr7XXeYSScI0"};
    }

    public PM(XJ xj, Q9 q9) {
        super(xj);
        this.A02 = q9;
        C0632Lh.A0M((View) this.A02);
        addView(this.A02.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public final void A01(MP mp) {
        addView(mp, new RelativeLayout.LayoutParams(-1, -1));
        this.A00 = (AnonymousClass7Z) mp;
    }

    public final void A02(MP mp) {
        C0632Lh.A0M(mp);
        this.A00 = null;
    }

    public final boolean A03() {
        return this.A02.A7e();
    }

    public final boolean A04(int i) {
        return this.A02.getCurrentPosition() > i;
    }

    public int getCurrentPosition() {
        return this.A02.getCurrentPosition();
    }

    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((View) this.A02).layout(0, 0, getWidth(), getHeight());
        AnonymousClass7Z r2 = this.A00;
        if (r2 != null) {
            r2.layout(0, 0, getWidth(), getHeight());
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00a4, code lost:
        if (r6 > r5) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00aa, code lost:
        if (r6 > r5) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00e0, code lost:
        if (r5 == Integer.MIN_VALUE) goto L_0x00e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00e7, code lost:
        if (r5 == Integer.MIN_VALUE) goto L_0x00e2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onMeasure(int r12, int r13) {
        /*
        // Method dump skipped, instructions count: 260
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.PM.onMeasure(int, int):void");
    }

    public void setViewImplInflationListener(PL pl) {
        this.A01 = new WeakReference<>(pl);
    }
}
