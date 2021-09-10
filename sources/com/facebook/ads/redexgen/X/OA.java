package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.Locale;

public final class OA extends FrameLayout {
    public static final int A04 = ((int) (C0632Lh.A01 * 23.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 3.0f));
    public static final int A06 = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 36.0f));
    public static final int A08 = ((int) (C0632Lh.A01 * 36.0f));
    public static final int A09 = ((int) (C0632Lh.A01 * 4.0f));
    public final int A00;
    public final RelativeLayout A01;
    public final View$OnClickListenerC1014a7 A02;
    public final O1 A03;

    public OA(O1 o1, String str, AnonymousClass1I r16, AbstractC0684Ni ni) {
        super(o1.A05());
        this.A03 = o1;
        this.A00 = r16.A08(true);
        this.A01 = new RelativeLayout(o1.A05());
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A01(str);
        this.A02 = new View$OnClickListenerC1014a7(o1.A05(), o1.A04().A0S(), null, o1.A06(), o1.A09(), o1.A0B(), o1.A07());
        this.A02.setCta(o1.A04().A0N().A0G(), o1.A04().A0T(), new HashMap(), ni);
        this.A02.setIsInAppBrowser(true);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A00(View view) {
        ImageView imageView = new ImageView(this.A03.A05());
        imageView.setImageBitmap(C0641Lq.A01(EnumC0640Lp.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        imageView.setColorFilter(this.A00);
        int i = A04;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        int i2 = A05;
        imageView.setPadding(i2, i2, i2, i2);
        layoutParams.addRule(2, view.getId());
        layoutParams.addRule(14);
        this.A01.addView(imageView, layoutParams);
    }

    private void A01(String str) {
        Button button = new Button(this.A03.A05());
        C0632Lh.A0N(button);
        int i = A08;
        button.setPadding(i, 0, i, 0);
        button.setText(str.toUpperCase(Locale.getDefault()));
        button.setTextSize(14.0f);
        button.setTypeface(Typeface.defaultFromStyle(1));
        C0632Lh.A0S(button, this.A00, A09);
        button.setTextColor(-16777216);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, A07);
        layoutParams.addRule(12);
        layoutParams.addRule(14);
        this.A01.addView(button, layoutParams);
        A00(button);
    }

    public final boolean performClick() {
        return this.A02.performClick();
    }
}
