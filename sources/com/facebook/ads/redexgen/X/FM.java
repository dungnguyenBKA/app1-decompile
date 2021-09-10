package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;

public final class FM extends AbstractC0804Rz {
    public final XJ A00;

    public FM(AnonymousClass1W r1, List<C1143cD> list, XJ xj) {
        super(r1, list, xj);
        this.A00 = xj;
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final C1181cq A07(ViewGroup viewGroup, int i) {
        return new C1181cq(new MF(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0804Rz
    /* renamed from: A0I */
    public final void A0F(C1181cq cqVar, int i) {
        super.A0F(cqVar, i);
        MF mf = (MF) cqVar.A0m();
        MU mu = (MU) mf.getImageCardView();
        mu.setImageDrawable(null);
        A0G(mu, i);
        C1143cD cDVar = ((AbstractC0804Rz) this).A01.get(i);
        cDVar.A11().A0D(this.A00);
        cDVar.A1N(mf, mf);
    }
}
