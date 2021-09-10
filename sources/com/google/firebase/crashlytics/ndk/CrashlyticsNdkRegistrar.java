package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.d;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import java.util.Arrays;
import java.util.List;

public class CrashlyticsNdkRegistrar implements i {
    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a = d.a(zy.class);
        a.b(q.h(Context.class));
        a.e(a.b(this));
        a.d();
        return Arrays.asList(a.c(), x50.a("fire-cls-ndk", "17.4.0"));
    }
}
