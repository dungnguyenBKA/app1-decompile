package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public abstract class zzdyo<InputT, OutputT> extends zzdys<OutputT> {
    private static final Logger logger = Logger.getLogger(zzdyo.class.getName());
    @NullableDecl
    private zzdwy<? extends zzdzw<? extends InputT>> zzhzr;
    private final boolean zzhzs;
    private final boolean zzhzt;

    /* access modifiers changed from: package-private */
    public enum zza {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    zzdyo(zzdwy<? extends zzdzw<? extends InputT>> zzdwy, boolean z, boolean z2) {
        super(zzdwy.size());
        this.zzhzr = (zzdwy) zzdwl.checkNotNull(zzdwy);
        this.zzhzs = z;
        this.zzhzt = z2;
    }

    private final void handleException(Throwable th) {
        zzdwl.checkNotNull(th);
        if (this.zzhzs && !setException(th) && zza(zzazy(), th)) {
            zzk(th);
        } else if (th instanceof Error) {
            zzk(th);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.ads.zzdyo<InputT, OutputT> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: private */
    public final void zza(int i, Future<? extends InputT> future) {
        try {
            zzb(i, zzdzk.zza(future));
        } catch (ExecutionException e) {
            handleException(e.getCause());
        } catch (Throwable th) {
            handleException(th);
        }
    }

    private static void zzk(Throwable th) {
        logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        super.afterDone();
        zzdwy<? extends zzdzw<? extends InputT>> zzdwy = this.zzhzr;
        zza(zza.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (zzdwy != null)) {
            boolean wasInterrupted = wasInterrupted();
            zzdya zzdya = (zzdya) zzdwy.iterator();
            while (zzdya.hasNext()) {
                ((Future) zzdya.next()).cancel(wasInterrupted);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        zzdwy<? extends zzdzw<? extends InputT>> zzdwy = this.zzhzr;
        if (zzdwy == null) {
            return super.pendingToString();
        }
        String valueOf = String.valueOf(zzdwy);
        return ic.d(valueOf.length() + 8, "futures=", valueOf);
    }

    /* access modifiers changed from: package-private */
    public final void zzazw() {
        if (this.zzhzr.isEmpty()) {
            zzazx();
        } else if (this.zzhzs) {
            int i = 0;
            zzdya zzdya = (zzdya) this.zzhzr.iterator();
            while (zzdya.hasNext()) {
                zzdzw zzdzw = (zzdzw) zzdya.next();
                zzdzw.addListener(new zzdyr(this, zzdzw, i), zzdzd.INSTANCE);
                i++;
            }
        } else {
            zzdyq zzdyq = new zzdyq(this, this.zzhzt ? this.zzhzr : null);
            zzdya zzdya2 = (zzdya) this.zzhzr.iterator();
            while (zzdya2.hasNext()) {
                ((zzdzw) zzdya2.next()).addListener(zzdyq, zzdzd.INSTANCE);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void zzazx();

    /* access modifiers changed from: package-private */
    public abstract void zzb(int i, @NullableDecl InputT inputt);

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdys
    public final void zzh(Set<Throwable> set) {
        zzdwl.checkNotNull(set);
        if (!isCancelled()) {
            zza(set, zzazt());
        }
    }

    /* access modifiers changed from: private */
    public final void zza(@NullableDecl zzdwy<? extends Future<? extends InputT>> zzdwy) {
        int zzazz = zzazz();
        int i = 0;
        if (!(zzazz >= 0)) {
            throw new IllegalStateException("Less than 0 remaining futures");
        } else if (zzazz == 0) {
            if (zzdwy != null) {
                zzdya zzdya = (zzdya) zzdwy.iterator();
                while (zzdya.hasNext()) {
                    Future<? extends InputT> future = (Future) zzdya.next();
                    if (!future.isCancelled()) {
                        zza(i, future);
                    }
                    i++;
                }
            }
            zzbaa();
            zzazx();
            zza(zza.ALL_INPUT_FUTURES_PROCESSED);
        }
    }

    /* access modifiers changed from: package-private */
    public void zza(zza zza2) {
        zzdwl.checkNotNull(zza2);
        this.zzhzr = null;
    }

    private static boolean zza(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }
}
