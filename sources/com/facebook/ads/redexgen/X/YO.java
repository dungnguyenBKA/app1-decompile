package com.facebook.ads.redexgen.X;

import java.util.Arrays;

public class YO implements BL {
    public final YU A00 = new YU();
    public final YW A01 = new YW();
    public final AbstractC0393Az[] A02;

    public YO(AbstractC0393Az... azArr) {
        this.A02 = (AbstractC0393Az[]) Arrays.copyOf(azArr, azArr.length + 2);
        AbstractC0393Az[] azArr2 = this.A02;
        azArr2[azArr.length] = this.A00;
        azArr2[azArr.length + 1] = this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.BL
    public final AL A3S(AL al) {
        this.A00.A0C(al.A02);
        return new AL(this.A01.A02(al.A01), this.A01.A01(al.A00), al.A02);
    }

    @Override // com.facebook.ads.redexgen.X.BL
    public final AbstractC0393Az[] A5e() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.BL
    public final long A6m(long j) {
        return this.A01.A03(j);
    }

    @Override // com.facebook.ads.redexgen.X.BL
    public final long A7E() {
        return this.A00.A0B();
    }
}
