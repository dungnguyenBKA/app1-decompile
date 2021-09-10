package defpackage;

import java.lang.reflect.Method;

/* renamed from: a80  reason: default package */
class a80 extends d80 {
    final /* synthetic */ Method a;
    final /* synthetic */ int b;

    a80(Method method, int i) {
        this.a = method;
        this.b = i;
    }

    @Override // defpackage.d80
    public <T> T b(Class<T> cls) {
        d80.a(cls);
        return (T) this.a.invoke(null, cls, Integer.valueOf(this.b));
    }
}
