package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
public class zzbad<T> {
    private final zzbaa<T> zzeio;
    private final AtomicInteger zzeip = new AtomicInteger(0);

    public zzbad() {
        zzbaa<T> zzbaa = new zzbaa<>();
        this.zzeio = zzbaa;
        zzdzk.zza(zzbaa, new zzbag(this), zzazp.zzeih);
    }

    @Deprecated
    public final int getStatus() {
        return this.zzeip.get();
    }

    @Deprecated
    public final void reject() {
        this.zzeio.setException(new Exception());
    }

    @Deprecated
    public final void zza(zzbae<T> zzbae, zzbac zzbac) {
        zzdzk.zza(this.zzeio, new zzbaf(this, zzbae, zzbac), zzazp.zzeih);
    }

    @Deprecated
    public final void zzl(T t) {
        this.zzeio.set(t);
    }
}
