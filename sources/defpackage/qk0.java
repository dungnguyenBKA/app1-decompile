package defpackage;

import java.io.Closeable;
import java.io.Flushable;

/* renamed from: qk0  reason: default package */
public interface qk0 extends Closeable, Flushable {
    void H(xj0 xj0, long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    @Override // java.io.Flushable
    void flush();

    sk0 timeout();
}
