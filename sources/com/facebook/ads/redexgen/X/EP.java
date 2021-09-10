package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.drm.DrmInitData;
import java.io.IOException;

public abstract class EP implements YH, AY {
    public int A00;
    public int A01;
    public long A02;
    public AZ A03;
    public FZ A04;
    public boolean A05 = true;
    public boolean A06;
    public Format[] A07;
    public final int A08;

    public EP(int i) {
        this.A08 = i;
    }

    public static boolean A0z(@Nullable C0<?> c0, @Nullable DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (c0 == null) {
            return false;
        }
        return c0.A3y(drmInitData);
    }

    public final int A10() {
        return this.A00;
    }

    public final int A11(long j) {
        return this.A04.AE2(j - this.A02);
    }

    public final int A12(AD ad, YY yy, boolean z) {
        int ACn = this.A04.ACn(ad, yy, z);
        if (ACn == -4) {
            if (yy.A04()) {
                this.A05 = true;
                if (this.A06) {
                    return -4;
                }
                return -3;
            }
            yy.A00 += this.A02;
        } else if (ACn == -5) {
            Format format = ad.A00;
            if (format.A0G != Long.MAX_VALUE) {
                ad.A00 = format.A0I(format.A0G + this.A02);
            }
        }
        return ACn;
    }

    public final AZ A13() {
        return this.A03;
    }

    public void A14() {
    }

    public void A15() throws A0 {
    }

    public void A16() throws A0 {
    }

    public void A17(long j, boolean z) throws A0 {
    }

    public void A18(boolean z) throws A0 {
    }

    public void A19(Format[] formatArr, long j) throws A0 {
    }

    public final boolean A1A() {
        return this.A05 ? this.A06 : this.A04.A89();
    }

    public final Format[] A1B() {
        return this.A07;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void A4m() {
        boolean z = true;
        if (this.A01 != 1) {
            z = false;
        }
        C0551Hx.A04(z);
        this.A01 = 0;
        this.A04 = null;
        this.A07 = null;
        this.A06 = false;
        A14();
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void A58(AZ az, Format[] formatArr, FZ fz, long j, boolean z, long j2) throws A0 {
        boolean z2;
        if (this.A01 == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0551Hx.A04(z2);
        this.A03 = az;
        this.A01 = 1;
        A18(z);
        ADE(formatArr, fz, j2);
        A17(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final AY A5q() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public ID A6k() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final int A7F() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final FZ A7K() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AY, com.facebook.ads.redexgen.X.YH
    public final int A7P() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AV
    public void A7Y(int i, Object obj) throws A0 {
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final boolean A7c() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final boolean A7w() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void A92() throws IOException {
        this.A04.A8z();
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void ADE(Format[] formatArr, FZ fz, long j) throws A0 {
        C0551Hx.A04(!this.A06);
        this.A04 = fz;
        this.A05 = false;
        this.A07 = formatArr;
        this.A02 = j;
        A19(formatArr, j);
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void ADO(long j) throws A0 {
        this.A06 = false;
        this.A05 = false;
        A17(j, false);
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void ADi() {
        this.A06 = true;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void ADk(int i) {
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AY
    public int AEI() throws A0 {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void start() throws A0 {
        boolean z = true;
        if (this.A01 != 1) {
            z = false;
        }
        C0551Hx.A04(z);
        this.A01 = 2;
        A15();
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final void stop() throws A0 {
        boolean z;
        if (this.A01 == 2) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        this.A01 = 1;
        A16();
    }
}
