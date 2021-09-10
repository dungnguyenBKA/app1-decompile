package defpackage;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: j6  reason: default package */
public abstract class j6<V> implements uy<V> {
    static final boolean e = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger f = Logger.getLogger(j6.class.getName());
    static final b g;
    private static final Object h = new Object();
    volatile Object b;
    volatile e c;
    volatile i d;

    /* access modifiers changed from: private */
    /* renamed from: j6$b */
    public static abstract class b {
        b(a aVar) {
        }

        /* access modifiers changed from: package-private */
        public abstract boolean a(j6<?> j6Var, e eVar, e eVar2);

        /* access modifiers changed from: package-private */
        public abstract boolean b(j6<?> j6Var, Object obj, Object obj2);

        /* access modifiers changed from: package-private */
        public abstract boolean c(j6<?> j6Var, i iVar, i iVar2);

        /* access modifiers changed from: package-private */
        public abstract void d(i iVar, i iVar2);

        /* access modifiers changed from: package-private */
        public abstract void e(i iVar, Thread thread);
    }

    /* access modifiers changed from: private */
    /* renamed from: j6$c */
    public static final class c {
        static final c c;
        static final c d;
        final boolean a;
        final Throwable b;

        static {
            if (j6.e) {
                d = null;
                c = null;
                return;
            }
            d = new c(false, null);
            c = new c(true, null);
        }

