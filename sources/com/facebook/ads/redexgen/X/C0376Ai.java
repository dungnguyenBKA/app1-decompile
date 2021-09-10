package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Ai  reason: case insensitive filesystem */
public final class C0376Ai {
    public final int A00;
    public final FC A01;

    public C0376Ai(int i, FC fc) {
        this.A00 = i;
        this.A01 = fc;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0376Ai ai = (C0376Ai) obj;
        if (this.A00 != ai.A00 || !this.A01.equals(ai.A01)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.A00 * 31) + this.A01.hashCode();
    }
}
