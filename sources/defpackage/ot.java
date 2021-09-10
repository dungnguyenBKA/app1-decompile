package defpackage;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.m;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.q;
import javax.inject.Provider;

/* renamed from: ot  reason: default package */
public final class ot implements qt<mt> {
    private final Provider<mv> a;
    private final Provider<mv> b;
    private final Provider<zt> c;
    private final Provider<m> d;
    private final Provider<q> e;

    public ot(Provider<mv> provider, Provider<mv> provider2, Provider<zt> provider3, Provider<m> provider4, Provider<q> provider5) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new mt(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
