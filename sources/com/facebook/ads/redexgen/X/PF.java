package com.facebook.ads.redexgen.X;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.NativeAd;

public final class PF extends LinearLayout {
    public static final int A00 = ((int) (C0632Lh.A01 * 32.0f));
    public static final int A01 = ((int) (C0632Lh.A01 * 8.0f));

    public PF(XJ xj, NativeAd nativeAd, C0578Ja ja, C0690No no, AdOptionsView adOptionsView) {
        super(xj);
        setOrientation(0);
        no.setFullCircleCorners(true);
        int i = A00;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 16;
        layoutParams.setMargins(0, 0, A01, 0);
        addView(no, layoutParams);
        TextView textView = new TextView(xj);
        ja.A08(textView);
        textView.setMaxLines(1);
        textView.setText(nativeAd.getAdvertiserName());
        TextView textView2 = new TextView(xj);
        ja.A06(textView2);
        textView2.setMaxLines(1);
        textView2.setText(nativeAd.getSponsoredTranslation());
        LinearLayout linearLayout = new LinearLayout(xj);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        layoutParams2.gravity = 16;
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(textView2, new LinearLayout.LayoutParams(-1, -2));
        addView(linearLayout, layoutParams2);
        addView(adOptionsView, new LinearLayout.LayoutParams(-2, -2));
    }
}
