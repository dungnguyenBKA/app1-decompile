package defpackage;

import java.lang.reflect.Method;

/* renamed from: b80  reason: default package */
class b80 extends d80 {
    final /* synthetic */ Method a;

    b80(Method method) {
        this.a = method;
    }

    @Override // defpackage.d80
    public <T> T b(Class<T> cls) {
        d80.a(cls);
        return (T) this.a.invoke(null, cls, Object.class);
    }
}
