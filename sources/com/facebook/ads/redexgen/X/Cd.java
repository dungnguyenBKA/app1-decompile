package com.facebook.ads.redexgen.X;

import java.io.IOException;

public final class Cd {
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public boolean A04;
    public final byte[] A05 = new byte[10];

    public final void A00() {
        this.A04 = false;
    }

    public final void A01(CH ch, int i, int i2) throws IOException, InterruptedException {
        if (!this.A04) {
            ch.ACM(this.A05, 0, 10);
            ch.ADN();
            if (C0382Ao.A06(this.A05) != -1) {
                this.A04 = true;
                this.A02 = 0;
            } else {
                return;
            }
        }
        if (this.A02 == 0) {
            this.A00 = i;
            this.A01 = 0;
        }
        this.A01 += i2;
    }

    public final void A02(Cc cc) {
        if (this.A04 && this.A02 > 0) {
            cc.A0W.ADS(this.A03, this.A00, this.A01, 0, cc.A0V);
            this.A02 = 0;
        }
    }

    public final void A03(Cc cc, long j) {
        if (this.A04) {
            int i = this.A02;
            this.A02 = i + 1;
            if (i == 0) {
                this.A03 = j;
            }
            if (this.A02 >= 16) {
                cc.A0W.ADS(this.A03, this.A00, this.A01, 0, cc.A0V);
                this.A02 = 0;
            }
        }
    }
}
