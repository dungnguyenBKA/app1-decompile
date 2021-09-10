package defpackage;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: vj  reason: default package */
public class vj {
    private final AtomicReference<gl> a = new AtomicReference<>();
    private final x<gl, List<Class<?>>> b = new x<>();

    public List<Class<?>> a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        List<Class<?>> orDefault;
        gl andSet = this.a.getAndSet(null);
        if (andSet == null) {
            andSet = new gl(cls, cls2, cls3);
        } else {
            andSet.a(cls, cls2, cls3);
        }
        synchronized (this.b) {
            orDefault = this.b.getOrDefault(andSet, null);
        }
        this.a.set(andSet);
        return orDefault;
    }

    public void b(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.b) {
            this.b.put(new gl(cls, cls2, cls3), list);
        }
    }
}
