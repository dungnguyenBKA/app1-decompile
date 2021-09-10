package com.google.android.gms.internal.ads;

public final class zzalm extends zzbad<zzalx> {
    private final Object lock = new Object();
    private final zzalq zzdkd;
    private boolean zzdke;

    public zzalm(zzalq zzalq) {
        this.zzdkd = zzalq;
    }

    public final void release() {
        synchronized (this.lock) {
            if (!this.zzdke) {
                this.zzdke = true;
                zza(new zzalp(this), new zzbab());
                zza(new zzalo(this), new zzalr(this));
            }
        }
    }
}
