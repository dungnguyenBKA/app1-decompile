package defpackage;

import defpackage.dj0;
import defpackage.zi0;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: vi0  reason: default package */
public final class vi0 implements Closeable {
    private static final ExecutorService z = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), rh0.z("OkHttp Http2Connection", true));
    final boolean b;
    final j c;
    final Map<Integer, aj0> d = new LinkedHashMap();
    final String e;
    int f;
    int g;
    private boolean h;
    private final ScheduledExecutorService i;
    private final ExecutorService j;
    final dj0 k;
    private long l = 0;
    private long m = 0;
    private long n = 0;
    private long o = 0;
    private long p = 0;
    private long q = 0;
    long r = 0;
    long s;
    ej0 t = new ej0();
    final ej0 u;
    final Socket v;
    final bj0 w;
    final l x;
    final Set<Integer> y;

    /* access modifiers changed from: package-private */
    /* renamed from: vi0$a */
    public class a extends qh0 {
        final /* synthetic */ int c;
        final /* synthetic */ qi0 d;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i, qi0 qi0) {
            super(str, objArr);
            this.c = i;
            this.d = qi0;
        }

        @Override // defpackage.qh0
        public void a() {
            try {
                vi0 vi0 = vi0.this;
                vi0.w.k0(this.c, this.d);
            } catch (IOException unused) {
                vi0.j(vi0.this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: vi0$b */
    public class b extends qh0 {
        final /* synthetic */ int c;
        final /* synthetic */ long d;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.c = i;
            this.d = j;
        }

        @Override // defpackage.qh0
        public void a() {
            try {
                vi0.this.w.n0(this.c, this.d);
            } catch (IOException unused) {
                vi0.j(vi0.this);
            }
        }
    }

    /* renamed from: vi0$c */
    class c extends qh0 {
        c(String str, Object... objArr) {
            super(str, objArr);
        }

        @Override // defpackage.qh0
        public void a() {
            vi0.this.E0(false, 2, 0);
        }
    }

    /* renamed from: vi0$d */
    class d extends qh0 {
        final /* synthetic */ int c;
        final /* synthetic */ List d;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.c = i;
            this.d = list;
        }

        @Override // defpackage.qh0
        public void a() {
            Objects.requireNonNull(vi0.this.k);
            try {
                vi0.this.w.k0(this.c, qi0.CANCEL);
                synchronized (vi0.this) {
                    vi0.this.y.remove(Integer.valueOf(this.c));
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: vi0$e */
    class e extends qh0 {
        final /* synthetic */ int c;
        final /* synthetic */ List d;
        final /* synthetic */ boolean e;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.c = i;
            this.d = list;
            this.e = z;
        }

        @Override // defpackage.qh0
        public void a() {
            Objects.requireNonNull(vi0.this.k);
            try {
                vi0.this.w.k0(this.c, qi0.CANCEL);
                synchronized (vi0.this) {
                    vi0.this.y.remove(Integer.valueOf(this.c));
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: vi0$f */
    class f extends qh0 {
        final /* synthetic */ int c;
        final /* synthetic */ xj0 d;
        final /* synthetic */ int e;
        final /* synthetic */ boolean f;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i, xj0 xj0, int i2, boolean z) {
            super(str, objArr);
            this.c = i;
            this.d = xj0;
            this.e = i2;
            this.f = z;
        }

        @Override // defpackage.qh0
        public void a() {
            try {
                dj0 dj0 = vi0.this.k;
                xj0 xj0 = this.d;
                int i = this.e;
                Objects.requireNonNull((dj0.a) dj0);
                xj0.skip((long) i);
                vi0.this.w.k0(this.c, qi0.CANCEL);
                synchronized (vi0.this) {
                    vi0.this.y.remove(Integer.valueOf(this.c));
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: vi0$g */
    class g extends qh0 {
        final /* synthetic */ int c;
        final /* synthetic */ qi0 d;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        g(String str, Object[] objArr, int i, qi0 qi0) {
            super(str, objArr);
            this.c = i;
            this.d = qi0;
        }

        @Override // defpackage.qh0
        public void a() {
            Objects.requireNonNull((dj0.a) vi0.this.k);
            synchronized (vi0.this) {
                vi0.this.y.remove(Integer.valueOf(this.c));
            }
        }
    }

    /* renamed from: vi0$h */
    public static class h {
        Socket a;
        String b;
        zj0 c;
        yj0 d;
        j e = j.a;
        int f;

        public h(boolean z) {
        }

        public vi0 a() {
            return new vi0(this);
        }

        public h b(j jVar) {
            this.e = jVar;
            return this;
        }

        public h c(int i) {
            this.f = i;
            return this;
        }

        public h d(Socket socket, String str, zj0 zj0, yj0 yj0) {
            this.a = socket;
            this.b = str;
            this.c = zj0;
            this.d = yj0;
            return this;
        }
    }

    /* renamed from: vi0$i */
    final class i extends qh0 {
        i() {
            super("OkHttp %s ping", vi0.this.e);
        }

        @Override // defpackage.qh0
        public void a() {
            boolean z;
            synchronized (vi0.this) {
                if (vi0.this.m < vi0.this.l) {
                    z = true;
                } else {
                    vi0.V(vi0.this);
                    z = false;
                }
            }
            if (z) {
                vi0.j(vi0.this);
            } else {
                vi0.this.E0(false, 1, 0);
            }
        }
    }

    /* renamed from: vi0$j */
    public static abstract class j {
        public static final j a = new a();

        /* renamed from: vi0$j$a */
        class a extends j {
            a() {
            }

            @Override // defpackage.vi0.j
            public void b(aj0 aj0) {
                aj0.d(qi0.REFUSED_STREAM);
            }
        }

        public void a(vi0 vi0) {
        }

        public abstract void b(aj0 aj0);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: vi0$k */
    public final class k extends qh0 {
        final boolean c;
        final int d;
        final int e;

        k(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", vi0.this.e, Integer.valueOf(i), Integer.valueOf(i2));
            this.c = z;
            this.d = i;
            this.e = i2;
        }

        @Override // defpackage.qh0
        public void a() {
            vi0.this.E0(this.c, this.d, this.e);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: vi0$l */
    public class l extends qh0 implements zi0.b {
        final zi0 c;

        l(zi0 zi0) {
            super("OkHttp %s", vi0.this.e);
            this.c = zi0;
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
            r0 = defpackage.qi0.PROTOCOL_ERROR;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0021, code lost:
            r4.d.n0(r0, r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x002c, code lost:
            r2 = th;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x001f */
        @Override // defpackage.qh0
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a() {
            /*
                r4 = this;
                qi0 r0 = defpackage.qi0.INTERNAL_ERROR
                zi0 r1 = r4.c     // Catch:{ IOException -> 0x001e, all -> 0x001b }
                r1.L(r4)     // Catch:{ IOException -> 0x001e, all -> 0x001b }
            L_0x0007:
                zi0 r1 = r4.c     // Catch:{ IOException -> 0x001e, all -> 0x001b }
                r2 = 0
                boolean r1 = r1.o(r2, r4)     // Catch:{ IOException -> 0x001e, all -> 0x001b }
                if (r1 == 0) goto L_0x0011
                goto L_0x0007
            L_0x0011:
                qi0 r1 = defpackage.qi0.NO_ERROR     // Catch:{ IOException -> 0x001e, all -> 0x001b }
                qi0 r0 = defpackage.qi0.CANCEL     // Catch:{ IOException -> 0x001f }
                vi0 r2 = defpackage.vi0.this     // Catch:{ IOException -> 0x0026 }
                r2.n0(r1, r0)     // Catch:{ IOException -> 0x0026 }
                goto L_0x0026
            L_0x001b:
                r2 = move-exception
                r1 = r0
                goto L_0x002d
            L_0x001e:
                r1 = r0
            L_0x001f:
                qi0 r0 = defpackage.qi0.PROTOCOL_ERROR     // Catch:{ all -> 0x002c }
                vi0 r1 = defpackage.vi0.this
                r1.n0(r0, r0)
            L_0x0026:
                zi0 r0 = r4.c
                defpackage.rh0.g(r0)
                return
            L_0x002c:
                r2 = move-exception
            L_0x002d:
                vi0 r3 = defpackage.vi0.this     // Catch:{ IOException -> 0x0032 }
                r3.n0(r1, r0)     // Catch:{ IOException -> 0x0032 }
            L_0x0032:
                zi0 r0 = r4.c
                defpackage.rh0.g(r0)
                goto L_0x0039
            L_0x0038:
                throw r2
            L_0x0039:
                goto L_0x0038
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.vi0.l.a():void");
        }
    }

    vi0(h hVar) {
        ej0 ej0 = new ej0();
        this.u = ej0;
        this.y = new LinkedHashSet();
        this.k = dj0.a;
        this.b = true;
        this.c = hVar.e;
        this.g = 1;
        this.g = 3;
        this.t.i(7, 16777216);
        String str = hVar.b;
        this.e = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, rh0.z(rh0.o("OkHttp %s Writer", str), false));
        this.i = scheduledThreadPoolExecutor;
        if (hVar.f != 0) {
            i iVar = new i();
            long j2 = (long) hVar.f;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, j2, j2, TimeUnit.MILLISECONDS);
        }
        this.j = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), rh0.z(rh0.o("OkHttp %s Push Observer", str), true));
        ej0.i(7, 65535);
        ej0.i(5, 16384);
        this.s = (long) ej0.d();
        this.v = hVar.a;
        this.w = new bj0(hVar.d, true);
        this.x = new l(new zi0(hVar.c, true));
    }

    static /* synthetic */ long L(vi0 vi0) {
        long j2 = vi0.m;
        vi0.m = 1 + j2;
        return j2;
    }

    static /* synthetic */ long V(vi0 vi0) {
        long j2 = vi0.l;
        vi0.l = 1 + j2;
        return j2;
    }

    static void j(vi0 vi0) {
        Objects.requireNonNull(vi0);
        try {
            qi0 qi0 = qi0.PROTOCOL_ERROR;
            vi0.n0(qi0, qi0);
        } catch (IOException unused) {
        }
    }

    static /* synthetic */ long l0(vi0 vi0) {
        long j2 = vi0.o;
        vi0.o = 1 + j2;
        return j2;
    }

    static /* synthetic */ long m0(vi0 vi0) {
        long j2 = vi0.p;
        vi0.p = 1 + j2;
        return j2;
    }

    private synchronized void t0(qh0 qh0) {
        if (!this.h) {
            this.j.execute(qh0);
        }
    }

    public void A0(qi0 qi0) {
        synchronized (this.w) {
            synchronized (this) {
                if (!this.h) {
                    this.h = true;
                    this.w.V(this.f, qi0, rh0.a);
                }
            }
        }
    }

    public void B0() {
        this.w.o();
        this.w.l0(this.t);
        int d2 = this.t.d();
        if (d2 != 65535) {
            this.w.n0(0, (long) (d2 - 65535));
        }
        new Thread(this.x).start();
    }

    /* access modifiers changed from: package-private */
    public synchronized void C0(long j2) {
        long j3 = this.r + j2;
        this.r = j3;
        if (j3 >= ((long) (this.t.d() / 2))) {
            G0(0, this.r);
            this.r = 0;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.w.i0());
        r6 = (long) r3;
        r8.s -= r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void D0(int r9, boolean r10, defpackage.xj0 r11, long r12) {
        /*
        // Method dump skipped, instructions count: 104
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vi0.D0(int, boolean, xj0, long):void");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:0|1|2|3|5) */
    /* JADX WARNING: Code restructure failed: missing block: B:6:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:2:0x0006 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void E0(boolean r2, int r3, int r4) {
        /*
            r1 = this;
            bj0 r0 = r1.w     // Catch:{ IOException -> 0x0006 }
            r0.j0(r2, r3, r4)     // Catch:{ IOException -> 0x0006 }
            goto L_0x000b
        L_0x0006:
            qi0 r2 = defpackage.qi0.PROTOCOL_ERROR     // Catch:{ IOException -> 0x000b }
            r1.n0(r2, r2)     // Catch:{ IOException -> 0x000b }
        L_0x000b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vi0.E0(boolean, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public void F0(int i2, qi0 qi0) {
        try {
            this.i.execute(new a("OkHttp %s stream %d", new Object[]{this.e, Integer.valueOf(i2)}, i2, qi0));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* access modifiers changed from: package-private */
    public void G0(int i2, long j2) {
        try {
            this.i.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.e, Integer.valueOf(i2)}, i2, j2));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        n0(qi0.NO_ERROR, qi0.CANCEL);
    }

    public void flush() {
        this.w.flush();
    }

    /* access modifiers changed from: package-private */
    public void n0(qi0 qi0, qi0 qi02) {
        IOException e2;
        aj0[] aj0Arr = null;
        try {
            A0(qi0);
            e2 = null;
        } catch (IOException e3) {
            e2 = e3;
        }
        synchronized (this) {
            if (!this.d.isEmpty()) {
                aj0Arr = (aj0[]) this.d.values().toArray(new aj0[this.d.size()]);
                this.d.clear();
            }
        }
        if (aj0Arr != null) {
            for (aj0 aj0 : aj0Arr) {
                try {
                    aj0.d(qi02);
                } catch (IOException e4) {
                    if (e2 != null) {
                        e2 = e4;
                    }
                }
            }
        }
        try {
            this.w.close();
        } catch (IOException e5) {
            if (e2 == null) {
                e2 = e5;
            }
        }
        try {
            this.v.close();
        } catch (IOException e6) {
            e2 = e6;
        }
        this.i.shutdown();
        this.j.shutdown();
        if (e2 != null) {
            throw e2;
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized aj0 o0(int i2) {
        return this.d.get(Integer.valueOf(i2));
    }

    public synchronized boolean p0(long j2) {
        if (this.h) {
            return false;
        }
        if (this.o >= this.n || j2 < this.q) {
            return true;
        }
        return false;
    }

    public synchronized int q0() {
        return this.u.e(Integer.MAX_VALUE);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.aj0 r0(java.util.List<defpackage.ri0> r11, boolean r12) {
        /*
        // Method dump skipped, instructions count: 101
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vi0.r0(java.util.List, boolean):aj0");
    }

    /* access modifiers changed from: package-private */
    public void s0(int i2, zj0 zj0, int i3, boolean z2) {
        xj0 xj0 = new xj0();
        long j2 = (long) i3;
        zj0.c0(j2);
        zj0.read(xj0, j2);
        if (xj0.size() == j2) {
            t0(new f("OkHttp %s Push Data[%s]", new Object[]{this.e, Integer.valueOf(i2)}, i2, xj0, i3, z2));
            return;
        }
        throw new IOException(xj0.size() + " != " + i3);
    }

    /* access modifiers changed from: package-private */
    public void u0(int i2, List<ri0> list, boolean z2) {
        try {
            t0(new e("OkHttp %s Push Headers[%s]", new Object[]{this.e, Integer.valueOf(i2)}, i2, list, z2));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* access modifiers changed from: package-private */
    public void v0(int i2, List<ri0> list) {
        synchronized (this) {
            if (this.y.contains(Integer.valueOf(i2))) {
                F0(i2, qi0.PROTOCOL_ERROR);
                return;
            }
            this.y.add(Integer.valueOf(i2));
            try {
                t0(new d("OkHttp %s Push Request[%s]", new Object[]{this.e, Integer.valueOf(i2)}, i2, list));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void w0(int i2, qi0 qi0) {
        t0(new g("OkHttp %s Push Reset[%s]", new Object[]{this.e, Integer.valueOf(i2)}, i2, qi0));
    }

    /* access modifiers changed from: package-private */
    public boolean x0(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    /* access modifiers changed from: package-private */
    public synchronized aj0 y0(int i2) {
        aj0 remove;
        remove = this.d.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    /* access modifiers changed from: package-private */
    public void z0() {
        synchronized (this) {
            long j2 = this.o;
            long j3 = this.n;
            if (j2 >= j3) {
                this.n = j3 + 1;
                this.q = System.nanoTime() + 1000000000;
                try {
                    this.i.execute(new c("OkHttp %s ping", this.e));
                } catch (RejectedExecutionException unused) {
                }
            }
        }
    }
}
