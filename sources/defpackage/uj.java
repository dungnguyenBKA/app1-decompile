package defpackage;

import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: uj  reason: default package */
public class uj {
    private static final fe<?, ?, ?> c = new fe<>(Object.class, Object.class, Object.class, Collections.singletonList(new ud(Object.class, Object.class, Object.class, Collections.emptyList(), new xi(), null)), null);
    private final x<gl, fe<?, ?, ?>> a = new x<>();
    private final AtomicReference<gl> b = new AtomicReference<>();

    public <Data, TResource, Transcode> fe<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        fe<Data, TResource, Transcode> feVar;
        gl andSet = this.b.getAndSet(null);
        if (andSet == null) {
            andSet = new gl();
        }
        andSet.a(cls, cls2, cls3);
        synchronized (this.a) {
            feVar = (fe<Data, TResource, Transcode>) this.a.getOrDefault(andSet, null);
        }
        this.b.set(andSet);
        return feVar;
    }

    public boolean b(fe<?, ?, ?> feVar) {
        return c.equals(feVar);
    }

    public void c(Class<?> cls, Class<?> cls2, Class<?> cls3, fe<?, ?, ?> feVar) {
        synchronized (this.a) {
            x<gl, fe<?, ?, ?>> xVar = this.a;
            gl glVar = new gl(cls, cls2, cls3);
            if (feVar == null) {
                feVar = c;
            }
            xVar.put(glVar, feVar);
        }
    }
}
