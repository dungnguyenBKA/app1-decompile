package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

public final class AZ {
    public static final AZ A01 = new AZ(0);
    public final int A00;

    public AZ(int i) {
        this.A00 = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && this.A00 == ((AZ) obj).A00) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.A00;
    }
}