        c(boolean z, Throwable th) {
            this.a = z;
            this.b = th;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: j6$d */
    public static final class d {
        static final d b = new d(new a("Failure occurred while trying to finish a future."));
        final Throwable a;

        /* renamed from: j6$d$a */
        static class a extends Throwable {
            a(String str) {
                super(str);
            }

            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        d(Throwable th) {
            boolean z = j6.e;
            Objects.requireNonNull(th);
            this.a = th;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: j6$e */
    public static final class e {
        static final e d = new e(null, null);
        final Runnable a;
        final Executor b;
        e c;

        e(Runnable runnable, Executor executor) {
            this.a = runnable;
            this.b = executor;
        }
    }

    /* renamed from: j6$f */
    private static final class f extends b {
        final AtomicReferenceFieldUpdater<i, Thread> a;
        final AtomicReferenceFieldUpdater<i, i> b;
        final AtomicReferenceFieldUpdater<j6, i> c;
        final AtomicReferenceFieldUpdater<j6, e> d;
        final AtomicReferenceFieldUpdater<j6, Object> e;

        f(AtomicReferenceFieldUpdater<i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<i, i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<j6, i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<j6, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<j6, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public boolean a(j6<?> j6Var, e eVar, e eVar2) {
            return this.d.compareAndSet(j6Var, eVar, eVar2);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public boolean b(j6<?> j6Var, Object obj, Object obj2) {
            return this.e.compareAndSet(j6Var, obj, obj2);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public boolean c(j6<?> j6Var, i iVar, i iVar2) {
            return this.c.compareAndSet(j6Var, iVar, iVar2);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public void d(i iVar, i iVar2) {
            this.b.lazySet(iVar, iVar2);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public void e(i iVar, Thread thread) {
            this.a.lazySet(iVar, thread);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: j6$g */
    public static final class g<V> implements Runnable {
        final j6<V> b;
        final uy<? extends V> c;

        g(j6<V> j6Var, uy<? extends V> uyVar) {
            this.b = j6Var;
            this.c = uyVar;
        }

        public void run() {
            if (this.b.b == this) {
                if (j6.g.b(this.b, this, j6.e(this.c))) {
                    j6.b(this.b);
                }
            }
        }
    }

    /* renamed from: j6$h */
    private static final class h extends b {
        h() {
            super(null);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public boolean a(j6<?> j6Var, e eVar, e eVar2) {
            synchronized (j6Var) {
                if (j6Var.c != eVar) {
                    return false;
                }
                j6Var.c = eVar2;
                return true;
            }
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public boolean b(j6<?> j6Var, Object obj, Object obj2) {
            synchronized (j6Var) {
                if (j6Var.b != obj) {
                    return false;
                }
                j6Var.b = obj2;
                return true;
            }
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public boolean c(j6<?> j6Var, i iVar, i iVar2) {
            synchronized (j6Var) {
                if (j6Var.d != iVar) {
                    return false;
                }
                j6Var.d = iVar2;
                return true;
            }
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public void d(i iVar, i iVar2) {
            iVar.b = iVar2;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.j6.b
        public void e(i iVar, Thread thread) {
            iVar.a = thread;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: j6$i */
    public static final class i {
        static final i c = new i(false);
        volatile Thread a;
        volatile i b;

        i(boolean z) {
        }

        i() {
            j6.g.e(this, Thread.currentThread());
        }
    }

    static {
        b bVar;
        Throwable th;
        try {
            bVar = new f(AtomicReferenceFieldUpdater.newUpdater(i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(i.class, i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(j6.class, i.class, "d"), AtomicReferenceFieldUpdater.newUpdater(j6.class, e.class, "c"), AtomicReferenceFieldUpdater.newUpdater(j6.class, Object.class, "b"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            bVar = new h();
        }
        g = bVar;
        if (th != null) {
            f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    protected j6() {
    }

    private void a(StringBuilder sb) {
        String str;
        try {
            Object f2 = f(this);
            sb.append("SUCCESS, result=[");
            if (f2 == this) {
                str = "this future";
            } else {
                str = String.valueOf(f2);
            }
            sb.append(str);
            sb.append("]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e3) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e3.getClass());
            sb.append(" thrown from get()]");
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:23:0x0002 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:25:0x0002 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [j6<?>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [j6] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v7, types: [j6<V>, j6] */
    /* JADX WARN: Type inference failed for: r4v2, types: [j6$b] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void b(defpackage.j6<?> r5) {
        /*
            r0 = 0
            r1 = r0
        L_0x0002:
            j6$i r2 = r5.d
            j6$b r3 = defpackage.j6.g
            j6$i r4 = defpackage.j6.i.c
            boolean r3 = r3.c(r5, r2, r4)
            if (r3 == 0) goto L_0x0002
        L_0x000e:
            if (r2 == 0) goto L_0x001c
            java.lang.Thread r3 = r2.a
            if (r3 == 0) goto L_0x0019
            r2.a = r0
            java.util.concurrent.locks.LockSupport.unpark(r3)
        L_0x0019:
            j6$i r2 = r2.b
            goto L_0x000e
        L_0x001c:
            j6$e r2 = r5.c
            j6$b r3 = defpackage.j6.g
            j6$e r4 = defpackage.j6.e.d
            boolean r3 = r3.a(r5, r2, r4)
            if (r3 == 0) goto L_0x001c
        L_0x0028:
            r5 = r1
            r1 = r2
            if (r1 == 0) goto L_0x0031
            j6$e r2 = r1.c
            r1.c = r5
            goto L_0x0028
        L_0x0031:
            if (r5 == 0) goto L_0x0059
            j6$e r1 = r5.c
            java.lang.Runnable r2 = r5.a
            boolean r3 = r2 instanceof defpackage.j6.g
            if (r3 == 0) goto L_0x0052
            j6$g r2 = (defpackage.j6.g) r2
            j6<V> r5 = r2.b
            java.lang.Object r3 = r5.b
            if (r3 != r2) goto L_0x0057
            uy<? extends V> r3 = r2.c
            java.lang.Object r3 = e(r3)
            j6$b r4 = defpackage.j6.g
            boolean r2 = r4.b(r5, r2, r3)
            if (r2 == 0) goto L_0x0057
            goto L_0x0002
        L_0x0052:
            java.util.concurrent.Executor r5 = r5.b
            c(r2, r5)
        L_0x0057:
            r5 = r1
            goto L_0x0031
        L_0x0059:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j6.b(j6):void");
    }

    private static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = f;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private V d(Object obj) {
        if (obj instanceof c) {
            Throwable th = ((c) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof d) {
            throw new ExecutionException(((d) obj).a);
        } else if (obj == h) {
            return null;
        } else {
            return obj;
        }
    }

    static Object e(uy<?> uyVar) {
        if (uyVar instanceof j6) {
            Object obj = ((j6) uyVar).b;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (cVar.a) {
                return cVar.b != null ? new c(false, cVar.b) : c.d;
            }
            return obj;
        }
        boolean z = ((j6) uyVar).b instanceof c;
        if ((!e) && z) {
            return c.d;
        }
        try {
            Object f2 = f(uyVar);
            return f2 == null ? h : f2;
        } catch (ExecutionException e2) {
            return new d(e2.getCause());
        } catch (CancellationException e3) {
            if (z) {
                return new c(false, e3);
            }
            return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + uyVar, e3));
        } catch (Throwable th) {
            return new d(th);
        }
    }

    private static <V> V f(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = (V) ((j6) future).get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    private void h(i iVar) {
        iVar.a = null;
        while (true) {
            i iVar2 = this.d;
            if (iVar2 != i.c) {
                i iVar3 = null;
                while (iVar2 != null) {
                    i iVar4 = iVar2.b;
                    if (iVar2.a != null) {
                        iVar3 = iVar2;
                    } else if (iVar3 != null) {
                        iVar3.b = iVar4;
                        if (iVar3.a == null) {
                        }
                    } else if (!g.c(this, iVar2, iVar4)) {
                    }
                    iVar2 = iVar4;
                }
                return;
            }
            return;
        }
    }

    public final void addListener(Runnable runnable, Executor executor) {
        Objects.requireNonNull(executor);
        e eVar = this.c;
        if (eVar != e.d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.c = eVar;
                if (!g.a(this, eVar, eVar2)) {
                    eVar = this.c;
                } else {
                    return;
                }
            } while (eVar != e.d);
        }
        c(runnable, executor);
    }

    public final boolean cancel(boolean z) {
        Object obj = this.b;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = e ? new c(z, new CancellationException("Future.cancel() was called.")) : z ? c.c : c.d;
        boolean z2 = false;
        j6<V> j6Var = this;
        while (true) {
            if (g.b(j6Var, obj, cVar)) {
                b(j6Var);
                if (!(obj instanceof g)) {
                    return true;
                }
                uy<? extends V> uyVar = ((g) obj).c;
                if (uyVar instanceof j6) {
                    j6Var = (j6) uyVar;
                    obj = j6Var.b;
                    if (!(obj == null) && !(obj instanceof g)) {
                        return true;
                    }
                    z2 = true;
                } else {
                    ((j6) uyVar).cancel(z);
                    return true;
                }
            } else {
                obj = j6Var.b;
                if (!(obj instanceof g)) {
                    return z2;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public String g() {
        String str;
        Object obj = this.b;
        if (obj instanceof g) {
            StringBuilder q = ic.q("setFuture=[");
            uy<? extends V> uyVar = ((g) obj).c;
            if (uyVar == this) {
                str = "this future";
            } else {
                str = String.valueOf(uyVar);
            }
            return ic.l(q, str, "]");
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            StringBuilder q2 = ic.q("remaining delay=[");
            q2.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
            q2.append(" ms]");
            return q2.toString();
        }
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.b;
            if ((obj != null) && (!(obj instanceof g))) {
                return d(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0;
            if (nanos >= 1000) {
                i iVar = this.d;
                if (iVar != i.c) {
                    i iVar2 = new i();
                    do {
                        b bVar = g;
                        bVar.d(iVar2, iVar);
                        if (bVar.c(this, iVar, iVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.b;
                                    if ((obj2 != null) && (!(obj2 instanceof g))) {
                                        return d(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    h(iVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            h(iVar2);
                        } else {
                            iVar = this.d;
                        }
                    } while (iVar != i.c);
                }
                return d(this.b);
            }
            while (nanos > 0) {
                Object obj3 = this.b;
                if ((obj3 != null) && (!(obj3 instanceof g))) {
                    return d(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String j6Var = toString();
            String timeUnit2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = timeUnit2.toLowerCase(locale);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String i2 = ic.i(str, " (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str2 = i2 + convert + " " + lowerCase;
                    if (z) {
                        str2 = ic.i(str2, ",");
                    }
                    i2 = ic.i(str2, " ");
                }
                if (z) {
                    i2 = i2 + nanos2 + " nanoseconds ";
                }
                str = ic.i(i2, "delay)");
            }
            if (isDone()) {
                throw new TimeoutException(ic.i(str, " but future completed as timeout expired"));
            }
            throw new TimeoutException(ic.j(str, " for ", j6Var));
        }
        throw new InterruptedException();
    }

    /* access modifiers changed from: protected */
    public boolean i(V v) {
        if (v == null) {
            v = (V) h;
        }
        if (!g.b(this, null, v)) {
            return false;
        }
        b(this);
        return true;
    }

    public final boolean isCancelled() {
        return this.b instanceof c;
    }

    public final boolean isDone() {
        Object obj = this.b;
        return (!(obj instanceof g)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.b instanceof c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = g();
            } catch (RuntimeException e2) {
                StringBuilder q = ic.q("Exception thrown from implementation: ");
                q.append(e2.getClass());
                str = q.toString();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if ((obj2 != null) && (!(obj2 instanceof g))) {
                return d(obj2);
            }
            i iVar = this.d;
            if (iVar != i.c) {
                i iVar2 = new i();
                do {
                    b bVar = g;
                    bVar.d(iVar2, iVar);
                    if (bVar.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                h(iVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return d(obj);
                    }
                    iVar = this.d;
                } while (iVar != i.c);
            }
            return d(this.b);
        }
        throw new InterruptedException();
    }
}
