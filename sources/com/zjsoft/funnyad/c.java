package com.zjsoft.funnyad;

import android.app.Activity;
import com.google.ads.ADRequestList;
import com.zjsoft.funnyad.a;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class c implements a.f {
    final /* synthetic */ Activity a;
    final /* synthetic */ a b;

    c(a aVar, Activity activity) {
        this.b = aVar;
        this.a = activity;
    }

    @Override // com.zjsoft.funnyad.a.f
    public void a(ADRequestList aDRequestList) {
        a aVar = this.b;
        Activity activity = this.a;
        Objects.requireNonNull(aVar);
        aVar.g = new ob0(activity, aDRequestList, false);
    }
}
