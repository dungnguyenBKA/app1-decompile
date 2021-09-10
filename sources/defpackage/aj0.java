package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: aj0  reason: default package */
public final class aj0 {
    long a = 0;
    long b;
    final int c;
    final vi0 d;
    private final Deque<ch0> e;
    private boolean f;
    private final b g;
    final a h;
    final c i;
    final c j;
    qi0 k;

    /* access modifiers changed from: package-private */
    /* renamed from: aj0$a */
    public final class a implements qk0 {
        private final xj0 b = new xj0();
        boolean c;
        boolean d;

        a() {
        }

        private void j(boolean z) {
            aj0 aj0;
            long min;
            aj0 aj02;
            synchronized (aj0.this) {
                aj0.this.j.j();
                while (true) {
                    try {
                        aj0 = aj0.this;
                        if (aj0.b > 0 || this.d || this.c || aj0.k != null) {
                            aj0.j.o();
                            aj0.this.c();
                            min = Math.min(aj0.this.b, this.b.size());
                            aj02 = aj0.this;
                            aj02.b -= min;
                        } else {
                            aj0.o();
                        }
                    } finally {
                        aj0.this.j.o();
                    }
                }
                aj0.j.o();
                aj0.this.c();
                min = Math.min(aj0.this.b, this.b.size());
                aj02 = aj0.this;
                aj02.b -= min;
            }
            aj02.j.j();
            try {
                aj0 aj03 = aj0.this;
                aj03.d.D0(aj03.c, z && min == this.b.size(), this.b, min);
            } finally {
                aj0.this.j.o();
            }
        }

