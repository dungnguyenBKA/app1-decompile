package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;

public final class YB implements ID {
    public static byte[] A04;
    @Nullable
    public YH A00;
    @Nullable
    public ID A01;
    public final AbstractC03669x A02;
    public final C1113bi A03;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 59);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{95, 103, 126, 102, 123, 98, 126, 119, 50, 96, 119, 124, 118, 119, 96, 119, 96, 50, Byte.MAX_VALUE, 119, 118, 123, 115, 50, 113, 126, 125, 113, 121, 97, 50, 119, 124, 115, 112, 126, 119, 118, 60};
    }

    public YB(AbstractC03669x r2, I0 i0) {
        this.A02 = r2;
        this.A03 = new C1113bi(i0);
    }

    private void A01() {
        this.A03.A03(this.A01.A73());
        AL playbackParameters = this.A01.A70();
        if (!playbackParameters.equals(this.A03.A70())) {
            this.A03.ADq(playbackParameters);
            this.A02.AB7(playbackParameters);
        }
    }

    private boolean A03() {
        YH yh = this.A00;
        if (yh == null || yh.A7z() || (!this.A00.A89() && this.A00.A7c())) {
            return false;
        }
        return true;
    }

    public final long A04() {
        if (!A03()) {
            return this.A03.A73();
        }
        A01();
        return this.A01.A73();
    }

    public final void A05() {
        this.A03.A01();
    }

    public final void A06() {
        this.A03.A02();
    }

    public final void A07(long j) {
        this.A03.A03(j);
    }

    public final void A08(YH yh) {
        if (yh == this.A00) {
            this.A01 = null;
            this.A00 = null;
        }
    }

    public final void A09(YH yh) throws A0 {
        ID id;
        ID A6k = yh.A6k();
        if (A6k != null && A6k != (id = this.A01)) {
            if (id == null) {
                this.A01 = A6k;
                this.A00 = yh;
                this.A01.ADq(this.A03.A70());
                A01();
                return;
            }
            throw A0.A02(new IllegalStateException(A00(0, 39, 41)));
        }
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final AL A70() {
        ID id = this.A01;
        if (id != null) {
            return id.A70();
        }
        return this.A03.A70();
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final long A73() {
        if (A03()) {
            return this.A01.A73();
        }
        return this.A03.A73();
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final AL ADq(AL al) {
        ID id = this.A01;
        if (id != null) {
            al = id.ADq(al);
        }
        this.A03.ADq(al);
        this.A02.AB7(al);
        return al;
    }
}
