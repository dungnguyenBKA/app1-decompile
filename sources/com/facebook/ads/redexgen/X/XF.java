package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class XF extends AbstractRunnableC0603Kb {
    public final /* synthetic */ AnonymousClass75 A00;
    public final /* synthetic */ AnonymousClass76 A01;
    public final /* synthetic */ AnonymousClass7D A02;
    public final /* synthetic */ ArrayList A03;
    public final /* synthetic */ ArrayList A04;

    public XF(AnonymousClass7D r1, ArrayList arrayList, AnonymousClass75 r3, AnonymousClass76 r4, ArrayList arrayList2) {
        this.A02 = r1;
        this.A03 = arrayList;
        this.A00 = r3;
        this.A01 = r4;
        this.A04 = arrayList2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        AtomicBoolean atomicBoolean = AnonymousClass7D.A0B(this.A03);
        if (this.A02.A04 instanceof XJ) {
            XJ xj = (XJ) this.A02.A04;
            if (atomicBoolean.get()) {
                xj.A0A().A3x(LZ.A01(this.A02.A00));
            } else {
                xj.A0A().A3w(LZ.A01(this.A02.A00));
            }
        }
        this.A02.A02.post(new XE(this, atomicBoolean));
        AtomicBoolean unused = AnonymousClass7D.A0B(this.A04);
    }
}