        @Override // defpackage.qk0
        public void H(xj0 xj0, long j) {
            this.b.H(xj0, j);
            while (this.b.size() >= PlaybackStateCompat.ACTION_PREPARE) {
                j(false);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
            if (r8.b.size() <= 0) goto L_0x002d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0027, code lost:
            if (r8.b.size() <= 0) goto L_0x003a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0029, code lost:
            j(true);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x002d, code lost:
            r0 = r8.e;
            r0.d.D0(r0.c, true, null, 0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x003a, code lost:
            r2 = r8.e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x003c, code lost:
            monitor-enter(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
            r8.c = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x003f, code lost:
            monitor-exit(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0040, code lost:
            r8.e.d.w.flush();
            r8.e.b();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x004e, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0011, code lost:
            if (r8.e.h.d != false) goto L_0x003a;
         */
        @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void close() {
            /*
                r8 = this;
                aj0 r0 = defpackage.aj0.this
                monitor-enter(r0)
                boolean r1 = r8.c     // Catch:{ all -> 0x0052 }
                if (r1 == 0) goto L_0x0009
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                return
            L_0x0009:
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                aj0 r0 = defpackage.aj0.this
                aj0$a r0 = r0.h
                boolean r0 = r0.d
                r1 = 1
                if (r0 != 0) goto L_0x003a
                xj0 r0 = r8.b
                long r2 = r0.size()
                r4 = 0
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 <= 0) goto L_0x002d
            L_0x001f:
                xj0 r0 = r8.b
                long r2 = r0.size()
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 <= 0) goto L_0x003a
                r8.j(r1)
                goto L_0x001f
            L_0x002d:
                aj0 r0 = defpackage.aj0.this
                vi0 r2 = r0.d
                int r3 = r0.c
                r4 = 1
                r5 = 0
                r6 = 0
                r2.D0(r3, r4, r5, r6)
            L_0x003a:
                aj0 r2 = defpackage.aj0.this
                monitor-enter(r2)
                r8.c = r1     // Catch:{ all -> 0x004f }
                monitor-exit(r2)     // Catch:{ all -> 0x004f }
                aj0 r0 = defpackage.aj0.this
                vi0 r0 = r0.d
                bj0 r0 = r0.w
                r0.flush()
                aj0 r0 = defpackage.aj0.this
                r0.b()
                return
            L_0x004f:
                r0 = move-exception
                monitor-exit(r2)
                throw r0
            L_0x0052:
                r1 = move-exception
                monitor-exit(r0)
                goto L_0x0056
            L_0x0055:
                throw r1
            L_0x0056:
                goto L_0x0055
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.aj0.a.close():void");
        }

        @Override // defpackage.qk0, java.io.Flushable
        public void flush() {
            synchronized (aj0.this) {
                aj0.this.c();
            }
            while (this.b.size() > 0) {
                j(false);
                aj0.this.d.flush();
            }
        }

        @Override // defpackage.qk0
        public sk0 timeout() {
            return aj0.this.j;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: aj0$b */
    public final class b implements rk0 {
        private final xj0 b = new xj0();
        private final xj0 c = new xj0();
        private final long d;
        boolean e;
        boolean f;

        b(long j) {
            this.d = j;
        }

        private void o(long j) {
            aj0.this.d.C0(j);
        }

        @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long size;
            synchronized (aj0.this) {
                this.e = true;
                size = this.c.size();
                this.c.j();
                if (!aj0.this.e.isEmpty()) {
                    Objects.requireNonNull(aj0.this);
                }
                aj0.this.notifyAll();
            }
            if (size > 0) {
                o(size);
            }
            aj0.this.b();
        }

        /* access modifiers changed from: package-private */
        public void j(zj0 zj0, long j) {
            boolean z;
            boolean z2;
            boolean z3;
            long j2;
            while (j > 0) {
                synchronized (aj0.this) {
                    z = this.f;
                    z2 = true;
                    z3 = this.c.size() + j > this.d;
                }
                if (z3) {
                    zj0.skip(j);
                    aj0.this.f(qi0.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    zj0.skip(j);
                    return;
                } else {
                    long read = zj0.read(this.b, j);
                    if (read != -1) {
                        j -= read;
                        synchronized (aj0.this) {
                            if (this.e) {
                                j2 = this.b.size();
                                this.b.j();
                            } else {
                                if (this.c.size() != 0) {
                                    z2 = false;
                                }
                                this.c.I(this.b);
                                if (z2) {
                                    aj0.this.notifyAll();
                                }
                                j2 = 0;
                            }
                        }
                        if (j2 > 0) {
                            o(j2);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        @Override // defpackage.rk0
        public long read(xj0 xj0, long j) {
            qi0 qi0;
            long read;
            if (j >= 0) {
                while (true) {
                    qi0 = null;
                    synchronized (aj0.this) {
                        aj0.this.i.j();
                        try {
                            aj0 aj0 = aj0.this;
                            qi0 qi02 = aj0.k;
                            if (qi02 != null) {
                                qi0 = qi02;
                            }
                            if (!this.e) {
                                if (!aj0.e.isEmpty()) {
                                    Objects.requireNonNull(aj0.this);
                                }
                                if (this.c.size() > 0) {
                                    xj0 xj02 = this.c;
                                    read = xj02.read(xj0, Math.min(j, xj02.size()));
                                    aj0 aj02 = aj0.this;
                                    long j2 = aj02.a + read;
                                    aj02.a = j2;
                                    if (qi0 == null && j2 >= ((long) (aj02.d.t.d() / 2))) {
                                        aj0 aj03 = aj0.this;
                                        aj03.d.G0(aj03.c, aj03.a);
                                        aj0.this.a = 0;
                                    }
                                } else if (this.f || qi0 != null) {
                                    read = -1;
                                } else {
                                    aj0.this.o();
                                    aj0.this.i.o();
                                }
                            } else {
                                throw new IOException("stream closed");
                            }
                        } finally {
                            aj0.this.i.o();
                        }
                    }
                }
                if (read != -1) {
                    o(read);
                    return read;
                } else if (qi0 == null) {
                    return -1;
                } else {
                    throw new fj0(qi0);
                }
            } else {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
        }

        @Override // defpackage.rk0
        public sk0 timeout() {
            return aj0.this.i;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: aj0$c */
    public class c extends vj0 {
        c() {
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.vj0
        public IOException m(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.vj0
        public void n() {
            aj0.this.f(qi0.CANCEL);
            aj0.this.d.z0();
        }

        public void o() {
            if (l()) {
                throw m(null);
            }
        }
    }

    aj0(int i2, vi0 vi0, boolean z, boolean z2, @Nullable ch0 ch0) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.e = arrayDeque;
        this.i = new c();
        this.j = new c();
        this.k = null;
        Objects.requireNonNull(vi0, "connection == null");
        this.c = i2;
        this.d = vi0;
        this.b = (long) vi0.u.d();
        b bVar = new b((long) vi0.t.d());
        this.g = bVar;
        a aVar = new a();
        this.h = aVar;
        bVar.f = z2;
        aVar.d = z;
        if (ch0 != null) {
            arrayDeque.add(ch0);
        }
        if (i() && ch0 != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        } else if (!i() && ch0 == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    private boolean e(qi0 qi0) {
        synchronized (this) {
            if (this.k != null) {
                return false;
            }
            if (this.g.f && this.h.d) {
                return false;
            }
            this.k = qi0;
            notifyAll();
            this.d.y0(this.c);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        boolean z;
        boolean j2;
        synchronized (this) {
            b bVar = this.g;
            if (!bVar.f && bVar.e) {
                a aVar = this.h;
                if (aVar.d || aVar.c) {
                    z = true;
                    j2 = j();
                }
            }
            z = false;
            j2 = j();
        }
        if (z) {
            d(qi0.CANCEL);
        } else if (!j2) {
            this.d.y0(this.c);
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        a aVar = this.h;
        if (aVar.c) {
            throw new IOException("stream closed");
        } else if (aVar.d) {
            throw new IOException("stream finished");
        } else if (this.k != null) {
            throw new fj0(this.k);
        }
    }

    public void d(qi0 qi0) {
        if (e(qi0)) {
            vi0 vi0 = this.d;
            vi0.w.k0(this.c, qi0);
        }
    }

    public void f(qi0 qi0) {
        if (e(qi0)) {
            this.d.F0(this.c, qi0);
        }
    }

    public qk0 g() {
        synchronized (this) {
            if (!this.f) {
                if (!i()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            }
        }
        return this.h;
    }

    public rk0 h() {
        return this.g;
    }

    public boolean i() {
        if (this.d.b == ((this.c & 1) == 1)) {
            return true;
        }
        return false;
    }

    public synchronized boolean j() {
        if (this.k != null) {
            return false;
        }
        b bVar = this.g;
        if (bVar.f || bVar.e) {
            a aVar = this.h;
            if ((aVar.d || aVar.c) && this.f) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public void k(zj0 zj0, int i2) {
        this.g.j(zj0, (long) i2);
    }

    /* access modifiers changed from: package-private */
    public void l() {
        boolean j2;
        synchronized (this) {
            this.g.f = true;
            j2 = j();
            notifyAll();
        }
        if (!j2) {
            this.d.y0(this.c);
        }
    }

    /* access modifiers changed from: package-private */
    public void m(List<ri0> list) {
        boolean j2;
        synchronized (this) {
            this.f = true;
            this.e.add(rh0.A(list));
            j2 = j();
            notifyAll();
        }
        if (!j2) {
            this.d.y0(this.c);
        }
    }

    /* JADX INFO: finally extract failed */
    public synchronized ch0 n() {
        this.i.j();
        while (this.e.isEmpty() && this.k == null) {
            try {
                o();
            } catch (Throwable th) {
                this.i.o();
                throw th;
            }
        }
        this.i.o();
        if (!this.e.isEmpty()) {
        } else {
            throw new fj0(this.k);
        }
        return this.e.removeFirst();
    }

    /* access modifiers changed from: package-private */
    public void o() {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
