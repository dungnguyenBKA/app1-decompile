package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.facebook.ads.redexgen.X.aI  reason: case insensitive filesystem */
public abstract class AbstractC1025aI implements FE {
    public YF A00;
    public AbstractC0373Af A01;
    public Object A02;
    public final FP A03 = new FP();
    public final ArrayList<FD> A04 = new ArrayList<>(1);

    public abstract void A02();

    public abstract void A03(YF yf, boolean z);

    public final FP A00(@Nullable FC fc) {
        return this.A03.A03(0, fc, 0);
    }

    public final void A01(AbstractC0373Af af, @Nullable Object obj) {
        this.A01 = af;
        this.A02 = obj;
        Iterator<FD> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().ABe(this, af, obj);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final void A3G(Handler handler, FS fs) {
        this.A03.A08(handler, fs);
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final void ACY(YF yf, boolean z, FD fd) {
        boolean z2;
        YF yf2 = this.A00;
        if (yf2 == null || yf2 == yf) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0551Hx.A03(z2);
        this.A04.add(fd);
        if (this.A00 == null) {
            this.A00 = yf;
            A03(yf, z);
            return;
        }
        AbstractC0373Af af = this.A01;
        if (af != null) {
            fd.ABe(this, af, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final void AD6(FD fd) {
        this.A04.remove(fd);
        if (this.A04.isEmpty()) {
            this.A00 = null;
            this.A01 = null;
            this.A02 = null;
            A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final void AD8(FS fs) {
        this.A03.A0E(fs);
    }
}
