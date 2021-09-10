package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;

public final class B6 {
    @Nullable
    public final Handler A00;
    @Nullable
    public final B7 A01;

    public B6(@Nullable Handler handler, @Nullable B7 b7) {
        Handler handler2;
        if (b7 != null) {
            handler2 = (Handler) C0551Hx.A01(handler);
        } else {
            handler2 = null;
        }
        this.A00 = handler2;
        this.A01 = b7;
    }

    public final void A01(int i) {
        if (this.A01 != null) {
            this.A00.post(new B5(this, i));
        }
    }

    public final void A02(int i, long j, long j2) {
        if (this.A01 != null) {
            this.A00.post(new B3(this, i, j, j2));
        }
    }

    public final void A03(Format format) {
        if (this.A01 != null) {
            this.A00.post(new B2(this, format));
        }
    }

    public final void A04(C0394Ba ba) {
        if (this.A01 != null) {
            this.A00.post(new B4(this, ba));
        }
    }

    public final void A05(C0394Ba ba) {
        if (this.A01 != null) {
            this.A00.post(new B0(this, ba));
        }
    }

    public final void A06(String str, long j, long j2) {
        if (this.A01 != null) {
            this.A00.post(new B1(this, str, j, j2));
        }
    }
}
