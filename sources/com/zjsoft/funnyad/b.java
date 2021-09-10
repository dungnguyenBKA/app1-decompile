package com.zjsoft.funnyad;

import com.google.ads.ADRequestList;
import com.zjsoft.funnyad.a;

/* access modifiers changed from: package-private */
public class b implements a.f {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // com.zjsoft.funnyad.a.f
    public void a(ADRequestList aDRequestList) {
        a aVar = this.a;
        aVar.f = new pb0(aVar.d, aDRequestList, false);
    }
}
