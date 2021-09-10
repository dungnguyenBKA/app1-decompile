package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.aU  reason: case insensitive filesystem */
public final class C1037aU extends AbstractC0660Mj {
    public static byte[] A04;
    public static final int A05 = ((int) (C0632Lh.A01 * 44.0f));
    public static final int A06 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 8.0f));
    public final ImageView A00 = new ImageView(getContext());
    public final LinearLayout A01;
    public final ScrollView A02;
    public final XJ A03;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A04 = new byte[]{53, 22, 20, 28, 105, 70, 69, 89, 79, 10, 107, 78, 10, 120, 79, 90, 69, 88, 94, 67, 68, 77};
    }

    static {
        A0B();
    }

    public C1037aU(XJ xj, JC jc, String str) {
        super(xj, jc, str);
        this.A03 = xj;
        ImageView imageView = this.A00;
        int i = A06;
        imageView.setPadding(i, i, i, i);
        this.A00.setColorFilter(-10459280);
        int i2 = A05;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 3;
        this.A00.setLayoutParams(layoutParams);
        this.A02 = new ScrollView(getContext());
        this.A02.setFillViewport(true);
        C0632Lh.A0P(this.A02, -218103809);
        this.A01 = new LinearLayout(getContext());
        this.A01.setOrientation(1);
        LinearLayout linearLayout = this.A01;
        int i3 = A07;
        linearLayout.setPadding(i3, i3, i3, i3);
        this.A02.addView(this.A01, new FrameLayout.LayoutParams(-1, -2));
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0K() {
        this.A00.setImageBitmap(C0641Lq.A01(EnumC0640Lp.CROSS));
        this.A00.setOnClickListener(new N2(this));
        this.A00.setContentDescription(A0A(4, 18, 29));
        C0664Mn mn = new C0664Mn(this.A03);
        mn.setData(AnonymousClass28.A0B(this.A03.A00()), EnumC0640Lp.HIDE_AD);
        mn.setOnClickListener(new N3(this, mn));
        C0664Mn mn2 = new C0664Mn(this.A03);
        mn2.setData(AnonymousClass28.A0F(this.A03.A00()), EnumC0640Lp.REPORT_AD);
        mn2.setOnClickListener(new N4(this, mn2));
        C0664Mn mn3 = new C0664Mn(this.A03);
        mn3.setData(AnonymousClass28.A0G(this.A03.A00()), EnumC0640Lp.AD_CHOICES_ICON);
        mn3.setOnClickListener(new N5(this, mn3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i = A07;
        layoutParams.setMargins(i, i, i, i);
        layoutParams.gravity = 17;
        LinearLayout menuLayout = new LinearLayout(getContext());
        menuLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, 0);
        layoutParams2.gravity = 17;
        layoutParams2.weight = 1.0f;
        C0632Lh.A0Y(this.A01);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(menuLayout, layoutParams2);
        menuLayout.addView(mn, layoutParams);
        menuLayout.addView(mn2, layoutParams);
        menuLayout.addView(mn3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0L() {
        C0632Lh.A0L(this);
        C0632Lh.A0M(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0M(AnonymousClass2B r7, AnonymousClass29 r8) {
        String A0B;
        EnumC0640Lp lp;
        int i;
        this.A00.setOnClickListener(null);
        if (r8 == AnonymousClass29.A05) {
            A0B = AnonymousClass28.A09(this.A03.A00());
            lp = EnumC0640Lp.REPORT_AD;
            i = -552389;
        } else {
            A0B = AnonymousClass28.A0B(this.A03.A00());
            lp = EnumC0640Lp.HIDE_AD;
            i = -13272859;
        }
        C0659Mi A0M = new C0658Mh(this.A03, this.A0A).A0I(A0B).A0H(AnonymousClass28.A07(this.A03.A00())).A0F(r7.A04()).A0K(false).A0E(lp).A0D(i).A0L(false).A0J(false).A0M();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        C0632Lh.A0Y(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(A0M, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0N(AnonymousClass2B r7, AnonymousClass29 r8) {
        boolean z;
        EnumC0640Lp lp;
        if (r8 == AnonymousClass29.A05) {
            z = true;
        } else {
            z = false;
        }
        XJ xj = this.A03;
        AbstractC0662Ml ml = this.A0A;
        if (z) {
            lp = EnumC0640Lp.REPORT_AD;
        } else {
            lp = EnumC0640Lp.HIDE_AD;
        }
        N1 n1 = new N1(xj, r7, ml, lp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        this.A00.setImageBitmap(C0641Lq.A01(EnumC0640Lp.BACK_ARROW));
        this.A00.setOnClickListener(new N6(this));
        this.A00.setContentDescription(A0A(0, 4, 64));
        C0632Lh.A0Y(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(n1, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final boolean A0O() {
        return true;
    }
}
