package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Ok  reason: case insensitive filesystem */
public final class C0711Ok extends LinearLayout {
    public static final int A05 = ((int) (C0632Lh.A01 * 72.0f));
    public static final int A06 = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A08 = ((int) (C0632Lh.A01 * 16.0f));
    @Nullable
    public LinearLayout A00;
    public final int A01;
    public final XJ A02;
    public final C0690No A03;
    public final C0696Nu A04;

    public C0711Ok(C0710Oi oi) {
        super(oi.A06);
        this.A02 = oi.A06;
        this.A03 = new C0690No(this.A02);
        this.A04 = new C0696Nu(this.A02, oi.A01, true, false, true);
        this.A01 = oi.A00;
        A03(oi);
    }

    public /* synthetic */ C0711Ok(C0710Oi oi, T5 t5) {
        this(oi);
    }

    private void A00() {
        A01(this.A03, 150);
        A01(this.A04, 170);
        LinearLayout linearLayout = this.A00;
        if (linearLayout != null) {
            A01(linearLayout, 190);
        }
    }

    private void A01(View view, int i) {
        view.setTranslationY((float) i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy((float) (-i)).scaleX(1.0f).scaleY(1.0f).setDuration(300).setInterpolator(new DecelerateInterpolator(2.0f));
    }

    private void A02(C0710Oi oi) {
        if (!TextUtils.isEmpty(oi.A03)) {
            this.A00 = new LinearLayout(getContext());
            this.A00.setGravity(17);
            LinearLayout linearLayout = this.A00;
            int i = A08;
            linearLayout.setPadding(i, i / 2, i, i / 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, A08 / 2, 0, 0);
            TextView textView = new TextView(getContext());
            textView.setTextColor(-1);
            C0632Lh.A0c(textView, false, 16);
            textView.setText(oi.A03);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            ImageView imageView = new ImageView(getContext());
            new AsyncTaskC1017aA(imageView, this.A02).A05().A08(oi.A02);
            int i2 = A07;
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i2, i2);
            layoutParams3.setMargins(0, 0, A08 / 2, 0);
            this.A00.addView(imageView, layoutParams3);
            this.A00.addView(textView, layoutParams2);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(100.0f);
            gradientDrawable.setColor(469762047);
            C0632Lh.A0X(this.A00, gradientDrawable);
            addView(this.A00, layoutParams);
        }
    }

    private void A03(C0710Oi oi) {
        C0632Lh.A0P(this.A03, 0);
        this.A03.setRadius(50);
        if (oi.A04.A00() == AnonymousClass1E.A05) {
            this.A03.setFullCircleCorners(true);
        } else {
            this.A03.setRadius(A06);
        }
        new AsyncTaskC1017aA(this.A03, this.A02).A05().A08(oi.A05.A01());
        this.A04.A02(oi.A04.A06(), oi.A05.A03(), null, false, true);
        this.A04.getDescriptionTextView().setAlpha(0.8f);
        this.A04.setAlignment(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i = A08;
        layoutParams.setMargins(0, i, 0, i / 2);
        View view = this.A03;
        int i2 = A05;
        addView(view, new LinearLayout.LayoutParams(i2, i2));
        addView(this.A04, layoutParams);
        A02(oi);
        C0632Lh.A0P(this, -14473425);
        setGravity(17);
        setOrientation(1);
    }

    public final void A04(Oj oj) {
        A00();
        postDelayed(new T5(this, oj), (long) this.A01);
    }
}
