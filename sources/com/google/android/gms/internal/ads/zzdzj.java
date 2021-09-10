package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public abstract class zzdzj<V> extends zzdzg<V> implements zzdzw<V> {
    protected zzdzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public void addListener(Runnable runnable, Executor executor) {
        zzbad().addListener(runnable, executor);
    }

    /* access modifiers changed from: protected */
    /* renamed from: zzbae */
    public abstract zzdzw<? extends V> zzbad();
}
