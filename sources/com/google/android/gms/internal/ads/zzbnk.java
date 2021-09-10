package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbnk implements zzeqb<zzbnb> {
    private final zzeqo<zzagl> zzewe;
    private final zzeqo<zzbnw> zzfib;
    private final zzeqo<Runnable> zzfny;
    private final zzeqo<Executor> zzfux;

    public zzbnk(zzeqo<zzbnw> zzeqo, zzeqo<zzagl> zzeqo2, zzeqo<Runnable> zzeqo3, zzeqo<Executor> zzeqo4) {
        this.zzfib = zzeqo;
        this.zzewe = zzeqo2;
        this.zzfny = zzeqo3;
        this.zzfux = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnb(this.zzfib.get(), this.zzewe.get(), this.zzfny.get(), this.zzfux.get());
    }
}
