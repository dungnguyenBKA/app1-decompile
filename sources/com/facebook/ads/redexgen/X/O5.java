package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

public class O5 implements View.OnTouchListener {
    public final /* synthetic */ YV A00;

    public O5(YV yv) {
        this.A00 = yv;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.A00.A00 = motionEvent.getY();
        } else if (actionMasked == 1) {
            if (this.A00.A00 < motionEvent.getY()) {
                this.A00.A0Q(false);
            }
        }
        return true;
    }
}
