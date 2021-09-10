package defpackage;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* renamed from: sh0  reason: default package */
class sh0 implements rk0 {
    boolean b;
    final /* synthetic */ zj0 c;
    final /* synthetic */ uh0 d;
    final /* synthetic */ yj0 e;

    sh0(th0 th0, zj0 zj0, uh0 uh0, yj0 yj0) {
        this.c = zj0;
        this.d = uh0;
        this.e = yj0;
    }

    @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.b && !rh0.m(this, 100, TimeUnit.MILLISECONDS)) {
            this.b = true;
            this.d.abort();
        }
        this.c.close();
    }

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        try {
            long read = this.c.read(xj0, j);
            if (read == -1) {
                if (!this.b) {
                    this.b = true;
                    this.e.close();
                }
                return -1;
            }
            xj0.S(this.e.a(), xj0.size() - read, read);
            this.e.x();
            return read;
        } catch (IOException e2) {
            if (!this.b) {
                this.b = true;
                this.d.abort();
            }
            throw e2;
        }
    }

    @Override // defpackage.rk0
    public sk0 timeout() {
        return this.c.timeout();
    }
}
