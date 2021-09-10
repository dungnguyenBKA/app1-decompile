package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.source.TrackGroup;
import com.vungle.warren.AdLoader;

/* renamed from: com.facebook.ads.redexgen.X.b0  reason: case insensitive filesystem */
public final class C1069b0 implements H3 {
    public final float A00;
    public final float A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final long A05;
    public final HD A06;
    public final I0 A07;

    public C1069b0(HD hd) {
        this(hd, 10000, 25000, 25000, 0.75f, 0.75f, AdLoader.RETRY_DELAY, I0.A00);
    }

    public C1069b0(HD hd, int i, int i2, int i3, float f, float f2, long j, I0 i0) {
        this.A06 = hd;
        this.A03 = i;
        this.A02 = i2;
        this.A04 = i3;
        this.A00 = f;
        this.A01 = f2;
        this.A05 = j;
        this.A07 = i0;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final C0397Bd A4U(TrackGroup trackGroup, int... iArr) {
        return new C0397Bd(trackGroup, iArr, this.A06, (long) this.A03, (long) this.A02, (long) this.A04, this.A00, this.A01, this.A05, this.A07);
    }
}
