package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.aY  reason: case insensitive filesystem */
public final class C1041aY extends AbstractC0660Mj {
    public static byte[] A05;
    public static final int A06 = ((int) (C0632Lh.A01 * 44.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A08 = ((int) (C0632Lh.A01 * 4.0f));
    public final HorizontalScrollView A00;
    public final ImageView A01 = new ImageView(getContext());
    public final LinearLayout A02;
    public final LinearLayout A03;
    public final XJ A04;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 8);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A05 = new byte[]{-57, -26, -24, -16, -92, -51, -48, -44, -58, -127, -94, -59, -127, -77, -58, -47, -48, -45, -43, -54, -49, -56};
    }

    static {
        A0B();
    }

    public C1041aY(XJ xj, JC jc, String str) {
        super(xj, jc, str);
        this.A04 = xj;
        ImageView imageView = this.A01;
        int i = A07;
        imageView.setPadding(i, i, i, i);
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A01.setColorFilter(-10459280);
        int i2 = A06;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 16;
        this.A02 = new LinearLayout(getContext());
        this.A02.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        this.A00 = new HorizontalScrollView(getContext());
        this.A00.setHorizontalScrollBarEnabled(false);
        this.A00.setLayoutParams(layoutParams2);
        this.A00.addView(this.A02, layoutParams2);
        this.A03 = new LinearLayout(getContext());
        this.A03.setOrientation(0);
        C0632Lh.A0P(this.A03, -218103809);
        this.A03.setMotionEventSplittingEnabled(false);
        this.A03.addView(this.A01, layoutParams);
        this.A03.addView(this.A00, layoutParams2);
        addView(this.A03, new FrameLayout.LayoutParams(-1, -1));
        this.A03.setClickable(true);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0K() {
        this.A01.setImageBitmap(C0641Lq.A01(EnumC0640Lp.CROSS));
        this.A01.setOnClickListener(new View$OnClickListenerC0669Ms(this));
        this.A01.setContentDescription(A0A(4, 18, 89));
        C0664Mn mn = new C0664Mn(this.A04);
        mn.setData(AnonymousClass28.A0B(this.A04.A00()), EnumC0640Lp.HIDE_AD);
        mn.setOnClickListener(new View$OnClickListenerC0670Mt(this, mn));
        C0664Mn mn2 = new C0664Mn(this.A04);
        mn2.setData(AnonymousClass28.A0F(this.A04.A00()), EnumC0640Lp.REPORT_AD);
        mn2.setOnClickListener(new View$OnClickListenerC0671Mu(this, mn2));
        C0664Mn mn3 = new C0664Mn(this.A04);
        mn3.setData(AnonymousClass28.A0G(this.A04.A00()), EnumC0640Lp.AD_CHOICES_ICON);
        mn3.setOnClickListener(new Mv(this, mn3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i = A08;
        layoutParams.setMargins(0, i, i, i);
        C0632Lh.A0Y(this.A03);
        this.A02.removeAllViews();
        this.A02.addView(mn, layoutParams);
        this.A02.addView(mn2, layoutParams);
        this.A02.addView(mn3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0L() {
        C0632Lh.A0L(this);
        C0632Lh.A0M(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0M(AnonymousClass2B r5, AnonymousClass29 r6) {
        this.A01.setOnClickListener(null);
        TextView textView = new TextView(getContext());
        C0632Lh.A0c(textView, true, 14);
        textView.setText(AnonymousClass28.A07(this.A04.A00()));
        textView.setGravity(17);
        C0632Lh.A0Y(this.A03);
        this.A03.removeAllViews();
        this.A03.addView(textView, new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0N(AnonymousClass2B r7, AnonymousClass29 r8) {
        C0632Lh.A0Y(this.A03);
        this.A01.setImageBitmap(C0641Lq.A01(EnumC0640Lp.BACK_ARROW));
        this.A01.setOnClickListener(new View$OnClickListenerC0672Mw(this));
        this.A01.setContentDescription(A0A(0, 4, 125));
        this.A02.removeAllViews();
        this.A00.fullScroll(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i = A08;
        layoutParams.setMargins(0, i, i, i);
        for (AnonymousClass2B r3 : r7.A05()) {
            C0664Mn mn = new C0664Mn(this.A04);
            mn.setData(r3.A04(), null);
            mn.setOnClickListener(new View$OnClickListenerC0673Mx(this, mn, r3));
            this.A02.addView(mn, layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final boolean A0O() {
        return true;
    }
}
