package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class T3 implements AnonymousClass3V {
    public final /* synthetic */ C0473Eu A00;
    public final /* synthetic */ AnonymousClass3Q A01;

    public T3(C0473Eu eu, AnonymousClass3Q r2) {
        this.A00 = eu;
        this.A01 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3V
    public final Object A4D(int i) {
        AnonymousClass3O A002 = this.A01.A00(i);
        if (A002 == null) {
            return null;
        }
        return A002.A0N();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3V
    public final List<Object> A5K(String str, int i) {
        List<AnonymousClass3O> A03 = this.A01.A03(str, i);
        if (A03 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int size = A03.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(A03.get(i2).A0N());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3V
    public final Object A5L(int i) {
        AnonymousClass3O A012 = this.A01.A01(i);
        if (A012 == null) {
            return null;
        }
        return A012.A0N();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3V
    public final boolean ACO(int i, int i2, Bundle bundle) {
        return this.A01.A04(i, i2, bundle);
    }
}
