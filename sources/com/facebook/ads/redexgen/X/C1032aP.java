package com.facebook.ads.redexgen.X;

import android.widget.ImageView;

/* renamed from: com.facebook.ads.redexgen.X.aP  reason: case insensitive filesystem */
public class C1032aP implements NN {
    public final /* synthetic */ NE A00;

    public C1032aP(NE ne) {
        this.A00 = ne;
    }

    @Override // com.facebook.ads.redexgen.X.NN
    public final void A9Y(boolean z) {
        float f;
        if ((this.A00.A07) && this.A00.A00 != null) {
            this.A00.A00.setEnabled(z);
            ImageView imageView = this.A00.A00;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.3f;
            }
            imageView.setAlpha(f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.NN
    public final void AAD(boolean z) {
        float f;
        if ((this.A00.A07) && this.A00.A02 != null) {
            this.A00.A02.setEnabled(z);
            ImageView imageView = this.A00.A02;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.3f;
            }
            imageView.setAlpha(f);
        }
    }
}
