package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;

public final class AW {
    public int A00;
    public int A01;
    public long A02 = -9223372036854775807L;
    public Handler A03;
    public Object A04;
    public boolean A05 = true;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final AU A0A;
    public final AV A0B;
    public final AbstractC0373Af A0C;

    public AW(AU au, AV av, AbstractC0373Af af, int i, Handler handler) {
        this.A0A = au;
        this.A0B = av;
        this.A0C = af;
        this.A03 = handler;
        this.A01 = i;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final long A02() {
        return this.A02;
    }

    public final Handler A03() {
        return this.A03;
    }

    public final AV A04() {
        return this.A0B;
    }

    public final AW A05() {
        C0551Hx.A04(!this.A09);
        if (this.A02 == -9223372036854775807L) {
            C0551Hx.A03(this.A05);
        }
        this.A09 = true;
        this.A0A.ADe(this);
        return this;
    }

    public final AW A06(int i) {
        C0551Hx.A04(!this.A09);
        this.A00 = i;
        return this;
    }

    public final AW A07(@Nullable Object obj) {
        C0551Hx.A04(!this.A09);
        this.A04 = obj;
        return this;
    }

    public final AbstractC0373Af A08() {
        return this.A0C;
    }

    public final Object A09() {
        return this.A04;
    }

    public final synchronized void A0A(boolean z) {
        this.A07 |= z;
        this.A08 = true;
        notifyAll();
    }

    public final boolean A0B() {
        return this.A05;
    }

    public final synchronized boolean A0C() throws InterruptedException {
        C0551Hx.A04(this.A09);
        C0551Hx.A04(this.A03.getLooper().getThread() != Thread.currentThread());
        while (!this.A08) {
            wait();
        }
        return this.A07;
    }

    public final synchronized boolean A0D() {
        return this.A06;
    }
}
