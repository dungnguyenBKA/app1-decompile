package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdError;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.cl  reason: case insensitive filesystem */
public final class C1176cl extends MW {
    public static byte[] A00;
    public static String[] A01;
    public static final int A02 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A03 = ((int) (C0632Lh.A01 * 30.0f));
    public static final int A04 = ((int) (C0632Lh.A01 * 50.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 24.0f));
    public static final int A06 = ((int) (C0632Lh.A01 * 30.0f));

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 49);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-18, 6, 4, 11};
    }

    public static void A02() {
        A01 = new String[]{"eX0NjQS6Cv0cdupm07HV5hzKAxMqH0d", "wx0dbtAc6pD49FoTqFpKctGdSqsA8n1n", "9JOMWIFuCKG1ze3B51PWtKtXX7g1EywZ", "gAmwb49m1jF7v3L1lyLoTXmCcSr8lTwL", "cJX3oWeWBOAhIZgSwLbGNRfmWHdVGE1s", "ih2ASPIbB6Mipq7FMEYWa4gJohMeYNDI", "rzdVRvGtIJZPIPQmsJTUAvMIxIP5Lc8q", "0g5ABkfLP1KnY0Lvl5QhU96hc6mXXT01"};
    }

    static {
        A02();
        A01();
    }

    public C1176cl(XJ xj, int i) {
        super(xj, i);
        int i2 = A02;
        super.setPadding(i2, 0, i2, 0);
        LinearLayout linearLayout = this.A02;
        int i3 = A02;
        linearLayout.setPadding(i3, i3 / 3, i3, i3 / 3);
        this.A03.setTextSize(13.0f);
        TextView textView = this.A03;
        int i4 = A02;
        textView.setPadding(i4 / 4, i4 / 2, i4 / 4, i4 / 2);
        this.A03.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        int i5 = A06;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i5, i5);
        layoutParams2.gravity = 16;
        C0687Nl nl = this.A04;
        int i6 = A02;
        nl.setPadding(i6 / 3, i6 / 3, i6 / 3, i6 / 3);
        this.A04.A02(AnonymousClass2L.A01(-1, 77), -1);
        int i7 = A05;
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i7, i7);
        layoutParams3.setMargins(0, 0, 0, 0);
        layoutParams3.gravity = 16;
        this.A01.setPadding(0, 0, 0, 0);
        super.removeAllViews();
        super.addView(this.A02, layoutParams);
        this.A02.removeAllViews();
        this.A02.addView(this.A04, layoutParams2);
        this.A02.addView(this.A03, layoutParams);
        this.A02.addView(this.A01, layoutParams3);
        setToolbarActionMode(i);
    }

    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius((float) A04);
        gradientDrawable.setColor(i);
        C0632Lh.A0X(this.A02, gradientDrawable);
    }

    @Override // com.facebook.ads.redexgen.X.MW
    public void setToolbarActionMode(int i) {
        int i2;
        int i3;
        EnumC0640Lp lp;
        this.A00 = i;
        C0687Nl nl = this.A04;
        if (i == 2) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        nl.setVisibility(i2);
        ImageView imageView = this.A01;
        if (i == 2) {
            i3 = 8;
        } else {
            i3 = 0;
        }
        imageView.setVisibility(i3);
        setVisibility(0);
        if (i == 0) {
            lp = EnumC0640Lp.CROSS_APP_INSTALL;
            LinearLayout linearLayout = this.A02;
            int i4 = A02;
            linearLayout.setPadding(i4 / 3, i4 / 3, i4 / 3, i4 / 3);
            ViewGroup.LayoutParams layoutParams = this.A01.getLayoutParams();
            if (layoutParams != null) {
                int i5 = A03;
                layoutParams.height = i5;
                layoutParams.width = i5;
                this.A01.setLayoutParams(layoutParams);
            }
            this.A03.setVisibility(8);
        } else if (A01[6].charAt(19) != 'U') {
            throw new RuntimeException();
        } else {
            A01[0] = "gbryvxzxWbgdISpi68yKK";
            if (i == 1) {
                lp = EnumC0640Lp.SKIP_ARROW_APP_INSTALL;
                this.A03.setVisibility(0);
                setToolbarMessage(A00(0, 4, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE));
            } else if (i != 2) {
                lp = EnumC0640Lp.CROSS_APP_INSTALL;
                String[] strArr = A01;
                if (strArr[2].charAt(9) != strArr[1].charAt(9)) {
                    String[] strArr2 = A01;
                    strArr2[5] = "UrnokoQiBoDCm04uktVsKTex7gx9vt3n";
                    strArr2[4] = "egtCMqV5BxdQcc2mWmQaAJ5IHSQPeiLw";
                    setVisibility(8);
                } else {
                    A01[6] = "dtJQOcGhcOIZshHIUvOU7iXJcRU71ekd";
                    setVisibility(8);
                }
            } else {
                lp = EnumC0640Lp.CROSS_APP_INSTALL;
                this.A01.setVisibility(8);
                this.A03.setVisibility(8);
            }
        }
        this.A01.setImageBitmap(C0641Lq.A01(lp));
        C0632Lh.A0J(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, this.A01);
    }
}
