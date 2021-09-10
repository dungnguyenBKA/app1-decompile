package defpackage;

/* renamed from: dk0  reason: default package */
public abstract class dk0 implements rk0 {
    private final rk0 delegate;

    public dk0(rk0 rk0) {
        if (rk0 != null) {
            this.delegate = rk0;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public final rk0 delegate() {
        return this.delegate;
    }

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        return this.delegate.read(xj0, j);
    }

    @Override // defpackage.rk0
    public sk0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
