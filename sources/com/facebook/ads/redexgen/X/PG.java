package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

public class PG implements View.OnTouchListener {
    public final /* synthetic */ PD A00;

    public PG(PD pd) {
        this.A00 = pd;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A00.A0A.A03(new K4(view, motionEvent));
        return false;
    }
}
