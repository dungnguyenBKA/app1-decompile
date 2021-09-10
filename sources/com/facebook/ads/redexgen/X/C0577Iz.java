package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;

/* renamed from: com.facebook.ads.redexgen.X.Iz  reason: case insensitive filesystem */
public final class C0577Iz {
    @Nullable
    public final Handler A00;
    @Nullable
    public final J0 A01;

    public C0577Iz(@Nullable Handler handler, @Nullable J0 j0) {
        Handler handler2;
        if (j0 != null) {
            handler2 = (Handler) C0551Hx.A01(handler);
        } else {
            handler2 = null;
        }
        this.A00 = handler2;
        this.A01 = j0;
    }

    public final void A01(int i, int i2, int i3, float f) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0574Iw(this, i, i2, i3, f));
        }
    }

    public final void A02(int i, long j) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0573Iv(this, i, j));
        }
    }

    public final void A03(Surface surface) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0575Ix(this, surface));
        }
    }

    public final void A04(Format format) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0572Iu(this, format));
        }
    }

    public final void A05(C0394Ba ba) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0576Iy(this, ba));
        }
    }

    public final void A06(C0394Ba ba) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0570Is(this, ba));
        }
    }

    public final void A07(String str, long j, long j2) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0571It(this, str, j, j2));
        }
    }
}
