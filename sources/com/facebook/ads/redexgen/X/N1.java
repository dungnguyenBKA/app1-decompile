package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;

public final class N1 extends LinearLayout {
    public static final int A03 = ((int) (C0632Lh.A01 * 40.0f));
    public static final int A04 = ((int) (C0632Lh.A01 * 20.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 10.0f));
    public final AnonymousClass2B A00;
    public final XJ A01;
    public final AbstractC0662Ml A02;

    public N1(XJ xj, AnonymousClass2B r8, AbstractC0662Ml ml, EnumC0640Lp lp) {
        this(xj, r8, ml, null, lp);
    }

    /* JADX INFO: Multiple debug info for r7v0 'this'  com.facebook.ads.redexgen.X.N1: [D('subHeaderView' android.view.View), D('optionsView' android.view.View)] */
    public N1(XJ xj, AnonymousClass2B r9, AbstractC0662Ml ml, @Nullable String str, EnumC0640Lp lp) {
        super(xj);
        this.A01 = xj;
        this.A00 = r9;
        this.A02 = ml;
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (!TextUtils.isEmpty(str)) {
            View A012 = A01(str);
            A012.setPadding(0, 0, 0, 0);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            C0632Lh.A0P(view, -10459280);
            addView(A012, layoutParams);
            addView(view);
        }
        if (!TextUtils.isEmpty(this.A00.A03())) {
            View A002 = A00(lp, this.A00.A03());
            int i = A05;
            A002.setPadding(0, i, 0, i);
            addView(A002, layoutParams);
        }
        ViewGroup A022 = A02();
        A022.setPadding(0, A05, 0, 0);
        addView(A022, layoutParams);
    }

    private View A00(EnumC0640Lp lp, String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        int i = A04;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 16;
        imageView.setImageBitmap(C0641Lq.A01(lp));
        TextView textView = new TextView(getContext());
        C0632Lh.A0c(textView, true, 14);
        textView.setTextColor(-10459280);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        textView.setText(str);
        textView.setPadding(A05, 0, 0, 0);
        textView.setFocusable(true);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    /* JADX INFO: Multiple debug info for r0v12 android.widget.LinearLayout: [D('header' android.widget.LinearLayout), D('titleParams' android.widget.LinearLayout$LayoutParams)] */
    private View A01(String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        imageView.setImageBitmap(C0641Lq.A01(EnumC0640Lp.BACK_ARROW));
        int i = A05;
        imageView.setPadding(0, i, i * 2, i);
        int i2 = A03;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        imageView.setOnClickListener(new View$OnClickListenerC0675Mz(this));
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(str);
        C0632Lh.A0c(textView, true, 16);
        textView.setTextColor(-14934495);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, A03, 0);
        layoutParams2.gravity = 17;
        LinearLayout header = new LinearLayout(getContext());
        header.setOrientation(0);
        header.addView(imageView, layoutParams);
        header.addView(textView, layoutParams2);
        return header;
    }

    private ViewGroup A02() {
        N7 n7 = new N7(this.A01);
        for (AnonymousClass2B r3 : this.A00.A05()) {
            C0664Mn mn = new C0664Mn(this.A01);
            mn.setData(r3.A04(), null);
            mn.setOnClickListener(new N0(this, mn, r3));
            n7.addView(mn);
        }
        return n7;
    }
}
