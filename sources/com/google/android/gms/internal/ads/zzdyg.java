package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public abstract class zzdyg<V, X extends Throwable, F, T> extends zzdze<V> implements Runnable {
    @NullableDecl
    private zzdzw<? extends V> zzhyu;
    @NullableDecl
    private Class<X> zzhyv;
    @NullableDecl
    private F zzhyw;

    zzdyg(zzdzw<? extends V> zzdzw, Class<X> cls, F f) {
        this.zzhyu = (zzdzw) zzdwl.checkNotNull(zzdzw);
        this.zzhyv = (Class) zzdwl.checkNotNull(cls);
        this.zzhyw = (F) zzdwl.checkNotNull(f);
    }

    static <X extends Throwable, V> zzdzw<V> zza(zzdzw<? extends V> zzdzw, Class<X> cls, zzdyu<? super X, ? extends V> zzdyu, Executor executor) {
        zzdyj zzdyj = new zzdyj(zzdzw, cls, zzdyu);
        zzdzw.addListener(zzdyj, zzdzy.zza(executor, zzdyj));
        return zzdyj;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        maybePropagateCancellationTo(this.zzhyu);
        this.zzhyu = null;
        this.zzhyv = null;
        this.zzhyw = null;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        String str;
        zzdzw<? extends V> zzdzw = this.zzhyu;
        Class<X> cls = this.zzhyv;
        F f = this.zzhyw;
        String pendingToString = super.pendingToString();
        if (zzdzw != null) {
            String valueOf = String.valueOf(zzdzw);
            str = ic.e(valueOf.length() + 16, "inputFuture=[", valueOf, "], ");
        } else {
            str = "";
        }
        if (cls != null && f != null) {
            String valueOf2 = String.valueOf(cls);
            String valueOf3 = String.valueOf(f);
            return ic.l(ic.p(valueOf3.length() + valueOf2.length() + ic.m(str, 29), str, "exceptionType=[", valueOf2, "], fallback=["), valueOf3, "]");
        } else if (pendingToString == null) {
            return null;
        } else {
            String valueOf4 = String.valueOf(str);
            return pendingToString.length() != 0 ? valueOf4.concat(pendingToString) : new String(valueOf4);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r10v0, resolved type: com.google.android.gms.internal.ads.zzdyg<V, X extends java.lang.Throwable, F, T> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x007a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
        // Method dump skipped, instructions count: 160
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyg.run():void");
    }

    /* access modifiers changed from: package-private */
    public abstract void setResult(@NullableDecl T t);

    /* access modifiers changed from: package-private */
    @NullableDecl
    public abstract T zza(F f, X x);
}
