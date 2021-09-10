package defpackage;

import java.lang.reflect.Method;

/* renamed from: z70  reason: default package */
class z70 extends d80 {
    final /* synthetic */ Method a;
    final /* synthetic */ Object b;

    z70(Method method, Object obj) {
        this.a = method;
        this.b = obj;
    }

    @Override // defpackage.d80
    public <T> T b(Class<T> cls) {
        d80.a(cls);
        return (T) this.a.invoke(this.b, cls);
    }
}
