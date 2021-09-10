package defpackage;

import defpackage.eh0;
import org.apache.http.client.methods.HttpGet;

/* renamed from: xh0  reason: default package */
public final class xh0 implements eh0 {
    public final gh0 a;

    public xh0(gh0 gh0) {
        this.a = gh0;
    }

    @Override // defpackage.eh0
    public lh0 intercept(eh0.a aVar) {
        ji0 ji0 = (ji0) aVar;
        jh0 i = ji0.i();
        di0 j = ji0.j();
        return ji0.g(i, j, j.h(this.a, aVar, !i.f().equals(HttpGet.METHOD_NAME)), j.d());
    }
}
