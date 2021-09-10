package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;

public class P3 implements View.OnTouchListener {
    public final /* synthetic */ P4 A00;

    public P3(P4 p4) {
        this.A00 = p4;
    }

    public /* synthetic */ P3(P4 p4, AnonymousClass82 r2) {
        this(p4);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1) {
            return false;
        }
        this.A00.A01 = System.currentTimeMillis();
        P4.A00(this.A00);
        this.A00.A06.A8e(this.A00.A03.A0T(), new C0678Nc().A04(this.A00.getViewabilityChecker()).A03(this.A00.getTouchDataRecorder()).A06());
        return false;
    }
}
