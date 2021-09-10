package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;

public final class PW extends LinearLayout implements PE {
    public static final int A03 = ((int) (C0632Lh.A01 * 48.0f));
    public static final int A04 = ((int) (C0632Lh.A01 * 42.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 54.0f));
    public static final int A06 = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 4.0f));
    public final NativeBannerAd A00;
    public final XJ A01;
    public final ArrayList<View> A02 = new ArrayList<>();

    public PW(XJ xj, NativeBannerAd nativeBannerAd, C0578Ja ja, EnumC0579Jb jb, MediaView mediaView, AdOptionsView adOptionsView) {
        super(xj);
        LinearLayout.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        this.A00 = nativeBannerAd;
        this.A01 = xj;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int A002 = A00(jb);
        C0691Np np = new C0691Np(this.A01);
        np.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A002, A002);
        layoutParams3.gravity = 16;
        np.addView(mediaView, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(np, layoutParams3);
        PB pb = new PB(xj, this.A00, jb, ja, adOptionsView);
        pb.setPadding(A06, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        layoutParams4.gravity = 16;
        linearLayout.addView(pb, layoutParams4);
        if (jb == EnumC0579Jb.A0A) {
            int iconSize = A07;
            setPadding(iconSize, iconSize, iconSize, iconSize);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, A07, 0);
        } else {
            int iconSize2 = A06;
            setPadding(iconSize2, iconSize2, iconSize2, iconSize2);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, A06);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView textView = new TextView(getContext());
        int i = A06;
        int iconSize3 = A07;
        textView.setPadding(i, iconSize3, i, iconSize3);
        ja.A05(textView);
        textView.setText(this.A00.getAdCallToAction());
        addView(textView, layoutParams2);
        this.A02.add(mediaView);
        this.A02.add(textView);
    }

    public static int A00(EnumC0579Jb jb) {
        int i = PC.A00[jb.ordinal()];
        if (i == 1) {
            return A04;
        }
        if (i != 2) {
            return A05;
        }
        return A03;
    }

    @Override // com.facebook.ads.redexgen.X.PE
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.PE
    public ArrayList<View> getViewsForInteraction() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.PE
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}
