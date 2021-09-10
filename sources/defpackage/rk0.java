package defpackage;

import java.io.Closeable;

/* renamed from: rk0  reason: default package */
public interface rk0 extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    long read(xj0 xj0, long j);

    sk0 timeout();
}
