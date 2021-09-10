package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class T2 implements AnonymousClass3S {
    public final /* synthetic */ C0474Ev A00;
    public final /* synthetic */ AnonymousClass3Q A01;

    public T2(C0474Ev ev, AnonymousClass3Q r2) {
        this.A00 = ev;
        this.A01 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3S
    public final Object A4D(int i) {
        AnonymousClass3O A002 = this.A01.A00(i);
        if (A002 == null) {
            return null;
        }
        return A002.A0N();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3S
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

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3S
    public final boolean ACO(int i, int i2, Bundle bundle) {
        return this.A01.A04(i, i2, bundle);
    }
}
