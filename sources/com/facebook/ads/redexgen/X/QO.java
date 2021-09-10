package com.facebook.ads.redexgen.X;

import java.util.Set;

public class QO {
    public QS A00;
    public Set<String> A01;
    public Set<String> A02;
    public boolean A03;
    public boolean A04 = true;

    public final QO A00(QS qs) {
        this.A00 = qs;
        return this;
    }

    public final QO A01(Set<String> pinnedCertificates) {
        this.A01 = pinnedCertificates;
        return this;
    }

    public final QO A02(Set<String> pinnedPublicKeys) {
        this.A02 = pinnedPublicKeys;
        return this;
    }

    public final QO A03(boolean z) {
        this.A04 = z;
        return this;
    }

    public final QO A04(boolean z) {
        this.A03 = z;
        return this;
    }

    public final QP A05() {
        return new QP(this.A00, this.A04, this.A02, this.A01, this.A03);
    }
}
