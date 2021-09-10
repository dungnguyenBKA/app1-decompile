package com.google.android.gms.internal.ads;

import java.util.Locale;
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
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;

public class zzdyk<V> extends zzeao implements zzdzw<V> {
    private static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final Object NULL = new Object();
    private static final Logger zzhzc = Logger.getLogger(zzdyk.class.getName());
    private static final zzb zzhzd;
    @NullableDecl
    private volatile zze listeners;
    @NullableDecl
    private volatile Object value;
    @NullableDecl
    private volatile zzk waiters;

    /* access modifiers changed from: private */
    public static final class zza {
        static final zza zzhze;
        static final zza zzhzf;
        @NullableDecl
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (zzdyk.GENERATE_CANCELLATION_CAUSES) {
                zzhzf = null;
                zzhze = null;
                return;
            }
            zzhzf = new zza(false, null);
            zzhze = new zza(true, null);
        }

        zza(boolean z, @NullableDecl Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    /* access modifiers changed from: private */
    public static abstract class zzb {
        private zzb() {
        }

        /* access modifiers changed from: package-private */
        public abstract void zza(zzk zzk, zzk zzk2);

        /* access modifiers changed from: package-private */
        public abstract void zza(zzk zzk, Thread thread);

        /* access modifiers changed from: package-private */
        public abstract boolean zza(zzdyk<?> zzdyk, zze zze, zze zze2);

        /* access modifiers changed from: package-private */
        public abstract boolean zza(zzdyk<?> zzdyk, zzk zzk, zzk zzk2);

        /* access modifiers changed from: package-private */
        public abstract boolean zza(zzdyk<?> zzdyk, Object obj, Object obj2);
    }

    /* access modifiers changed from: private */
    public static final class zzc {
        static final zzc zzhzg = new zzc(new Throwable("Failure occurred while trying to finish a future.") {
            /* class com.google.android.gms.internal.ads.zzdyk.zzc.AnonymousClass1 */

            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable exception;

        zzc(Throwable th) {
            this.exception = (Throwable) zzdwl.checkNotNull(th);
        }
    }

    private static final class zzd extends zzb {
        final AtomicReferenceFieldUpdater<zzdyk, zze> listenersUpdater;
        final AtomicReferenceFieldUpdater<zzdyk, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<zzk, zzk> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<zzk, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<zzdyk, zzk> waitersUpdater;

        zzd(AtomicReferenceFieldUpdater<zzk, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<zzk, zzk> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzdyk, zzk> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzdyk, zze> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzdyk, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final void zza(zzk zzk, Thread thread) {
            this.waiterThreadUpdater.lazySet(zzk, thread);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final void zza(zzk zzk, zzk zzk2) {
            this.waiterNextUpdater.lazySet(zzk, zzk2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, zzk zzk, zzk zzk2) {
            return this.waitersUpdater.compareAndSet(zzdyk, zzk, zzk2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, zze zze, zze zze2) {
            return this.listenersUpdater.compareAndSet(zzdyk, zze, zze2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, Object obj, Object obj2) {
            return this.valueUpdater.compareAndSet(zzdyk, obj, obj2);
        }
    }

    /* access modifiers changed from: private */
    public static final class zze {
        static final zze zzhzh = new zze(null, null);
        final Executor executor;
        @NullableDecl
        zze next;
        final Runnable task;

        zze(Runnable runnable, Executor executor2) {
            this.task = runnable;
            this.executor = executor2;
        }
    }

    private static final class zzf extends zzb {
        private zzf() {
            super();
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final void zza(zzk zzk, Thread thread) {
            zzk.thread = thread;
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final void zza(zzk zzk, zzk zzk2) {
            zzk.next = zzk2;
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, zzk zzk, zzk zzk2) {
            synchronized (zzdyk) {
                if (((zzdyk) zzdyk).waiters != zzk) {
                    return false;
                }
                ((zzdyk) zzdyk).waiters = zzk2;
                return true;
            }
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, zze zze, zze zze2) {
            synchronized (zzdyk) {
                if (((zzdyk) zzdyk).listeners != zze) {
                    return false;
                }
                ((zzdyk) zzdyk).listeners = zze2;
                return true;
            }
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, Object obj, Object obj2) {
            synchronized (zzdyk) {
                if (((zzdyk) zzdyk).value != obj) {
                    return false;
                }
                ((zzdyk) zzdyk).value = obj2;
                return true;
            }
        }
    }

    /* access modifiers changed from: private */
    public static final class zzg<V> implements Runnable {
        final zzdzw<? extends V> future;
        final zzdyk<V> zzhzi;

        zzg(zzdyk<V> zzdyk, zzdzw<? extends V> zzdzw) {
            this.zzhzi = zzdyk;
            this.future = zzdzw;
        }

        public final void run() {
            if (((zzdyk) this.zzhzi).value == this) {
                if (zzdyk.zzhzd.zza((zzdyk<?>) this.zzhzi, (Object) this, zzdyk.getFutureValue(this.future))) {
                    zzdyk.zza(this.zzhzi);
                }
            }
        }
    }

    static abstract class zzh<V> extends zzdyk<V> implements zzi<V> {
        zzh() {
        }

        @Override // java.util.concurrent.Future, com.google.android.gms.internal.ads.zzdyk
        public final V get(long j, TimeUnit timeUnit) {
            return (V) zzdyk.super.get(j, timeUnit);
        }
    }

    /* access modifiers changed from: package-private */
    public interface zzi<V> extends zzdzw<V> {
    }

    private static final class zzj extends zzb {
        static final Unsafe zzhzj;
        static final long zzhzk;
        static final long zzhzl;
        static final long zzhzm;
        static final long zzhzn;
        static final long zzhzo;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0007 */
        static {
            /*
            // Method dump skipped, instructions count: 106
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyk.zzj.<clinit>():void");
        }

        private zzj() {
            super();
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final void zza(zzk zzk, Thread thread) {
            zzhzj.putObject(zzk, zzhzn, thread);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final void zza(zzk zzk, zzk zzk2) {
            zzhzj.putObject(zzk, zzhzo, zzk2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, zzk zzk, zzk zzk2) {
            return zzhzj.compareAndSwapObject(zzdyk, zzhzl, zzk, zzk2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, zze zze, zze zze2) {
            return zzhzj.compareAndSwapObject(zzdyk, zzhzk, zze, zze2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        public final boolean zza(zzdyk<?> zzdyk, Object obj, Object obj2) {
            return zzhzj.compareAndSwapObject(zzdyk, zzhzm, obj, obj2);
        }
    }

    /* access modifiers changed from: private */
    public static final class zzk {
        static final zzk zzhzp = new zzk(false);
        @NullableDecl
        volatile zzk next;
        @NullableDecl
        volatile Thread thread;

        private zzk(boolean z) {
        }

        /* access modifiers changed from: package-private */
        public final void zzb(zzk zzk) {
            zzdyk.zzhzd.zza(this, zzk);
        }

        zzk() {
            zzdyk.zzhzd.zza(this, Thread.currentThread());
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zzb zzb2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        GENERATE_CANCELLATION_CAUSES = z;
        try {
            zzb2 = new zzj();
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th = th3;
            th2 = th;
            zzb2 = new zzf();
        }
        zzhzd = zzb2;
        if (th != null) {
            Logger logger = zzhzc;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    protected zzdyk() {
    }

    /* access modifiers changed from: private */
    public static Object getFutureValue(zzdzw<?> zzdzw) {
        Throwable zza2;
        if (zzdzw instanceof zzi) {
            Object obj = ((zzdyk) zzdzw).value;
            if (!(obj instanceof zza)) {
                return obj;
            }
            zza zza3 = (zza) obj;
            if (!zza3.wasInterrupted) {
                return obj;
            }
            if (zza3.cause != null) {
                return new zza(false, zza3.cause);
            }
            return zza.zzhzf;
        } else if ((zzdzw instanceof zzeao) && (zza2 = zzean.zza((zzeao) zzdzw)) != null) {
            return new zzc(zza2);
        } else {
            boolean isCancelled = zzdzw.isCancelled();
            if ((!GENERATE_CANCELLATION_CAUSES) && isCancelled) {
                return zza.zzhzf;
            }
            try {
                Object uninterruptibly = getUninterruptibly(zzdzw);
                if (!isCancelled) {
                    return uninterruptibly == null ? NULL : uninterruptibly;
                }
                String valueOf = String.valueOf(zzdzw);
                StringBuilder sb = new StringBuilder(valueOf.length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new zza(false, new IllegalArgumentException(sb.toString()));
            } catch (ExecutionException e) {
                if (!isCancelled) {
                    return new zzc(e.getCause());
                }
                String valueOf2 = String.valueOf(zzdzw);
                return new zza(false, new IllegalArgumentException(ic.d(valueOf2.length() + 84, "get() did not throw CancellationException, despite reporting isCancelled() == true: ", valueOf2), e));
            } catch (CancellationException e2) {
                if (isCancelled) {
                    return new zza(false, e2);
                }
                String valueOf3 = String.valueOf(zzdzw);
                return new zzc(new IllegalArgumentException(ic.d(valueOf3.length() + 77, "get() threw CancellationException, despite reporting isCancelled() == false: ", valueOf3), e2));
            } catch (Throwable th) {
                return new zzc(th);
            }
        }
    }

    private static <V> V getUninterruptibly(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
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

    private final void zza(zzk zzk2) {
        zzk2.thread = null;
        while (true) {
            zzk zzk3 = this.waiters;
            if (zzk3 != zzk.zzhzp) {
                zzk zzk4 = null;
                while (zzk3 != null) {
                    zzk zzk5 = zzk3.next;
                    if (zzk3.thread != null) {
                        zzk4 = zzk3;
                    } else if (zzk4 != null) {
                        zzk4.next = zzk5;
                        if (zzk4.thread == null) {
                        }
                    } else if (zzhzd.zza((zzdyk<?>) this, zzk3, zzk5)) {
                    }
                    zzk3 = zzk5;
                }
                return;
            }
            return;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private static V zzaf(Object obj) {
        if (obj instanceof zza) {
            Throwable th = ((zza) obj).cause;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).exception);
        } else if (obj == NULL) {
            return null;
        } else {
            return obj;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public void addListener(Runnable runnable, Executor executor) {
        zze zze2;
        zzdwl.checkNotNull(runnable, "Runnable was null.");
        zzdwl.checkNotNull(executor, "Executor was null.");
        if (isDone() || (zze2 = this.listeners) == zze.zzhzh) {
            zza(runnable, executor);
        }
        zze zze3 = new zze(runnable, executor);
        do {
            zze3.next = zze2;
            if (!zzhzd.zza((zzdyk<?>) this, zze2, zze3)) {
                zze2 = this.listeners;
            } else {
                return;
            }
        } while (zze2 != zze.zzhzh);
        zza(runnable, executor);
    }

    /* access modifiers changed from: protected */
    public void afterDone() {
    }

    public boolean cancel(boolean z) {
        zza zza2;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof zzg)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            zza2 = new zza(z, new CancellationException("Future.cancel() was called."));
        } else if (z) {
            zza2 = zza.zzhze;
        } else {
            zza2 = zza.zzhzf;
        }
        boolean z2 = false;
        zzdyk<V> zzdyk = this;
        while (true) {
            if (zzhzd.zza((zzdyk<?>) zzdyk, obj, (Object) zza2)) {
                if (z) {
                    zzdyk.interruptTask();
                }
                zza((zzdyk<?>) zzdyk);
                if (!(obj instanceof zzg)) {
                    return true;
                }
                zzdzw<? extends V> zzdzw = ((zzg) obj).future;
                if (zzdzw instanceof zzi) {
                    zzdyk = (zzdyk) zzdzw;
                    obj = zzdyk.value;
                    if (!(obj == null) && !(obj instanceof zzg)) {
                        return true;
                    }
                    z2 = true;
                } else {
                    zzdzw.cancel(z);
                    return true;
                }
            } else {
                obj = zzdyk.value;
                if (!(obj instanceof zzg)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            if ((obj != null) && (!(obj instanceof zzg))) {
                return (V) zzaf(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0;
            if (nanos >= 1000) {
                zzk zzk2 = this.waiters;
                if (zzk2 != zzk.zzhzp) {
                    zzk zzk3 = new zzk();
                    do {
                        zzk3.zzb(zzk2);
                        if (zzhzd.zza((zzdyk<?>) this, zzk2, zzk3)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.value;
                                    if ((obj2 != null) && (!(obj2 instanceof zzg))) {
                                        return (V) zzaf(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    zza(zzk3);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zza(zzk3);
                        } else {
                            zzk2 = this.waiters;
                        }
                    } while (zzk2 != zzk.zzhzp);
                }
                return (V) zzaf(this.value);
            }
            while (nanos > 0) {
                Object obj3 = this.value;
                if ((obj3 != null) && (!(obj3 instanceof zzg))) {
                    return (V) zzaf(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String zzdyk = toString();
            String timeUnit2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = timeUnit2.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb = new StringBuilder(ic.m(lowerCase2, 28));
            sb.append("Waited ");
            sb.append(j);
            sb.append(" ");
            sb.append(lowerCase2);
            String sb2 = sb.toString();
            if (nanos + 1000 < 0) {
                String concat = String.valueOf(sb2).concat(" (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb3 = new StringBuilder(ic.m(lowerCase, valueOf.length() + 21));
                    sb3.append(valueOf);
                    sb3.append(convert);
                    sb3.append(" ");
                    sb3.append(lowerCase);
                    String sb4 = sb3.toString();
                    if (z) {
                        sb4 = String.valueOf(sb4).concat(",");
                    }
                    concat = String.valueOf(sb4).concat(" ");
                }
                if (z) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb5 = new StringBuilder(valueOf2.length() + 33);
                    sb5.append(valueOf2);
                    sb5.append(nanos2);
                    sb5.append(" nanoseconds ");
                    concat = sb5.toString();
                }
                sb2 = String.valueOf(concat).concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(sb2).concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(ic.e(ic.m(zzdyk, ic.m(sb2, 5)), sb2, " for ", zzdyk));
        }
        throw new InterruptedException();
    }

    /* access modifiers changed from: protected */
    public void interruptTask() {
    }

    public boolean isCancelled() {
        return this.value instanceof zza;
    }

    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof zzg)) & (obj != null);
    }

    /* access modifiers changed from: package-private */
    public final void maybePropagateCancellationTo(@NullableDecl Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* access modifiers changed from: protected */
    @NullableDecl
    public String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public boolean set(@NullableDecl V v) {
        if (v == null) {
            v = (V) NULL;
        }
        if (!zzhzd.zza((zzdyk<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        zza((zzdyk<?>) this);
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean setException(Throwable th) {
        if (!zzhzd.zza((zzdyk<?>) this, (Object) null, (Object) new zzc((Throwable) zzdwl.checkNotNull(th)))) {
            return false;
        }
        zza((zzdyk<?>) this);
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean setFuture(zzdzw<? extends V> zzdzw) {
        zzg zzg2;
        zzc zzc2;
        zzdwl.checkNotNull(zzdzw);
        Object obj = this.value;
        if (obj == null) {
            if (zzdzw.isDone()) {
                if (!zzhzd.zza((zzdyk<?>) this, (Object) null, getFutureValue(zzdzw))) {
                    return false;
                }
                zza((zzdyk<?>) this);
                return true;
            }
            zzg2 = new zzg(this, zzdzw);
            if (zzhzd.zza((zzdyk<?>) this, (Object) null, (Object) zzg2)) {
                try {
                    zzdzw.addListener(zzg2, zzdzd.INSTANCE);
                } catch (Throwable unused) {
                    zzc2 = zzc.zzhzg;
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof zza) {
            zzdzw.cancel(((zza) obj).wasInterrupted);
        }
        return false;
        zzhzd.zza((zzdyk<?>) this, (Object) zzg2, (Object) zzc2);
        return true;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zza(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.value;
            if (obj instanceof zzg) {
                sb.append(", setFuture=[");
                zza(sb, ((zzg) obj).future);
                sb.append("]");
            } else {
                try {
                    str = zzdwt.emptyToNull(pendingToString());
                } catch (RuntimeException | StackOverflowError e) {
                    String valueOf = String.valueOf(e.getClass());
                    str = ic.d(valueOf.length() + 38, "Exception thrown from implementation: ", valueOf);
                }
                if (str != null) {
                    sb.append(", info=[");
                    sb.append(str);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                zza(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof zza) && ((zza) obj).wasInterrupted;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzeao
    @NullableDecl
    public final Throwable zzazt() {
        if (!(this instanceof zzi)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof zzc) {
            return ((zzc) obj).exception;
        }
        return null;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:24:0x0002 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:26:0x0002 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzdyk<?>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzdyk] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v7, types: [com.google.android.gms.internal.ads.zzdyk<V>, com.google.android.gms.internal.ads.zzdyk] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.internal.ads.zzdyk$zzb] */
    /* access modifiers changed from: private */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void zza(com.google.android.gms.internal.ads.zzdyk<?> r5) {
        /*
            r0 = 0
            r1 = r0
        L_0x0002:
            com.google.android.gms.internal.ads.zzdyk$zzk r2 = r5.waiters
            com.google.android.gms.internal.ads.zzdyk$zzb r3 = com.google.android.gms.internal.ads.zzdyk.zzhzd
            com.google.android.gms.internal.ads.zzdyk$zzk r4 = com.google.android.gms.internal.ads.zzdyk.zzk.zzhzp
            boolean r3 = r3.zza(r5, r2, r4)
            if (r3 == 0) goto L_0x0002
        L_0x000e:
            if (r2 == 0) goto L_0x001c
            java.lang.Thread r3 = r2.thread
            if (r3 == 0) goto L_0x0019
            r2.thread = r0
            java.util.concurrent.locks.LockSupport.unpark(r3)
        L_0x0019:
            com.google.android.gms.internal.ads.zzdyk$zzk r2 = r2.next
            goto L_0x000e
        L_0x001c:
            r5.afterDone()
        L_0x001f:
            com.google.android.gms.internal.ads.zzdyk$zze r2 = r5.listeners
            com.google.android.gms.internal.ads.zzdyk$zzb r3 = com.google.android.gms.internal.ads.zzdyk.zzhzd
            com.google.android.gms.internal.ads.zzdyk$zze r4 = com.google.android.gms.internal.ads.zzdyk.zze.zzhzh
            boolean r3 = r3.zza(r5, r2, r4)
            if (r3 == 0) goto L_0x001f
        L_0x002b:
            r5 = r1
            r1 = r2
            if (r1 == 0) goto L_0x0034
            com.google.android.gms.internal.ads.zzdyk$zze r2 = r1.next
            r1.next = r5
            goto L_0x002b
        L_0x0034:
            if (r5 == 0) goto L_0x005c
            com.google.android.gms.internal.ads.zzdyk$zze r1 = r5.next
            java.lang.Runnable r2 = r5.task
            boolean r3 = r2 instanceof com.google.android.gms.internal.ads.zzdyk.zzg
            if (r3 == 0) goto L_0x0055
            com.google.android.gms.internal.ads.zzdyk$zzg r2 = (com.google.android.gms.internal.ads.zzdyk.zzg) r2
            com.google.android.gms.internal.ads.zzdyk<V> r5 = r2.zzhzi
            java.lang.Object r3 = r5.value
            if (r3 != r2) goto L_0x005a
            com.google.android.gms.internal.ads.zzdzw<? extends V> r3 = r2.future
            java.lang.Object r3 = getFutureValue(r3)
            com.google.android.gms.internal.ads.zzdyk$zzb r4 = com.google.android.gms.internal.ads.zzdyk.zzhzd
            boolean r2 = r4.zza(r5, r2, r3)
            if (r2 != 0) goto L_0x0002
            goto L_0x005a
        L_0x0055:
            java.util.concurrent.Executor r5 = r5.executor
            zza(r2, r5)
        L_0x005a:
            r5 = r1
            goto L_0x0034
        L_0x005c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyk.zza(com.google.android.gms.internal.ads.zzdyk):void");
    }

    private final void zza(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append("SUCCESS, result=[");
            zza(sb, uninterruptibly);
            sb.append("]");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    private final void zza(StringBuilder sb, Object obj) {
        if (obj == this) {
            try {
                sb.append("this future");
            } catch (RuntimeException | StackOverflowError e) {
                sb.append("Exception thrown from implementation: ");
                sb.append(e.getClass());
            }
        } else {
            sb.append(obj);
        }
    }

    private static void zza(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = zzhzc;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 57);
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) && (!(obj2 instanceof zzg))) {
                return (V) zzaf(obj2);
            }
            zzk zzk2 = this.waiters;
            if (zzk2 != zzk.zzhzp) {
                zzk zzk3 = new zzk();
                do {
                    zzk3.zzb(zzk2);
                    if (zzhzd.zza((zzdyk<?>) this, zzk2, zzk3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                zza(zzk3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof zzg))));
                        return (V) zzaf(obj);
                    }
                    zzk2 = this.waiters;
                } while (zzk2 != zzk.zzhzp);
            }
            return (V) zzaf(this.value);
        }
        throw new InterruptedException();
    }
}
