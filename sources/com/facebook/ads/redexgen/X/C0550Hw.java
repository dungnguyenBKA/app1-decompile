package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Hw  reason: case insensitive filesystem */
public final class C0550Hw implements AbstractC0738Pl {
    public TransitionDrawable A00;
    public TransitionDrawable A01;
    public EnumC0737Pk A02 = EnumC0737Pk.A05;
    public final int A03;
    public final Drawable A04;
    public final Drawable A05;
    public final Handler A06 = new Handler();
    public final View A07;

    public C0550Hw(View view, int i, Drawable drawable, Drawable drawable2) {
        this.A03 = i;
        this.A07 = view;
        this.A05 = drawable;
        this.A04 = drawable2;
        this.A01 = new TransitionDrawable(new Drawable[]{drawable, drawable2});
        this.A01.setCrossFadeEnabled(true);
        this.A00 = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        this.A00.setCrossFadeEnabled(true);
        C0632Lh.A0X(this.A07, this.A01);
    }

    private void A04(boolean z) {
        this.A06.removeCallbacksAndMessages(null);
        if (z) {
            this.A02 = EnumC0737Pk.A06;
            C0632Lh.A0X(this.A07, this.A00);
            this.A00.startTransition(this.A03);
            this.A06.postDelayed(new I6(this), (long) this.A03);
            return;
        }
        C0632Lh.A0X(this.A07, this.A05);
        this.A02 = EnumC0737Pk.A05;
    }

    private void A05(boolean z) {
        this.A06.removeCallbacksAndMessages(null);
        if (z) {
            this.A02 = EnumC0737Pk.A04;
            C0632Lh.A0X(this.A07, this.A01);
            this.A01.startTransition(this.A03);
            this.A06.postDelayed(new I8(this), (long) this.A03);
            return;
        }
        C0632Lh.A0X(this.A07, this.A04);
        this.A02 = EnumC0737Pk.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0738Pl
    public final void A3P(boolean z, boolean z2) {
        if (z2) {
            A04(z);
        } else {
            A05(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0738Pl
    public final EnumC0737Pk A7G() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0738Pl
    public final void cancel() {
        EnumC0737Pk pk;
        this.A06.removeCallbacksAndMessages(null);
        this.A01.resetTransition();
        this.A00.resetTransition();
        if (this.A02 == EnumC0737Pk.A04) {
            pk = EnumC0737Pk.A05;
        } else {
            pk = EnumC0737Pk.A03;
        }
        this.A02 = pk;
    }
}
