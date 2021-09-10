package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

public abstract class MP extends RelativeLayout implements PP {
    @Nullable
    public PD A00;

    public MP(XJ xj) {
        super(xj);
    }

    public MP(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void A8K(PD pd) {
        this.A00 = pd;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void AEO(PD pd) {
        A08();
        this.A00 = null;
    }

    @Nullable
    public PD getVideoView() {
        return this.A00;
    }
}
