package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.ci  reason: case insensitive filesystem */
public final class DialogC1173ci extends Dialog implements AnonymousClass8B {
    public static byte[] A06;
    public static final int A07 = Color.parseColor(A00(0, 7, 47));
    public static final int A08 = ((int) (C0632Lh.A01 * 16.0f));
    public Button A00;
    public Button A01;
    public RelativeLayout A02;
    public TextView A03;
    public TextView A04;
    public final XJ A05;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 117);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{-57, -42, -43, -35, -38, 10, -41};
    }

    static {
        A02();
    }

    public DialogC1173ci(XJ xj, Activity activity) {
        super(activity);
        this.A05 = xj;
        setCancelable(false);
        requestWindowFeature(1);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.A02 = new RelativeLayout(activity);
        this.A04 = new TextView(activity);
        this.A03 = new TextView(activity);
        this.A01 = new Button(activity);
        this.A00 = new Button(activity);
        A01();
    }

    private void A01() {
        RelativeLayout relativeLayout = this.A02;
        int i = A08;
        relativeLayout.setPadding(i, i, i / 2, i / 2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(16.0f);
        gradientDrawable.setColor(-1);
        C0632Lh.A0X(this.A02, gradientDrawable);
        C0632Lh.A0N(this.A04);
        this.A04.setTextColor(-16777216);
        this.A04.setPadding(0, 0, 0, A08);
        C0632Lh.A0c(this.A04, true, 18);
        C0632Lh.A0N(this.A03);
        this.A03.setTextColor(-7829368);
        this.A03.setPadding(0, 0, 0, A08 * 2);
        C0632Lh.A0c(this.A03, true, 16);
        C0632Lh.A0N(this.A01);
        this.A01.setAllCaps(true);
        this.A01.setGravity(17);
        this.A01.setTextColor(-1);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(16.0f);
        gradientDrawable2.setColor(A07);
        C0632Lh.A0X(this.A01, gradientDrawable2);
        C0632Lh.A0N(this.A00);
        this.A00.setAllCaps(true);
        this.A00.setGravity(17);
        C0632Lh.A0P(this.A00, -1);
        this.A00.setTextColor(A07);
        if (Build.VERSION.SDK_INT >= 21) {
            this.A00.setStateListAnimator(null);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A04.getId());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(11);
        layoutParams2.addRule(3, this.A03.getId());
        RelativeLayout.LayoutParams layoutParamsMessage = new RelativeLayout.LayoutParams(-2, -2);
        layoutParamsMessage.addRule(0, this.A01.getId());
        layoutParamsMessage.addRule(3, this.A03.getId());
        this.A02.addView(this.A04);
        this.A02.addView(this.A03, layoutParams);
        this.A02.addView(this.A00, layoutParamsMessage);
        this.A02.addView(this.A01, layoutParams2);
        setContentView(this.A02);
    }

    public final void A03(View.OnClickListener onClickListener) {
        this.A00.setOnClickListener(onClickListener);
    }

    public final void A04(View.OnClickListener onClickListener) {
        this.A01.setOnClickListener(onClickListener);
    }

    public final void A05(String str) {
        this.A03.setText(str);
    }

    public final void A06(String str) {
        this.A00.setText(str);
    }

    public final void A07(String str) {
        this.A01.setText(str);
    }

    public final void A08(String str) {
        this.A04.setText(str);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8B
    @Nullable
    public final XJ A5U() {
        return this.A05;
    }
}
