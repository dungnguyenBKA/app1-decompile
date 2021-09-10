package com.facebook.ads.redexgen.X;

import android.os.Build;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.2m  reason: invalid class name and case insensitive filesystem */
public class C01862m extends C0469Eq {
    public C01862m(XJ xj) {
        super(xj);
        setCarouselLayoutManager(xj);
    }

    @Nullable
    public RG getFullscreenCarouselRecyclerViewAdapter() {
        if (getAdapter() instanceof RG) {
            return (RG) getAdapter();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C0469Eq
    public TB getLayoutManager() {
        return (TB) super.getLayoutManager();
    }

    private void setCarouselLayoutManager(XJ xj) {
        TB tb = new TB(xj, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            tb.A1W(true);
        }
        super.setLayoutManager(tb);
    }

    @Override // com.facebook.ads.redexgen.X.C0469Eq
    public void setLayoutManager(AnonymousClass4K r1) {
    }
}
