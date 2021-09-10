package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* renamed from: com.facebook.ads.redexgen.X.Mi  reason: case insensitive filesystem */
public final class C0659Mi extends RelativeLayout {
    public static final int A05 = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A06 = (A08 - A07);
    public static final int A07 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A08 = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A09 = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0A = ((int) (C0632Lh.A01 * 25.0f));
    public static final int A0B = ((int) (C0632Lh.A01 * 15.0f));
    public static final int A0C = ((int) (C0632Lh.A01 * 44.0f));
    public static final int A0D = ((int) (C0632Lh.A01 * 75.0f));
    public static final int A0E = ((int) (C0632Lh.A01 * 45.0f));
    public final int A00;
    public final int A01;
    public final XJ A02;
    public final AbstractC0662Ml A03;
    public final boolean A04;

    public C0659Mi(C0658Mh mh) {
        super(mh.A0C);
        int i;
        int i2;
        this.A02 = mh.A0C;
        this.A03 = mh.A02;
        if (mh.A0B) {
            i = A0D;
        } else {
            i = A0E;
        }
        this.A01 = i;
        if (mh.A0B) {
            i2 = A0A;
        } else {
            i2 = A0B;
        }
        this.A00 = i2;
        this.A04 = mh.A07;
        setFocusable(true);
        View A012 = A01(mh);
        View A002 = A00(mh);
        View footerView = getFooterView();
        C0632Lh.A0N(A012);
        C0632Lh.A0N(A002);
        C0632Lh.A0N(footerView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        layoutParams2.addRule(3, A012.getId());
        layoutParams2.addRule(2, footerView.getId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        int i3 = A08;
        int i4 = 0;
        layoutParams3.setMargins(i3, 0, i3, i3);
        addView(A012, layoutParams);
        addView(A002, layoutParams2);
        addView(footerView, layoutParams3);
        footerView.setVisibility(!(mh.A08) ? 8 : i4);
    }

    public /* synthetic */ C0659Mi(C0658Mh mh, View$OnClickListenerC0656Mf mf) {
        this(mh);
    }

    /* JADX INFO: Multiple debug info for r0v24 android.widget.LinearLayout$LayoutParams: [D('selectedOptionView' com.facebook.ads.redexgen.X.Mn), D('selectedOptionParams' android.widget.LinearLayout$LayoutParams)] */
    private View A00(C0658Mh mh) {
        ImageView imageView = new ImageView(getContext());
        int i = this.A00;
        imageView.setPadding(i, i, i, i);
        imageView.setImageBitmap(C0641Lq.A01(mh.A01));
        imageView.setColorFilter(-1);
        int i2 = this.A01;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(mh.A00);
        C0632Lh.A0X(imageView, gradientDrawable);
        layoutParams.gravity = 17;
        int i3 = A08;
        layoutParams.setMargins(i3, 0, i3, i3);
        TextView textView = new TextView(getContext());
        C0632Lh.A0c(textView, true, 20);
        textView.setTextColor(-14934495);
        textView.setText(mh.A06);
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        int i4 = A08;
        layoutParams2.setMargins(i4, 0, i4, i4);
        TextView textView2 = new TextView(getContext());
        C0632Lh.A0c(textView2, false, 16);
        textView2.setTextColor(-10459280);
        textView2.setText(mh.A05);
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        int i5 = A08;
        layoutParams3.setMargins(i5, 0, i5, i5);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        linearLayout.addView(textView2, layoutParams3);
        if (mh.A09) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            if (!TextUtils.isEmpty(mh.A04)) {
                C0690No no = new C0690No(this.A02);
                int i6 = A0E;
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i6, i6);
                layoutParams4.setMargins(0, 0, A09, 0);
                no.setFullCircleCorners(true);
                AsyncTaskC1017aA aAVar = new AsyncTaskC1017aA(no, this.A02);
                int i7 = A0E;
                aAVar.A06(i7, i7).A08(mh.A04);
                linearLayout2.addView(no, layoutParams4);
            }
            C0664Mn mn = new C0664Mn(this.A02);
            mn.setData(mh.A03, EnumC0640Lp.CHECKMARK);
            mn.setSelected(true);
            linearLayout2.addView(mn, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    private View A01(C0658Mh mh) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        if (mh.A0A) {
            ImageView imageView = new ImageView(getContext());
            int i = A07;
            imageView.setPadding(i, i, i, i);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setImageBitmap(C0641Lq.A01(EnumC0640Lp.CROSS));
            imageView.setOnClickListener(new View$OnClickListenerC0656Mf(this));
            int i2 = A0C;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
            int i3 = A06;
            layoutParams.setMargins(i3, i3, i3, i3);
            linearLayout.addView(imageView, layoutParams);
        }
        return linearLayout;
    }

    private View getFooterView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(C0641Lq.A01(EnumC0640Lp.SETTINGS));
        imageView.setColorFilter(-13272859);
        int i = A05;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 17;
        TextView textView = new TextView(getContext());
        C0632Lh.A0c(textView, false, 16);
        textView.setTextColor(-13272859);
        int i2 = A09;
        textView.setPadding(i2, i2, i2, i2);
        textView.setText(AnonymousClass28.A0D(this.A02.A00()));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new View$OnClickListenerC0657Mg(this));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }
}
