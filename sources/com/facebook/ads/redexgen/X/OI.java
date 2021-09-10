package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

public class OI implements View.OnTouchListener {
    public final /* synthetic */ Y4 A00;

    public OI(Y4 y4) {
        this.A00 = y4;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A00.A0D.dispatchTouchEvent(MotionEvent.obtain(motionEvent));
        return false;
    }
}
