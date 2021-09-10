package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;

public class M5 implements View.OnSystemUiVisibilityChangeListener {
    public final /* synthetic */ C1174cj A00;

    public M5(C1174cj cjVar) {
        this.A00 = cjVar;
    }

    public final void onSystemUiVisibilityChange(int i) {
        boolean z;
        RelativeLayout.LayoutParams layoutParams;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (this.A00.getResources().getConfiguration().orientation == 1) {
            z = true;
        } else {
            z = false;
        }
        C1174cj cjVar = this.A00;
        if (z) {
            layoutParams = cjVar.A09;
        } else {
            layoutParams = cjVar.A08;
        }
        if ((i & 2) == 0) {
            this.A00.A02 = true;
            if (z) {
                i5 = C1174cj.A0M;
            } else {
                i5 = 0;
            }
            if (z) {
                i6 = C1174cj.A0M;
            } else {
                i6 = 0;
            }
            if (z) {
                i7 = C1174cj.A0M * 3;
            } else {
                i7 = 0;
            }
            layoutParams.setMargins(i5, 0, i6, i7);
        } else {
            this.A00.A02 = false;
            if (z) {
                i2 = C1174cj.A0M;
            } else {
                i2 = 0;
            }
            if (z) {
                i3 = C1174cj.A0M;
            } else {
                i3 = 0;
            }
            if (z) {
                i4 = C1174cj.A0M;
            } else {
                i4 = 0;
            }
            layoutParams.setMargins(i2, 0, i3, i4);
        }
        this.A00.setLayoutParams(layoutParams);
    }
}
