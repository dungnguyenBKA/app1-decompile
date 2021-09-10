package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdError;

public class MW extends LinearLayout {
    public static String[] A05;
    public static final int A06 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * 44.0f));
    public int A00;
    public final ImageView A01;
    public final LinearLayout A02;
    public final TextView A03;
    public final C0687Nl A04;

    public static void A01() {
        A05 = new String[]{"RdKbZKE5ShqjtspsYuId0BpVT", "jFs6Ox2yxsj", "", "O0DGVMIkWcl", "ZjYxtVw01iwSMNXN0b17Jtyc9gHU9Z2d", "b1LSaO6GQJOSELIr8C99", "", "wukZGaaSm"};
    }

    static {
        A01();
    }

    public MW(XJ xj, int i) {
        super(xj);
        this.A01 = new ImageView(xj);
        ImageView imageView = this.A01;
        int i2 = A06;
        imageView.setPadding(i2, i2, i2, i2);
        this.A04 = new C0687Nl(xj);
        this.A04.setProgress(0.0f);
        C0687Nl nl = this.A04;
        int i3 = A06;
        nl.setPadding(i3, i3, i3, i3);
        this.A03 = new TextView(xj);
        setOrientation(0);
        this.A02 = new LinearLayout(xj);
        this.A00 = i;
        A00();
    }

    private void A00() {
        setToolbarActionMode(this.A00);
        LinearLayout.LayoutParams actionIconParams = new LinearLayout.LayoutParams(-2, -2);
        setGravity(17);
        int i = A07;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        C0632Lh.A0c(this.A03, true, 16);
        this.A03.setTextColor(-1);
        this.A03.setVisibility(8);
        this.A02.addView(this.A01, layoutParams);
        this.A02.addView(this.A04, layoutParams);
        addView(this.A02, actionIconParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        addView(this.A03, layoutParams2);
    }

    public final boolean A02() {
        return !this.A03.getText().toString().isEmpty();
    }

    public final boolean A03() {
        int i = this.A00;
        return (i == 2 || i == 4) ? false : true;
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setColors(int i) {
        this.A04.A02(AnonymousClass2L.A01(i, 77), i);
        this.A01.setColorFilter(i);
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    public void setProgress(float f) {
        this.A04.setProgressWithAnimation(f);
    }

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
            lp = EnumC0640Lp.CROSS;
        } else if (i == 1) {
            lp = EnumC0640Lp.SKIP_ARROW;
        } else if (i == 3) {
            lp = EnumC0640Lp.MINIMIZE_ARROW;
        } else if (i != 4) {
            lp = EnumC0640Lp.CROSS;
        } else {
            lp = EnumC0640Lp.CROSS;
            if (A05[4].charAt(13) != 'C') {
                String[] strArr = A05;
                strArr[6] = "";
                strArr[2] = "";
                this.A01.setVisibility(8);
                setVisibility(8);
            } else {
                throw new RuntimeException();
            }
        }
        this.A01.setImageBitmap(C0641Lq.A01(lp));
        C0632Lh.A0J(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, this.A01);
    }

    public void setToolbarMessage(String str) {
        int i;
        this.A03.setText(str);
        TextView textView = this.A03;
        if (TextUtils.isEmpty(str)) {
            i = 8;
        } else {
            i = 0;
        }
        textView.setVisibility(i);
    }

    public void setToolbarMessageEnabled(boolean z) {
        int i;
        TextView textView = this.A03;
        if (z) {
            i = 0;
        } else {
            i = 4;
        }
        textView.setVisibility(i);
    }
}
