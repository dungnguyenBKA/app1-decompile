package defpackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* renamed from: ik0  reason: default package */
public final class ik0 {
    static final Logger a = Logger.getLogger(ik0.class.getName());
    public static final /* synthetic */ int b = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: ik0$a */
    public class a implements qk0 {
        final /* synthetic */ sk0 b;
        final /* synthetic */ OutputStream c;

        a(sk0 sk0, OutputStream outputStream) {
            this.b = sk0;
            this.c = outputStream;
        }

        @Override // defpackage.qk0
        public void H(xj0 xj0, long j) {
            tk0.b(xj0.c, 0, j);
            while (j > 0) {
                this.b.f();
                nk0 nk0 = xj0.b;
                int min = (int) Math.min(j, (long) (nk0.c - nk0.b));
                this.c.write(nk0.a, nk0.b, min);
                int i = nk0.b + min;
                nk0.b = i;
                long j2 = (long) min;
                j -= j2;
                xj0.c -= j2;
                if (i == nk0.c) {
                    xj0.b = nk0.a();
                    ok0.a(nk0);
                }
            }
        }

        @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.c.close();
        }

        @Override // defpackage.qk0, java.io.Flushable
        public void flush() {
            this.c.flush();
        }

        @Override // defpackage.qk0
        public sk0 timeout() {
            return this.b;
        }

        public String toString() {
            StringBuilder q = ic.q("sink(");
            q.append(this.c);
            q.append(")");
            return q.toString();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ik0$b */
    public class b implements rk0 {
        final /* synthetic */ sk0 b;
        final /* synthetic */ InputStream c;

        b(sk0 sk0, InputStream inputStream) {
            this.b = sk0;
            this.c = inputStream;
        }

        @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.c.close();
        }

        @Override // defpackage.rk0
        public long read(xj0 xj0, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (j == 0) {
                return 0;
            } else {
                try {
                    this.b.f();
                    nk0 q0 = xj0.q0(1);
                    int read = this.c.read(q0.a, q0.c, (int) Math.min(j, (long) (8192 - q0.c)));
                    if (read == -1) {
                        return -1;
                    }
                    q0.c += read;
                    long j2 = (long) read;
                    xj0.c += j2;
                    return j2;
                } catch (AssertionError e) {
                    if (ik0.d(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                }
            }
        }

        @Override // defpackage.rk0
        public sk0 timeout() {
            return this.b;
        }

        public String toString() {
            StringBuilder q = ic.q("source(");
            q.append(this.c);
            q.append(")");
            return q.toString();
        }
    }

    private ik0() {
    }

    public static qk0 a(File file) {
        return f(new FileOutputStream(file, true), new sk0());
    }

    public static yj0 b(qk0 qk0) {
        return new lk0(qk0);
    }

    public static zj0 c(rk0 rk0) {
        return new mk0(rk0);
    }

    static boolean d(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static qk0 e(File file) {
        return f(new FileOutputStream(file), new sk0());
    }

    private static qk0 f(OutputStream outputStream, sk0 sk0) {
        if (outputStream != null) {
            return new a(sk0, outputStream);
        }
        throw new IllegalArgumentException("out == null");
    }

    public static qk0 g(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            jk0 jk0 = new jk0(socket);
            return new tj0(jk0, f(socket.getOutputStream(), jk0));
        } else {
            throw new IOException("socket's output stream == null");
        }
    }

    public static rk0 h(InputStream inputStream) {
        return i(inputStream, new sk0());
    }

    private static rk0 i(InputStream inputStream, sk0 sk0) {
        if (inputStream != null) {
            return new b(sk0, inputStream);
        }
        throw new IllegalArgumentException("in == null");
    }

    public static rk0 j(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            jk0 jk0 = new jk0(socket);
            return new uj0(jk0, i(socket.getInputStream(), jk0));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }
}
