package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* access modifiers changed from: package-private */
public abstract class zzdza<T> extends zzdzs<T> {
    private final Executor zziag;
    private final /* synthetic */ zzdyy zziah;

    zzdza(zzdyy zzdyy, Executor executor) {
        this.zziah = zzdyy;
        this.zziag = (Executor) zzdwl.checkNotNull(executor);
    }

    /* access modifiers changed from: package-private */
    public final void execute() {
        try {
            this.zziag.execute(this);
        } catch (RejectedExecutionException e) {
            this.zziah.setException(e);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final boolean isDone() {
        return this.zziah.isDone();
    }

    /* access modifiers changed from: package-private */
    public abstract void setValue(T t);

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final void zzb(T t, Throwable th) {
        zzdyy.zza(this.zziah, (zzdza) null);
        if (th == null) {
            setValue(t);
        } else if (th instanceof ExecutionException) {
            this.zziah.setException(th.getCause());
        } else if (th instanceof CancellationException) {
            this.zziah.cancel(false);
        } else {
            this.zziah.setException(th);
        }
    }
}
