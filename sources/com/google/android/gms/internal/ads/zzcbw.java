package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcbw implements Runnable {
    private final zzccl zzgdu;

    private zzcbw(zzccl zzccl) {
        this.zzgdu = zzccl;
    }

    static Runnable zza(zzccl zzccl) {
        return new zzcbw(zzccl);
    }

    public final void run() {
        this.zzgdu.zzanl();
    }
}
