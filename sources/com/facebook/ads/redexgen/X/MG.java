package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;

public class MG implements Animation.AnimationListener {
    public final /* synthetic */ AnonymousClass50 A00;
    public final /* synthetic */ AbstractC1106bb A01;
    public final /* synthetic */ AbstractC1106bb A02;

    public MG(AbstractC1106bb bbVar, AbstractC1106bb bbVar2, AnonymousClass50 r3) {
        this.A01 = bbVar;
        this.A02 = bbVar2;
        this.A00 = r3;
    }

    public final void onAnimationEnd(Animation animation) {
        this.A01.A04 = false;
        C0632Lh.A0K(this.A02);
        new Handler().postDelayed(new C1112bh(this), 200);
    }

    public final void onAnimationRepeat(Animation animation) {
    }

    public final void onAnimationStart(Animation animation) {
    }
}
