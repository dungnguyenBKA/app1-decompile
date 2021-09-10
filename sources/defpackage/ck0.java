package defpackage;

/* renamed from: ck0  reason: default package */
public abstract class ck0 implements qk0 {
    private final qk0 b;

    public ck0(qk0 qk0) {
        if (qk0 != null) {
            this.b = qk0;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // defpackage.qk0
    public void H(xj0 xj0, long j) {
        this.b.H(xj0, j);
    }

    @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // defpackage.qk0, java.io.Flushable
    public void flush() {
        this.b.flush();
    }

    @Override // defpackage.qk0
    public sk0 timeout() {
        return this.b.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.b.toString() + ")";
    }
}
