package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

public class Q5 implements View.OnTouchListener {
    public final /* synthetic */ HQ A00;

    public Q5(HQ hq) {
        this.A00 = hq;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (HQ.A00(this.A00) != null && motionEvent.getAction() == 1) {
            if (HQ.A00(this.A00).isShowing()) {
                HQ.A00(this.A00).hide();
            } else {
                HQ.A00(this.A00).show();
            }
        }
        return true;
    }
}
