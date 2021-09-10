package com.google.firebase.crashlytics;

import com.google.firebase.c;
import com.google.firebase.components.d;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import com.google.firebase.installations.g;
import java.util.Arrays;
import java.util.List;

public class CrashlyticsRegistrar implements i {
    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a = d.a(FirebaseCrashlytics.class);
        a.b(q.h(c.class));
        a.b(q.h(g.class));
        a.b(q.f(vy.class));
        a.b(q.f(zy.class));
        a.e(b.b(this));
        a.d();
        return Arrays.asList(a.c(), x50.a("fire-cls", "17.4.0"));
    }
}
