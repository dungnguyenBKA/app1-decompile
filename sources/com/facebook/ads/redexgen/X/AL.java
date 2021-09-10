package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

public final class AL {
    public static final AL A04 = new AL(1.0f);
    public final float A00;
    public final float A01;
    public final boolean A02;
    public final int A03;

    public AL(float f) {
        this(f, 1.0f, false);
    }

    public AL(float f, float f2, boolean z) {
        boolean z2;
        boolean z3 = true;
        if (f > 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0551Hx.A03(z2);
        C0551Hx.A03(f2 <= 0.0f ? false : z3);
        this.A01 = f;
        this.A00 = f2;
        this.A02 = z;
        this.A03 = Math.round(1000.0f * f);
    }

    public final long A00(long j) {
        return ((long) this.A03) * j;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AL al = (AL) obj;
        if (this.A01 == al.A01 && this.A00 == al.A00 && this.A02 == al.A02) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((17 * 31) + Float.floatToRawIntBits(this.A01)) * 31) + Float.floatToRawIntBits(this.A00)) * 31) + (this.A02 ? 1 : 0);
    }
}
