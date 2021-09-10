package com.google.firebase.crashlytics;

import com.google.firebase.c;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import com.google.firebase.installations.g;
import java.util.Objects;

final /* synthetic */ class b implements h {
    private final CrashlyticsRegistrar a;

    private b(CrashlyticsRegistrar crashlyticsRegistrar) {
        this.a = crashlyticsRegistrar;
    }

    public static h b(CrashlyticsRegistrar crashlyticsRegistrar) {
        return new b(crashlyticsRegistrar);
    }

    @Override // com.google.firebase.components.h
    public Object a(e eVar) {
        Objects.requireNonNull(this.a);
        return FirebaseCrashlytics.a((c) eVar.a(c.class), (g) eVar.a(g.class), (zy) eVar.a(zy.class), (vy) eVar.a(vy.class));
    }
}
