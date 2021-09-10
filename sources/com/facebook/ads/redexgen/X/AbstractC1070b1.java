package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.source.TrackGroup;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.b1  reason: case insensitive filesystem */
public abstract class AbstractC1070b1 implements H4 {
    public static String[] A06;
    public int A00;
    public final long[] A01;
    public final Format[] A02;
    public final int A03;
    public final TrackGroup A04;
    public final int[] A05;

    static {
        A01();
    }

    public static void A01() {
        A06 = new String[]{"pUEZtwC879kNTB0j2TOCFjJulbgJhqUC", "LPVOHHlL8UGYMHe0OEH9XWTZwVKfE88", "jCWSEziDhw1FUDawrAH0", "ULlgao2XS9ulxIggOdCWnHLutHCveOYX", "OfpsRfCrHKp957e6", "lRTa0LPDu3nTDFLS", "m8d4mf9eDgFJFgmjbUCxubxaGITUd7Ju", "HrUOWAYLXAxBFn4TYCBDJo12hDa"};
    }

    public AbstractC1070b1(TrackGroup trackGroup, int... iArr) {
        boolean z;
        if (iArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        this.A04 = (TrackGroup) C0551Hx.A01(trackGroup);
        this.A03 = iArr.length;
        this.A02 = new Format[this.A03];
        for (int i = 0; i < iArr.length; i++) {
            this.A02[i] = trackGroup.A02(iArr[i]);
        }
        Arrays.sort(this.A02, new C0521Gs());
        this.A05 = new int[this.A03];
        int i2 = 0;
        while (true) {
            int i3 = this.A03;
            if (i2 < i3) {
                this.A05[i2] = trackGroup.A01(this.A02[i2]);
                i2++;
            } else {
                this.A01 = new long[i3];
                return;
            }
        }
    }

    public final boolean A02(int i, long j) {
        return this.A01[i] > j;
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public void A57() {
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final Format A6X(int i) {
        return this.A02[i];
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final int A6c(int i) {
        return this.A05[i];
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final Format A78() {
        return this.A02[A79()];
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final TrackGroup A7N() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public void AB8(float f) {
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (A06[5].length() != 16) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[4] = "LRd3kE9IkICWfxuz";
        strArr[7] = "u7g1WhIErEGO9Vcw68pTGYuY7C3";
        AbstractC1070b1 b1Var = (AbstractC1070b1) obj;
        if (this.A04 != b1Var.A04 || !Arrays.equals(this.A05, b1Var.A05)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            int identityHashCode = System.identityHashCode(this.A04);
            if (A06[6].charAt(23) != 'a') {
                throw new RuntimeException();
            }
            A06[6] = "LdgR80foYK7ntQpYvL7rAZHaf8ikiVBs";
            this.A00 = (identityHashCode * 31) + Arrays.hashCode(this.A05);
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final int length() {
        return this.A05.length;
    }
}
