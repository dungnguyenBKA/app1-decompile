package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

public final class M2 extends LinearLayout {
    public static byte[] A03;
    public static final int A04 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 20.0f));
    public static final int A06 = ((int) (C0632Lh.A01 * 12.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 50.0f));
    public static final int A08 = ((int) (C0632Lh.A01 * 4.0f));
    public final ImageView A00;
    public final ImageView A01;
    public final XJ A02;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{118, 83};
    }

    static {
        A02();
    }

    public M2(XJ xj, int i) {
        super(xj);
        this.A02 = xj;
        setOrientation(0);
        this.A00 = new ImageView(xj);
        this.A01 = new ImageView(xj);
        A03(i);
    }

    /* JADX INFO: Multiple debug info for r7v0 'this'  com.facebook.ads.redexgen.X.M2: [D('textViewParams' android.widget.LinearLayout$LayoutParams), D('infoIconImage' com.facebook.ads.redexgen.X.Lp)] */
    private void A03(int i) {
        EnumC0640Lp lp;
        A04(this.A00, EnumC0640Lp.AD_CHOICES_ICON);
        if (i == 2) {
            int i2 = A04;
            setPadding(i2, i2 / 3, i2, i2 / 3);
            TextView textView = new TextView(this.A02);
            textView.setText(A01(0, 2, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
            textView.setTextColor(-1);
            int i3 = A04;
            textView.setPadding(0, i3 / 2, i3 / 2, i3 / 2);
            C0632Lh.A0c(textView, true, 13);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 16;
            addView(textView, layoutParams);
            int i4 = A06;
            LinearLayout.LayoutParams adChoicesIconParams = new LinearLayout.LayoutParams(i4, i4);
            adChoicesIconParams.gravity = 16;
            addView(this.A00, adChoicesIconParams);
            return;
        }
        int i5 = A04;
        setPadding(i5, i5, i5, i5);
        if (i == 1) {
            lp = EnumC0640Lp.AN_INFO_ICON;
        } else {
            lp = EnumC0640Lp.DEFAULT_INFO_ICON;
        }
        A04(this.A01, lp);
        int i6 = A05;
        LinearLayout.LayoutParams infoButtonParams = new LinearLayout.LayoutParams(i6, i6);
        infoButtonParams.gravity = 17;
        addView(this.A01, infoButtonParams);
        int i7 = A05;
        LinearLayout.LayoutParams infoButtonParams2 = new LinearLayout.LayoutParams(i7, i7);
        infoButtonParams2.setMargins(A08, 0, 0, 0);
        infoButtonParams2.gravity = 17;
        addView(this.A00, infoButtonParams2);
    }

    public static void A04(ImageView imageView, EnumC0640Lp lp) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(C0641Lq.A01(lp));
        imageView.setColorFilter(-1);
    }

    public void setAdDetails(AnonymousClass1S r7, String str, JJ jj, M9 m9) {
        setOnClickListener(new M1(this, jj, m9, str, r7));
    }

    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius((float) A07);
        gradientDrawable.setColor(i);
        C0632Lh.A0X(this, gradientDrawable);
    }

    public void setIconColors(int i) {
        this.A00.setColorFilter(i);
        this.A01.setColorFilter(i);
    }
}
