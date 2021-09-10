package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.7y */
public final class C03177y extends MQ {
    public int A00;
    public boolean A01;
    public final AnonymousClass9G<C03167w> A02;
    public final AnonymousClass9G<C03157v> A03;
    public final AnonymousClass9G<KU> A04;
    public final AnonymousClass9G<AnonymousClass7s> A05;
    public final AnonymousClass9G<K8> A06;
    public final AnonymousClass9G<K6> A07;
    public final AnonymousClass9G<K5> A08;
    public final AnonymousClass9G<K0> A09;
    public final AnonymousClass9G<C0600Jy> A0A;
    public final PD A0B;
    public final KL A0C;
    public final K1 A0D;

    public C03177y(XJ xj, JC jc, PD pd, String str) {
        this(xj, jc, pd, new ArrayList(), str);
    }

    public C03177y(XJ xj, JC jc, PD pd, String str, Bundle bundle) {
        this(xj, jc, pd, new ArrayList(), str, bundle, null);
    }

    public C03177y(XJ xj, JC jc, PD pd, String str, Map<String, String> extraParams) {
        this(xj, jc, pd, new ArrayList(), str, null, extraParams);
    }

    public C03177y(XJ xj, JC jc, PD pd, List<AnonymousClass25> list, String str) {
        super(xj, jc, pd, list, str, !pd.A0e());
        this.A0D = new C03187z(this);
        this.A07 = new O9(this);
        this.A03 = new C0695Nt(this);
        this.A04 = new C0694Ns(this);
        this.A05 = new C0680Ne(this);
        this.A02 = new NL(this);
        this.A06 = new C0663Mm(this);
        this.A09 = new C0652Mb(this);
        this.A0A = new C0651Ma(this);
        this.A08 = new C0716Op(this);
        this.A0C = new AnonymousClass81(this);
        this.A01 = false;
        this.A0B = pd;
        this.A0B.getEventBus().A04(this.A0D, this.A05, this.A07, this.A04, this.A03, this.A02, this.A06, this.A09, this.A0A, this.A0C, this.A08);
    }

    public C03177y(XJ xj, JC jc, PD pd, List<AnonymousClass25> list, String str, Bundle bundle, Map<String, String> map) {
        super(xj, jc, pd, list, str, !pd.A0e(), bundle, map);
        this.A0D = new C03187z(this);
        this.A07 = new O9(this);
        this.A03 = new C0695Nt(this);
        this.A04 = new C0694Ns(this);
        this.A05 = new C0680Ne(this);
        this.A02 = new NL(this);
        this.A06 = new C0663Mm(this);
        this.A09 = new C0652Mb(this);
        this.A0A = new C0651Ma(this);
        this.A08 = new C0716Op(this);
        this.A0C = new AnonymousClass81(this);
        this.A01 = false;
        this.A0B = pd;
        this.A0B.getEventBus().A04(this.A0D, this.A05, this.A07, this.A04, this.A03, this.A02, this.A06, this.A09, this.A0A, this.A08);
    }

    public final void A0h() {
        this.A0B.getStateHandler().post(new C0715Oo(this));
    }
}
