package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

public class Q7 implements View.OnTouchListener {
    public final /* synthetic */ HO A00;

    public Q7(HO ho) {
        this.A00 = ho;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (!HO.A0B(this.A00) && HO.A01(this.A00) != null && motionEvent.getAction() == 1) {
            if (HO.A01(this.A00).isShowing()) {
                HO.A01(this.A00).hide();
            } else {
                HO.A01(this.A00).show();
            }
        }
        return true;
    }
}
