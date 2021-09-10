package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.source.TrackGroup;

public final class BT extends AbstractC1070b1 {
    public final int A00;
    @Nullable
    public final Object A01;

    public BT(TrackGroup trackGroup, int i) {
        this(trackGroup, i, 0, null);
    }

    public BT(TrackGroup trackGroup, int i, int i2, @Nullable Object obj) {
        super(trackGroup, i);
        this.A00 = i2;
        this.A01 = obj;
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final int A79() {
        return 0;
    }
}
