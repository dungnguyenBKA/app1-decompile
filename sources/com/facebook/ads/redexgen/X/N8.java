package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

public class N8 implements View.OnTouchListener {
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            C0632Lh.A0P(view, NE.A0D);
        } else if (action == 1) {
            C0632Lh.A0P(view, 0);
        }
        return false;
    }
}
