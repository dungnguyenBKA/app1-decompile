package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public abstract class zzdyn<I, O, F, T> extends zzdze<O> implements Runnable {
    @NullableDecl
    private zzdzw<? extends I> zzhyu;
    @NullableDecl
    private F zzhzq;

    zzdyn(zzdzw<? extends I> zzdzw, F f) {
        this.zzhyu = (zzdzw) zzdwl.checkNotNull(zzdzw);
        this.zzhzq = (F) zzdwl.checkNotNull(f);
    }

    static <I, O> zzdzw<O> zza(zzdzw<I> zzdzw, zzdyu<? super I, ? extends O> zzdyu, Executor executor) {
        zzdwl.checkNotNull(executor);
        zzdym zzdym = new zzdym(zzdzw, zzdyu);
        zzdzw.addListener(zzdym, zzdzy.zza(executor, zzdym));
        return zzdym;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        maybePropagateCancellationTo(this.zzhyu);
        this.zzhyu = null;
        this.zzhzq = null;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        String str;
        zzdzw<? extends I> zzdzw = this.zzhyu;
        F f = this.zzhzq;
        String pendingToString = super.pendingToString();
        if (zzdzw != null) {
            String valueOf = String.valueOf(zzdzw);
            str = ic.e(valueOf.length() + 16, "inputFuture=[", valueOf, "], ");
        } else {
            str = "";
        }
        if (f != null) {
            String valueOf2 = String.valueOf(f);
            StringBuilder sb = new StringBuilder(valueOf2.length() + ic.m(str, 11));
            sb.append(str);
            sb.append("function=[");
            sb.append(valueOf2);
            sb.append("]");
            return sb.toString();
        } else if (pendingToString == null) {
            return null;
        } else {
            String valueOf3 = String.valueOf(str);
            return pendingToString.length() != 0 ? valueOf3.concat(pendingToString) : new String(valueOf3);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: com.google.android.gms.internal.ads.zzdyn<I, O, F, T> */
    /* JADX WARN: Multi-variable type inference failed */
    public final void run() {
        zzdzw<? extends I> zzdzw = this.zzhyu;
        F f = this.zzhzq;
        boolean z = true;
        boolean isCancelled = isCancelled() | (zzdzw == null);
        if (f != null) {
            z = false;
        }
        if (!isCancelled && !z) {
            this.zzhyu = null;
            if (zzdzw.isCancelled()) {
                setFuture(zzdzw);
                return;
            }
            try {
                try {
                    Object zzd = zzd(f, zzdzk.zza(zzdzw));
                    this.zzhzq = null;
                    setResult(zzd);
                } catch (Throwable th) {
                    this.zzhzq = null;
                    throw th;
                }
            } catch (CancellationException unused) {
                cancel(false);
            } catch (ExecutionException e) {
                setException(e.getCause());
            } catch (RuntimeException e2) {
                setException(e2);
            } catch (Error e3) {
                setException(e3);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void setResult(@NullableDecl T t);

    /* access modifiers changed from: package-private */
    @NullableDecl
    public abstract T zzd(F f, @NullableDecl I i);

    static <I, O> zzdzw<O> zza(zzdzw<I> zzdzw, zzdvz<? super I, ? extends O> zzdvz, Executor executor) {
        zzdwl.checkNotNull(zzdvz);
        zzdyp zzdyp = new zzdyp(zzdzw, zzdvz);
        zzdzw.addListener(zzdyp, zzdzy.zza(executor, zzdyp));
        return zzdyp;
    }
}
