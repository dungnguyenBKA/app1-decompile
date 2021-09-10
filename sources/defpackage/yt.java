package defpackage;

import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* renamed from: yt  reason: default package */
public final class yt implements qt<xt> {
    private final Provider<Executor> a;
    private final Provider<e> b;
    private final Provider<s> c;
    private final Provider<eu> d;
    private final Provider<lv> e;

    public yt(Provider<Executor> provider, Provider<e> provider2, Provider<s> provider3, Provider<eu> provider4, Provider<lv> provider5) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new xt(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
