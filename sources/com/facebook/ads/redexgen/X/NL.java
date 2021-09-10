package com.facebook.ads.redexgen.X;

import org.apache.http.HttpStatus;

public class NL extends AnonymousClass9G<C03167w> {
    public final /* synthetic */ C03177y A00;

    public NL(C03177y r1) {
        this.A00 = r1;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final void A04(C03167w r4) {
        int A002 = r4.A00();
        int A01 = r4.A01();
        if (this.A00.A00 > 0 && A002 == A01 && A01 > this.A00.A00) {
            return;
        }
        if (A01 >= A002 + HttpStatus.SC_INTERNAL_SERVER_ERROR) {
            this.A00.A0e(A002);
        } else if (A01 == 0) {
            C03177y r1 = this.A00;
            r1.A0e(r1.A00);
        } else {
            this.A00.A0e(A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9G
    public final Class<C03167w> A01() {
        return C03167w.class;
    }
}
