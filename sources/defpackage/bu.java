package defpackage;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import javax.inject.Provider;

/* renamed from: bu  reason: default package */
public final class bu implements qt<s> {
    private final Provider<Context> a;
    private final Provider<eu> b;
    private final Provider<g> c;
    private final Provider<mv> d;

    public bu(Provider<Context> provider, Provider<eu> provider2, Provider<g> provider3, Provider<mv> provider4) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public Object get() {
        Context context = this.a.get();
        eu euVar = this.b.get();
        g gVar = this.c.get();
        mv mvVar = this.d.get();
        if (Build.VERSION.SDK_INT >= 21) {
            return new e(context, euVar, gVar);
        }
        return new a(context, euVar, mvVar, gVar);
    }
}
