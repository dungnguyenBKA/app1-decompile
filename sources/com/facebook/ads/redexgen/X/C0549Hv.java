package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Hv  reason: case insensitive filesystem */
public final class C0549Hv implements AbstractC0738Pl {
    public int A00;
    @Nullable
    public ValueAnimator A01;
    public EnumC0737Pk A02 = EnumC0737Pk.A05;
    public final int A03;
    public final int A04;
    public final View A05;

    public C0549Hv(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A03 = i;
        this.A00 = i2;
        this.A04 = i3;
    }

    private ValueAnimator A00(int i, int i2, View view) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.setDuration((long) this.A03);
        ofInt.addUpdateListener(new C0741Po(this, view));
        return ofInt;
    }

    /* access modifiers changed from: private */
    public void A07(boolean z) {
        if (z) {
            this.A02 = EnumC0737Pk.A06;
            this.A01 = A00(this.A00, this.A04, this.A05);
            this.A01.addListener(new C0740Pn(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A04;
        this.A05.setLayoutParams(layoutParams);
        C0632Lh.A0K(this.A05);
        this.A02 = EnumC0737Pk.A05;
    }

    /* access modifiers changed from: private */
    public void A08(boolean z) {
        C0632Lh.A0O(this.A05);
        if (z) {
            this.A02 = EnumC0737Pk.A04;
            this.A01 = A00(this.A04, this.A00, this.A05);
            this.A01.addListener(new C0739Pm(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A00;
        this.A05.setLayoutParams(layoutParams);
        this.A02 = EnumC0737Pk.A03;
    }

    public final void A09(int i) {
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0738Pl
    public final void A3P(boolean z, boolean z2) {
        if (z2) {
            A07(z);
        } else {
            A08(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0738Pl
    public final EnumC0737Pk A7G() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0738Pl
    public final void cancel() {
        ValueAnimator valueAnimator = this.A01;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }
}
