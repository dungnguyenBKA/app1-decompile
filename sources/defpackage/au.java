package defpackage;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import javax.inject.Provider;

/* renamed from: au  reason: default package */
public final class au implements qt<g> {
    private final Provider<mv> a;

    public au(Provider<mv> provider) {
        this.a = provider;
    }

    @Override // javax.inject.Provider
    public Object get() {
        g.a aVar = new g.a();
        yr yrVar = yr.DEFAULT;
        g.b.a a2 = g.b.a();
        a2.b(30000);
        a2.d(86400000);
        aVar.a(yrVar, a2.a());
        yr yrVar2 = yr.HIGHEST;
        g.b.a a3 = g.b.a();
        a3.b(1000);
        a3.d(86400000);
        aVar.a(yrVar2, a3.a());
        yr yrVar3 = yr.VERY_LOW;
        g.b.a a4 = g.b.a();
        a4.b(86400000);
        a4.d(86400000);
        a4.c(Collections.unmodifiableSet(new HashSet(Arrays.asList(g.c.NETWORK_UNMETERED, g.c.DEVICE_IDLE))));
        aVar.a(yrVar3, a4.a());
        aVar.c(this.a.get());
        return aVar.b();
    }
}
