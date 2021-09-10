package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/* renamed from: com.facebook.ads.redexgen.X.Os  reason: case insensitive filesystem */
public final class C0719Os extends LinearLayout {
    public static final int A04 = ((int) (C0632Lh.A01 * 32.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 8.0f));
    public TextView A00;
    public TextView A01;
    public C0690No A02;
    public final XJ A03;

    public C0719Os(XJ xj) {
        super(xj);
        this.A03 = xj;
        A00(xj);
    }

    private final void A00(XJ xj) {
        setGravity(16);
        this.A02 = new C0690No(xj);
        this.A02.setFullCircleCorners(true);
        int i = A04;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.setMargins(0, 0, A05, 0);
        addView(this.A02, layoutParams);
        LinearLayout linearLayout = new LinearLayout(xj);
        linearLayout.setOrientation(1);
        this.A00 = new TextView(xj);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        C0632Lh.A0c(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        this.A01 = new TextView(xj);
        C0632Lh.A0c(this.A01, false, 14);
        linearLayout.addView(this.A00);
        linearLayout.addView(this.A01);
        addView(linearLayout, layoutParams2);
    }

    public final void A01(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(AnonymousClass1S r4) {
        AsyncTaskC1017aA aAVar = new AsyncTaskC1017aA(this.A02, this.A03);
        int i = A04;
        aAVar.A06(i, i);
        aAVar.A08(r4.A01());
        this.A00.setText(r4.A02());
        this.A01.setText(r4.A03());
    }
}
