package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyk;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

abstract class zzdys<OutputT> extends zzdyk.zzh<OutputT> {
    private static final Logger zzhzc = Logger.getLogger(zzdys.class.getName());
    private static final zza zzhzy;
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    private static abstract class zza {
        private zza() {
        }

        /* access modifiers changed from: package-private */
        public abstract void zza(zzdys zzdys, Set<Throwable> set, Set<Throwable> set2);

        /* access modifiers changed from: package-private */
        public abstract int zzc(zzdys zzdys);
    }

    private static final class zzb extends zza {
        private zzb() {
            super();
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdys.zza
        public final void zza(zzdys zzdys, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (zzdys) {
                if (zzdys.seenExceptions == null) {
                    zzdys.seenExceptions = set2;
                }
            }
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdys.zza
        public final int zzc(zzdys zzdys) {
            int zzb;
            synchronized (zzdys) {
                zzb = zzdys.zzb(zzdys);
            }
            return zzb;
        }
    }

    private static final class zzc extends zza {
        private final AtomicReferenceFieldUpdater<zzdys, Set<Throwable>> zziac;
        private final AtomicIntegerFieldUpdater<zzdys> zziad;

        zzc(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.zziac = atomicReferenceFieldUpdater;
            this.zziad = atomicIntegerFieldUpdater;
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdys.zza
        public final void zza(zzdys zzdys, Set<Throwable> set, Set<Throwable> set2) {
            this.zziac.compareAndSet(zzdys, null, set2);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzdys.zza
        public final int zzc(zzdys zzdys) {
            return this.zziad.decrementAndGet(zzdys);
        }
    }

    static {
        Throwable th;
        zza zza2;
        try {
            zza2 = new zzc(AtomicReferenceFieldUpdater.newUpdater(zzdys.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzdys.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            zza2 = new zzb();
        }
        zzhzy = zza2;
        if (th != null) {
            zzhzc.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    zzdys(int i) {
        this.remaining = i;
    }

    static /* synthetic */ int zzb(zzdys zzdys) {
        int i = zzdys.remaining - 1;
        zzdys.remaining = i;
        return i;
    }

    /* access modifiers changed from: package-private */
    public final Set<Throwable> zzazy() {
        Set<Throwable> set = this.seenExceptions;
        if (set != null) {
            return set;
        }
        Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        zzh(newSetFromMap);
        zzhzy.zza(this, null, newSetFromMap);
        return this.seenExceptions;
    }

    /* access modifiers changed from: package-private */
    public final int zzazz() {
        return zzhzy.zzc(this);
    }

    /* access modifiers changed from: package-private */
    public final void zzbaa() {
        this.seenExceptions = null;
    }

    /* access modifiers changed from: package-private */
    public abstract void zzh(Set<Throwable> set);
}
