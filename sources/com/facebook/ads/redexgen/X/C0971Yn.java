package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import java.text.NumberFormat;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Yn  reason: case insensitive filesystem */
public final class C0971Yn extends AbstractC0681Nf {
    public static byte[] A0H;
    public static String[] A0I;
    public static final int A0J = ((int) (C0632Lh.A01 * 26.0f));
    public static final int A0K = ((int) (C0632Lh.A01 * 48.0f));
    public static final int A0L = ((int) (C0632Lh.A01 * 144.0f));
    public static final int A0M = ((int) (C0632Lh.A01 * 12.0f));
    public static final int A0N = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0O = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A0P = AnonymousClass2L.A01(-1, 77);
    public static final int A0Q = ((int) (C0632Lh.A01 * 14.0f));
    public int A00;
    public int A01;
    public LinearLayout A02;
    public TextView A03;
    public TextView A04;
    public TextView A05;
    public AnonymousClass1G A06;
    public AnonymousClass1J A07;
    public C0692Nq A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final LinearLayout A0C;
    public final RelativeLayout A0D;
    public final RelativeLayout A0E;
    public final TextView A0F;
    public final XJ A0G;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0H = new byte[]{-111, -20};
    }

    public static void A08() {
        A0I = new String[]{"ZYFZvgakVe", "Z9juamcNffZ", "L6NhnuluGVbfOuIZp07EBLc1k7rVfOba", "poGipFcmqzgO1AN9d1VwktKUuwbeuE2x", "1MA0bi3k", "zUZ", "l0mlyabDLiJh1QvHe0VixDkOpEP8aZzg", "KStQaqdBmF0CfboN9Wjc4"};
    }

    static {
        A08();
        A07();
    }

    public C0971Yn(XJ xj, int i, boolean z, AnonymousClass1I r15, String str, JC jc, M9 m9, QE qe, C0625La la) {
        this(xj, i, z, r15, str, jc, m9, qe, la, false);
    }

    public C0971Yn(XJ xj, int i, boolean z, AnonymousClass1I r16, String str, JC jc, M9 m9, QE qe, C0625La la, boolean z2) {
        super(xj, i, r16, str, jc, m9, qe, la);
        this.A0A = false;
        this.A00 = 0;
        this.A01 = 0;
        this.A0G = xj;
        this.A09 = z2;
        super.A04.setFullCircleCorners(z);
        int i2 = A0M;
        setPadding(i2, i2, i2, A0J);
        this.A0D = new RelativeLayout(getContext());
        this.A05 = new TextView(getContext());
        this.A02 = new LinearLayout(getContext());
        this.A08 = new C0692Nq(this.A0G, A0Q, 5, A0P, -1);
        this.A0E = new RelativeLayout(getContext());
        this.A0C = new LinearLayout(getContext());
        this.A04 = new TextView(getContext());
        this.A03 = new TextView(getContext());
        super.A01.addView(this.A0D);
        super.A01.addView(this.A0C);
        this.A0F = new TextView(getContext());
        C0632Lh.A0W(this, xj);
        if (J4.A1S(xj)) {
            this.A03.setVisibility(8);
        }
        this.A0B = J4.A1r(this.A0G);
        A05();
    }

    private void A01() {
        super.A03.setPadding(0, 0, 0, 0);
        super.A03.setLayoutParams(new LinearLayout.LayoutParams(-1, A0K));
    }

    private void A02() {
        int i;
        this.A0C.setOrientation(1);
        this.A0C.setPadding(0, 0, 0, A0M);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A0D.getId());
        this.A0C.setLayoutParams(layoutParams);
        this.A0C.removeAllViews();
        this.A03.setMaxLines(2);
        this.A03.setEllipsize(TextUtils.TruncateAt.END);
        this.A03.setGravity(16);
        TextView textView = this.A03;
        if (this.A0B) {
            i = -16777216;
        } else {
            i = -1;
        }
        textView.setTextColor(i);
        C0632Lh.A0c(this.A03, false, 16);
        this.A0C.addView(this.A03, new LinearLayout.LayoutParams(-1, -2));
    }

    private void A03() {
        int i;
        this.A0D.removeAllViews();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.bottomMargin = A0M;
        this.A0D.setLayoutParams(layoutParams);
        C0632Lh.A0N(this.A0D);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(super.A00, super.A00);
        layoutParams2.addRule(15);
        layoutParams2.addRule(9);
        this.A0D.addView(super.A04, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = A0N;
        layoutParams3.addRule(1, super.A04.getId());
        layoutParams3.addRule(15);
        this.A0D.addView(this.A0E, layoutParams3);
        this.A0E.removeAllViews();
        C0632Lh.A0N(this.A05);
        this.A05.setLayoutParams(AbstractC0681Nf.A06);
        TextView textView = this.A05;
        int i2 = -16777216;
        if (this.A0B) {
            i = -16777216;
        } else {
            i = -1;
        }
        textView.setTextColor(i);
        C0632Lh.A0c(this.A05, true, 18);
        this.A0E.addView(this.A05);
        this.A02.setOrientation(0);
        this.A02.setGravity(16);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, A0O);
        layoutParams4.topMargin = A0N / 2;
        layoutParams4.addRule(3, this.A05.getId());
        this.A0E.addView(this.A02, layoutParams4);
        this.A02.removeAllViews();
        this.A08.setGravity(16);
        this.A02.addView(this.A08, new LinearLayout.LayoutParams(-2, -1));
        TextView textView2 = this.A04;
        if (!this.A0B) {
            i2 = -1;
        }
        textView2.setTextColor(i2);
        this.A04.setGravity(16);
        this.A04.setIncludeFontPadding(false);
        C0632Lh.A0c(this.A04, false, 14);
        LinearLayout.LayoutParams starRatingContainerParams = new LinearLayout.LayoutParams(-2, -1);
        starRatingContainerParams.leftMargin = A0N;
        this.A02.addView(this.A04, starRatingContainerParams);
    }

    private void A04() {
        int i;
        this.A0F.setMaxLines(1);
        this.A0F.setEllipsize(TextUtils.TruncateAt.END);
        this.A0F.setGravity(17);
        TextView textView = this.A0F;
        if (this.A0B) {
            i = -16777216;
        } else {
            i = -1;
        }
        textView.setTextColor(i);
        this.A0F.setAllCaps(true);
        C0632Lh.A0c(this.A0F, false, 12);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = A0M;
        this.A0F.setLayoutParams(layoutParams);
    }

    private void A05() {
        removeAllViews();
        super.A01.setLayoutParams(AbstractC0681Nf.A06);
        A03();
        A02();
        A01();
        A04();
        A06();
        C0632Lh.A0M(super.A01);
        C0632Lh.A0M(super.A03);
        C0632Lh.A0M(this.A0F);
        addView(super.A01);
        addView(super.A03);
        addView(this.A0F);
    }

    private void A06() {
        AnonymousClass1G r0 = this.A06;
        if (r0 != null) {
            this.A05.setText(r0.A06());
            this.A03.setText(this.A06.A01());
            this.A0F.setText(this.A06.A04());
            if (TextUtils.isEmpty(this.A07.A03())) {
                C0632Lh.A0K(super.A03);
            }
            if (TextUtils.isEmpty(this.A06.A04())) {
                C0632Lh.A0K(this.A0F);
            }
            if (TextUtils.isEmpty(this.A06.A03())) {
                this.A02.setVisibility(8);
                return;
            }
            this.A02.setVisibility(0);
            C0692Nq nq = this.A08;
            String A032 = this.A06.A03();
            if (A0I[0].length() != 17) {
                String[] strArr = A0I;
                strArr[2] = "VSVKlO90K15ihGB4A0qZPRqEppX5OU7U";
                strArr[6] = "xs76xd0mQfWREabMq0mbrfEp6FCRmbTD";
                nq.setRating(Float.parseFloat(A032));
                if (this.A06.A02() != null) {
                    TextView textView = this.A04;
                    textView.setText(A00(0, 1, 6) + NumberFormat.getNumberInstance().format((long) Integer.parseInt(this.A06.A02())) + A00(1, 1, 96));
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final int A09(int i) {
        return this.A00 + this.A01 + A0N;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final void A0A() {
        C0632Lh.A0K(super.A04);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0E.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.leftMargin = 0;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final void A0B() {
        C0632Lh.A0K(this.A0F);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final void A0E(int i) {
        boolean z;
        int i2 = 1;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!this.A09 || !this.A0A) {
            if (!z) {
                i2 = 0;
            }
            setOrientation(i2);
            if (!z) {
                setWeightSum(5.0f);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
                layoutParams.weight = 4.0f;
                layoutParams.bottomMargin = A0J - A0M;
                super.A01.setLayoutParams(layoutParams);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, A0K);
                layoutParams2.bottomMargin = A0J / 2;
                layoutParams2.weight = 1.0f;
                layoutParams2.gravity = 80;
                super.A03.setLayoutParams(layoutParams2);
                super.A03.setMinWidth(A0L);
                C0632Lh.A0M(this.A0F);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
                layoutParams3.topMargin = 0;
                layoutParams3.bottomMargin = A0N;
                this.A0C.addView(this.A0F, layoutParams3);
                this.A0C.setPadding(0, 0, 0, 0);
                this.A0F.setGravity(3);
            } else {
                A05();
            }
        } else {
            setOrientation(1);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
            setBackgroundResource(0);
            super.A01.setLayoutParams(layoutParams4);
            super.A03.setLayoutParams(new LinearLayout.LayoutParams(-1, A0K));
            if (!z) {
                layoutParams4.weight = 0.7f;
                C0632Lh.A0P(this, -1087164882);
                A04();
                this.A0F.setGravity(3);
            } else {
                this.A0F.setGravity(1);
            }
            C0632Lh.A0M(this.A0F);
            addView(this.A0F);
        }
        bringToFront();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final void A0F(boolean z) {
        this.A0A = z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final View getExpandableLayout() {
        return this.A0C;
    }

    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.A00 == 0) {
            this.A00 = this.A03.getHeight();
            this.A01 = this.A0F.getHeight();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public void setInfo(AnonymousClass1G r1, AnonymousClass1J r2, String str, String str2, @Nullable AbstractC0684Ni ni) {
        super.setInfo(r1, r2, str, str2, ni);
        this.A06 = r1;
        this.A07 = r2;
        A06();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public void setTitleMaxLines(int i) {
        this.A05.setMaxLines(i);
        this.A05.setEllipsize(TextUtils.TruncateAt.END);
    }
}
